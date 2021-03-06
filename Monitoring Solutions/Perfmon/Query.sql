/****** Script for SelectTopNRows command from SSMS  ******/
SELECT MIN(CounterDateTime) AS StartTime, MAX(CounterDateTime) AS EndTime, CounterName, MIN(CounterValue ) AS MinValue, MAX(CounterValue) AS MaxValue, AVG(CounterValue) AS AVGValue
  FROM [Test].[dbo].[CounterData] D
  JOIN [Test].[dbo].[CounterDetails] DT
  ON D.CounterID = DT.CounterID
  WHERE ObjectName = 'PhysicalDisk'
  AND CounterName NOT LIKE 'avg%'
  GROUP BY CounterName