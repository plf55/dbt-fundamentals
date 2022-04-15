 with payments as (

    select
        id,
        orderid as order_id,
        paymentmethod,
    	status,
        amount/100 as amount,	
        created as created_at,	

    from  {{ source('stripe', 'payment') }}


)

select * from payments