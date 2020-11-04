SELECT TOP(100) [Id]
	,[DealId]
	,[TransactionID]
	,[TimeOfDeal]         
FROM [DT_Archive_testing].[dbo].[Tickets] 
WHERE	DealId like 'RTNS#%'
	and TimeOfDeal > '2019-01-01 00:00:00'
	and TransactionID in (
'