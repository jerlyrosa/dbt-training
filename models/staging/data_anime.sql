{{ config(materialized='table') }}


with data_anime as (

SELECT *
    FROM (
        SELECT
        anime_id as id,
        name,
        genre,
        type,
        episodes,
        rating,
        members
    FROM  {{ ref('anime_sample_data') }}  as Animes
    )
)

SELECT *
FROM data_anime
