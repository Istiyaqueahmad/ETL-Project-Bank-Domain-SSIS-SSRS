-- Select database 
 USE [Bank_Customers_Complaints]

 --Delete Work_table if existed and create it again
 IF OBJECT_ID('Work_Bank_customers_complaints_Invalid', 'U') IS NOT NULL 
 drop table Work_Bank_customers_complaints_Invalid

 --Create a work table for data including records with no zipcode 
   CREATE TABLE Work_Bank_customers_complaints_Invalid (
      
       [Date received] date
      ,[Product] varchar(500)
      ,[Issue] varchar(500)
      ,[Company public response] varchar(500)
      ,[Company] varchar(500)
      ,[State] varchar(2)
      ,[ZIP code] varchar(100)
      ,[Consumer consent provided?] varchar(500)
      ,[Submitted via] varchar(500)
      ,[Date sent to company] date
      ,[Company response to consumer] varchar(500)
      ,[Timely response?] varchar(500)
      ,[Consumer disputed?] varchar(500)
      ,[Complaint ID]  varchar(500)
  ) 
 -- Copy data from the raw table to working table
 INSERT INTO Work_Bank_customers_complaints_Invalid 
      (
       [Date received]
      ,[Product]
      ,[Issue]
      ,[Company public response]
      ,[Company]
      ,[State]
      ,[ZIP code]
      ,[Consumer consent provided?]
      ,[Submitted via]
      ,[Date sent to company]
      ,[Company response to consumer]
      ,[Timely response?]
      ,[Consumer disputed?]
      ,[Complaint ID]
	  )
SELECT 
      [Date received]
      ,[Product]
      ,[Issue]
      ,[Company public response]
      ,[Company]
      ,[State]
      ,[ZIP code]
      ,[Consumer consent provided?]
      ,[Submitted via]
      ,[Date sent to company]
      ,[Company response to consumer]
      ,[Timely response?]
      ,[Consumer disputed?]
      ,[Complaint ID]
FROM [dbo].[Raw_Bank_Customers]

