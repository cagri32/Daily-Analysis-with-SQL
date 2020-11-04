SELECT TOP(100) [Id]
	,[DealId]
	,[TransactionID]
	,[TimeOfDeal]         
FROM [DT_Archive_testing].[dbo].[Tickets] 
WHERE	DealId like 'RTNS#%'
	and TimeOfDeal > '2019-01-01 00:00:00'
	and TransactionID in (
'3MU2MRRYJLOY6202',
'84RUL8GTVJZ2ABKR',
'1063022JY9152GFX',
'MU2HMYJLP3OY6202',
'1010L00029881396',
'VM07T1F7OT21NU1N',
'8RUL8VNJZ2ARMBKR',
'VM07TF7POTNUXS1N',
'NMEZS3MDA2IU1K9L',
'NotAnID
')
order by DealId DESC 