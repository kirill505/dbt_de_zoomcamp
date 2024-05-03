{{ config(materialized='table') }}

with posts as (
    SELECT * FROM {{ ref('stg_posts')}}
)

SELECT * FROM posts
