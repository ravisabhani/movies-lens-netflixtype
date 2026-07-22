WITH movies AS (
    SELECT *
    FROM {{ ref('src_movies') }}
)

SELECT
    movie_id,
    title AS movie_title,
    SPLIT(genres, '|') AS genre_array,
    genres
FROM movies
