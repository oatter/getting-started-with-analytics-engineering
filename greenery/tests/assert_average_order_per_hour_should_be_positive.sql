select *
  
  from {{ ref('average_order_per_hour')}}
 where average_order_count < 0