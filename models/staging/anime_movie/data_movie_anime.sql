{{ config(materialized='table') }}


with 
    data_movie_anime as (

SELECT *
    FROM (
        SELECT
        id,
        name,
        rating,
        members
    FROM  {{ ref('data_anime') }}  as Movies WHERE  Movies.type='Movie'
    )

)
SELECT *
FROM data_movie_anime
