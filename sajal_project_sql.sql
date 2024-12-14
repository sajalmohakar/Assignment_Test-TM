create database tm_project_db;

use tm_project_db;
 
select * from data;
 
select count(id) as total_loan_application from data; #total loan application
#38576

select sum(loan_amount) as total_amount_market from data; #total loan amount discharged in bank
#435757075

select sum(total_payment) as total_payment_received from data; #total payment received from people
#473070933
#bank will have less npa(non_performing assest i.e. amount recieved is high)

select avg(int_rate)*100 as average_interest_rate from data; #Average interest rate
#12.048831397760178

select round(avg(int_rate),2)*100 as average_interest_rate from data; #Average interest rate

select avg(dti)*100 as average_dti from data; #Average DTI
#0.1332743311903776

select round(avg(dti),2)*100 as average_dti from data; #Average DTI

select count(id) as Good_Loan_Application from data where loan_status='Fully Paid' or loan_status='Current';

select count(id) as Bad_Loan_Application from data where loan_status='Charged Off';

select count(id) as current_Loan_Application from data where loan_status='Current';

select (round(count(case when loan_status='Fully Paid'or loan_status='Current' then id end)*100/
count(id),2)) as Good_Loan_Percentage from data; #Good loan Percentage

select (round(count(case when loan_status='Charged Off' then id end)*100/
count(id),2)) as Bad_Loan_Percentage from data; #Bad loan Percentage

select sum(loan_amount) as Bad_loan_amount from data where loan_status='Charged Off'; #Bad Loan Amount

select sum(loan_amount) as Good_loan_amount from data where loan_status='Fully Paid'or loan_status='Current'; #Good Loan Amount

select sum(total_payment) as Bad_loan_amount_Received from data where loan_status='Charged Off'; #bad loan amount recevied

select sum(total_payment) as Good_loan_amount_Received from data where loan_status='Fully Paid'or loan_status='Current'; #Good loan amount recevied
