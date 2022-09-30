{{ config(materialized='table') }}

with src_greentaxi as (
    SELECT * 
    FROM {{ ref('greentaxi') }}
)

SELECT 
    VendorID,
    lpep_pickup_datetime,
    lpep_dropoff_datetime,
    store_and_fwd_flag,
    RatecodeID,
    PULocationID,
    DOLocationID,
    passenger_count,
    trip_distance,
    payment_type,	
    trip_type,
    total_amount
FROM
    src_greentaxi
WHERE 
    trip_distance > 0