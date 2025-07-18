create database mybankdb;
use mybankdb;

CREATE DATABASE mybankdb;
use mybankdb;
SELECT*FROM Customers;
SELECT*FROM Accounts;
SELECT*FROM Transactions;
SELECT*FROM Loans;
SELECT*FROM CreditCards;
SELECT*FROM Branches;
SELECT*FROM ATMs;
-- CALCULATE TOTAL NUMBER OF CUSTOMERS
SELECT COUNT(*) AS Totalcustomers FROM customers;
-- CALCULATE TOTAL NUMBER OF ACCOUNTS
SELECT COUNT(*) AS TotalAccountss FROM Accounts;
-- CALCULATE TOTAL LOAN ACCOUNTS
SELECT SUM(Amount) AS TotalLoansAccountss FROM Loans;
-- CALCULATE TOTAL CREDIT LIMMIT ACROSS ALL CREDIT CARDS
SELECT SUM(CreditLimit) AS TotalCreditLimit FROM CreditCards;
-- FIND ALL ACTIVE ACCOUNT 
SELECT*FROM Accounts WHERE status='Active';
-- FINAL ALL ACCOUNT MADE ON 15 TH JAN 2023 
SELECT*FROM Transactions WHERE TransactionDate >'2023-01-15';
-- FIND LOANS WITH INTEREST RATE ABOVE 5.0 
SELECT*FROM Loans WHERE interestRate >5.0;
-- FIND CREDIT CARDS WITH BALANCES EXCEEDING THE CREDIT LIMIT
SELECT*FROM CreditCards WHERE Balance > CreditLimit;
-- RETRIEVE CUSTOMER DETAIL ALONG WITH THEIR ACCOUNT
SELECT c.CustomerID, c.Name, c.Age, a.AccountNumber, a.AccountType, a.Balance FROM Customers c JOIN Accounts a ON c.CustomerID =a.CustomerID;
-- RETRIEVE TRANSACTION DETAILS ALONG WITH ASSOCIATED ACCOUNT AND CUSTOMER INFORMATION 
SELECT t.TransactionID, t.TransactionDate, t.Amount, t.Type, t.Description, a.AccountNumber, a.AccountType, c.Name AS CustomerName FROM Transactions t JOIN Accounts a ON t.AccountNumber= a.AccountNumber
JOIN Customers c ON a.CustomerID =c.CustomerID;
-- TOP 10 CUSTOMERS WITH HIGHEST LOAN ACCOUNT 
SELECT c.Name, l.Amount AS LoanAmount FROM Customers c 
JOIN Loans l ON c.CustomerID =l.CustomerID 
ORDER BY l.Amount DESC LIMIT 10;
-- DELECT INACTIVE ACCOUNTS 
SET SQL_SAFE_UPDATES=0;
DELETE FROM Accounts WHERE Status ='Inactive';
-- FIND CUSTOMERS WITH MULTIPLE ACCOUNTS
SELECT c.CustomerID, c.Name, COUNT(a.AccountNumber) AS NumAccounts FROM CustomerS c 
JOIN Accounts a ON c.CustomerID= a.CustomerID
GROUP BY c.CustomerID,c.Name HAVING COUNT(a.AccountNumber) > 1;
-- PRINT THE FISRT 3 CHARACTERS OF NAME FROM CUSTOMERS TABLE 
SELECT SUBSTRING(Name, 1, 3)AS FirstThreeCharactersOfName FROM customers;
-- PRINT THE NAME FROM CUSTOMERS TABLE INTO 2 COLUMNS FISTNAME AND LASTNAME 
SELECT SUBSTRING_INDEX(Name,' ',1) AS FirstName,
SUBSTRING_INDEX(Name,' ',-1) AS LasttName FROM Customers;
-- SQL QUERY TO SHOW ONLY ODD ROWS FROM CUSTOMERS TABLE 
SELECT*FROM Customers WHERE MOD(CustomerID,2) <> 0;
-- SQL QUERY TO DETERMINE THE 5 TH HIGHEST LOAN FROM THE LOANS TABLE USING SUB-QUERY
SELECT DISTINCT Amount FROM Loans L1 
WHERE 5=( SELECT COUNT(DISTINCT Amount) FROM Loans L2 WHERE L2.Amount >=L1.Amount);
-- SQL QUERY TO SHOW THE 2 HIGHEST LOAN FROM THE LOANS TABLE USING SUB-QUERY
SELECT MAX(Amount) AS SecondHighestLoan FROM Loans WHERE Amount <(SELECT MAX(Amount) FROM Loans);



select customerid
from accounts
where status='inactive';

select *
from customers
limit 1;

select now() as currentdatetime;

select customerid
from accounts
where status = 'inactive';


create table customersclone like customers;
insert into customersclone select * from customers;


select
customerID, 
datediff (EndDate,curdate()) as DaysRemaining
from Loans
where EndDate>curdate();


select accountnumber, max(transactiondate) as latesttransactiondate
from transactions
group by accountnumber;


select avg(age) as averageage
from customers;


select accountnumber, balance
from accounts
where balance < 25000
and opendate <= '2022-01-01';

-- Find loans that are currently active
select * 
from loans
where enddate >=curdate()
and status = 'active';


-- 
select accountnumber, sum(amount) as totalammount
from transactions
where month(transactiondate)=6
and year(transactiondate)=2023
group by accountnumber;



select customerID, avg(balance) as averagecreditcardbalance
from creditcards
group by customerID;


select location, count(*) as numberofactiveatms
from atms
where status = 'out of service'
group by location;


-- Categorize customers into three age groups
select
name,
age,
CASE
when age <30 then 'Below 30'
when age between 30 and 60 then '30 to 60'
else 'above 60'
end as age_group
from customers;


