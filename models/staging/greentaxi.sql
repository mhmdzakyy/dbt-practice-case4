{{ config(materialized='view')}}

with trip_union as (
    SELECT * 
    FROM {{ source('green_taxi_trip', 'green_tripdata_2021-01') }}
    UNION ALL 
    SELECT *
    FROM {{ source('green_taxi_trip', 'green_tripdata_2021-02') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('green_taxi_trip', 'green_tripdata_2021-03') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('green_taxi_trip', 'green_tripdata_2021-04') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('green_taxi_trip', 'green_tripdata_2021-05') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('green_taxi_trip', 'green_tripdata_2021-06') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('green_taxi_trip', 'green_tripdata_2021-07') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('green_taxi_trip', 'green_tripdata_2021-08') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('green_taxi_trip', 'green_tripdata_2021-09') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('green_taxi_trip', 'green_tripdata_2021-10') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('green_taxi_trip', 'green_tripdata_2021-11') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('green_taxi_trip', 'green_tripdata_2021-12') }}
)

SELECT * FROM trip_union