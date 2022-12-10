--DAX CODE 

--DAX stands for Data Analysis Expressions (DAX) is a formula expression language used in 
Analysis Services, Power BI,and Power Pivot in Excel. DAX formulas include functions,
operators,and values to perform advanced calculations
and queries on data in related tables and columns in tabular data models.

The following DAX Code was used for the dasboard design;

--To find the Total Order 
Total Order = sumx(Sales_FactTable,[Quantity])

--To find the Total Revenue
Revenue = Sumx(Sales_FactTable,[Price]*[Quantity])

--To find the Distinct hour order placed by hour
Order Hour = DISTINCTCOUNT(Sales_FactTable[Time])

--To find the Distinct days order was placed
Order Day = DISTINCTCOUNT(Sales_FactTable[Date])

--To find the order per hour 
Order per Hr = DIVIDE([Total Order],[Order Hour])

--To find the order per day  
Order per Day = DIVIDE([Total Order],[Order Day])

To find the Distinct sales hour
Sales Hour = DISTINCTCOUNT(Sales_FactTable[Time])

--To find the Distinct sales day
Sales Day = DISTINCTCOUNT(Sales_FactTable[Date])

--To find the sales made per hour
Sales per Hr = Divide([Revenue],[Sales Hour])

--To find the sales made per day 
Sales per Day = DIVIDE([Revenue],[Sales Day])

--To find the size of each pizza from the total pizza order
Size in Total Order = CALCULATE([Total Order],ALL(Sales_FactTable[Size]))

--To find the sales share of pizza size from the total revenue 
Size Sale Share = CALCULATE([Revenue],ALL(Sales_FactTable[Size]))

--To find the percentage of each pizza size from the total pizza order
Size Share As % of Total Order = DIVIDE([Total Order],[Size in Total Order])

--To find the percentage of each pizza size from the total revenue
Size Share As % of Sales = DIVIDE([Revenue],[Size Sale Share])