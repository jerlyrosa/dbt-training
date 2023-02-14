{{ config(materialized='table') }}


with 
    data_tv_anime as (

SELECT *
    FROM (
        SELECT
        id,
        name,
        rating,
        members
    FROM  {{ ref('data_anime') }}  as Movies WHERE  Movies.type='TV'
    )

)
SELECT *
FROM data_tv_anime
