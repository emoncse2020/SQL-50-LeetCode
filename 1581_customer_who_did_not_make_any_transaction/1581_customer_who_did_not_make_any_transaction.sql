select v.customer_id, Count(v.visit_id) as count_no_trans
from visits v  
left join transactions t 
on t.visit_id = v.visit_id
Where  t.transaction_id is null
group by customer_id