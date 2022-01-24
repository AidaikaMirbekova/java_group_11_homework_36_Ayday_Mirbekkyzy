select
products.product,
timestamp(actions.action_date) as act_date,
suppliers.supplier,
categories.category,
actions.price,
actions.qty
from actions
inner join suppliers on actions.supplier_id=suppliers.id
inner join products on actions.product_id=products.id
inner join categories on products.category_id=categories.id
where  date(actions.action_date) between '2016-01-01' and '2016-01-31'
order by act_date desc;