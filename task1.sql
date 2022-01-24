select
products.product,
date(actions.action_date) as act_date,
categories.category,
actions.price,
actions.qty
from actions
inner join suppliers on actions.supplier_id=suppliers.id
inner join products on actions.product_id=products.id
inner join categories on products.category_id=categories.id
inner join brands on products.brand_id=brands.id
where  year(actions.action_date)<2017 and products.category_id = 2 
order by actions.qty desc
limit 5;