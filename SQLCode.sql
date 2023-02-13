--Create Tables and Import Data from YouTube API JSON
--CREATE TABLE MrBeast
--(
--   [Title] varchar(250),  
--   [Published_date] date,  
--   [Views] int,  
--   [Likes] int,
--   [Comments] int,
--   [CategoryId] int,
--   [VideoId] varchar(25),
--   [Channel] varchar(25)
--)

--DECLARE @JSON varchar(max)

--SELECT @JSON = BulkColumn
--FROM OPENROWSET (BULK 'C:\Users\TrustyBeard\Desktop\Portfolio Projects\YouTubeInsights\Data\JSON\MrBeast.json', SINGLE_CLOB) AS import

--SET @JSON = SUBSTRING(@JSON, 1, LEN(@JSON))

--IF OBJECT_ID('tempdb..#temp_table') IS NOT NULL DROP TABLE #temp_table

--CREATE TABLE #temp_table
--(
--   [Title] varchar(250),  
--   [Published_date] date,  
--   [Views] int,  
--   [Likes] int,
--   [Comments] int,
--   [CategoryId] int,
--   [VideoId] varchar(25),
--   [Channel] varchar(25)
--)

--INSERT INTO #temp_table
--SELECT *
--FROM OPENJSON (@JSON)
--WITH  (
--   [Title] varchar(250),  
--   [Published_date] date,  
--   [Views] int,  
--   [Likes] int,
--   [Comments] int,
--   [CategoryId] int,
--   [VideoId] varchar(25),
--   [Channel] varchar(25)
--)


--INSERT INTO MrBeast
--SELECT [Title], [Published_date], [Views], [Likes], [Comments], [CategoryId], [VideoId], [Channel]
--FROM #temp_table

--Create TABLE and Consolidate all data into a single table

--CREATE TABLE AllBeastData
--(
--   [Title] varchar(250),  
--   [Published_date] date,  
--   [Views] int,  
--   [Likes] int,
--   [Comments] int,
--   [CategoryId] int,
--   [VideoId] varchar(25),
--   [Channel] varchar(25)
--)

--INSERT INTO AllBeastData
--SELECT [Title], [Published_date], [Views], [Likes], [Comments], [CategoryId], [VideoId], [Channel]
--FROM BeastPhilanthropy

--INSERT INTO AllBeastData
--SELECT [Title], [Published_date], [Views], [Likes], [Comments], [CategoryId], [VideoId], [Channel]
--FROM BeastReacts

--INSERT INTO AllBeastData
--SELECT [Title], [Published_date], [Views], [Likes], [Comments], [CategoryId], [VideoId], [Channel]
--FROM MrBeast

--INSERT INTO AllBeastData
--SELECT [Title], [Published_date], [Views], [Likes], [Comments], [CategoryId], [VideoId], [Channel]
--FROM MrBeast_2

--INSERT INTO AllBeastData
--SELECT [Title], [Published_date], [Views], [Likes], [Comments], [CategoryId], [VideoId], [Channel]
--FROM MrBeastGaming

--SELECT * FROM AllBeastData

