create or replace view OwnersTransactions as
with 

walletmobilet as (select id, count(id), sum(abs(amount)) as Amount from walletmobile group by id order by id),
tappost as (select id, count(id), sum(abs(amount)) as Amount from tappos group by id order by id),
online_autpayt as (select id, count(id), sum(abs(amount)) as Amount from online_autpay group by id order by id),
atm_paymentst as (select id, count(id), sum(abs(amount)) as Amount from atm_payments group by id order by id)

select a.id,
a.sex as gender,
(select extract(YEAR FROM AGE(CURRENT_DATE, a.bdate))) as Age,
a.status as status,
a.maritial as maritial,
a.city as city,
a.region as region,
a.country as country,
case when b.id isnull then 0 else b.count end as CountWallet,
case when b.amount  isnull then 0 else b.amount end as SumWallet,
case when c.count isnull then 0 else c.count end as CountTapPos,
case when c.amount isnull then 0 else c.amount end as SumTapPos,
case when d.count isnull then 0 else d.count end as CountOnlineAut,
case when d.amount isnull then 0 else d.amount end as SumOnlineAut,
case when e.count isnull then 0 else e.count end as CountATM,
case when e.amount isnull then 0 else e.amount end as SumATM
from owners a
left join walletmobilet b on b.id = a.id
left join tappost c on c.id = a.id
left join online_autpayt d on d.id = a.id
left join atm_paymentst  e on e.id = a.id


select * from ownerstransactions