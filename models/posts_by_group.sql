{{ config(materialized='table') }}

with posts_by_group as (
    SELECT * FROM {{ ref('stg_posts')}}
)

select
    topic_name, COUNT(DISTINCT post_id) as topics_count
from posts_by_group
group by 1
order by topics_count desc
