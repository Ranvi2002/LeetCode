# Write your MySQL query statement below
select Signups.user_id, case when Confirmations.time_stamp is null then 0.0 else
round(sum(Confirmations.action='confirmed')/count(*),2) end as confirmation_rate from Signups left join Confirmations on Signups.user_id = Confirmations.user_id group by Signups.user_id 