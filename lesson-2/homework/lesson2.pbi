1. FIle sources, Database sources
2. Opening Power BI, at the right corner choosing 'Get Data'
3. With a button Refresh
4. Text/CSV, Excel
5.preview the available tables/sheets.
6. Import Sales_Data.csv and load only the "Product" and "Price" columns

Go to Home → Get Data → Text/CSV.

Select Sales_Data.csv.

In the Navigator, click Transform Data (not Load).

In Power Query Editor, select only Product and Price columns → right-click other columns → Remove Columns.

Click Close & Load to load just those two columns into Power BI.

7. Change OrderDate to a date format during import

In Power Query Editor (after clicking Transform Data):

Select the OrderDate column.

On the toolbar, go to Data Type dropdown.

Choose Date (or Date/Time if needed).

This ensures Power BI treats it as a proper date field for filtering, sorting, and time intelligence.

8. Difference between "Load" and "Transform Data"

Load

Imports the data directly into Power BI as-is.

Faster, but you can’t clean/filter before loading.

Transform Data

Opens Power Query Editor first.

Lets you clean, filter, remove columns, change types, etc. before loading.

Recommended when data needs preparation.

👉 Rule of thumb:

If data is already clean → Load.

If it needs shaping → Transform Data.

9. Why might you see an error when connecting to a SQL database? (One reason)

Invalid credentials (wrong username/password).
Other possible reasons:

Database server not reachable (network/firewall issues).

User account doesn’t have permission to access that database.

Wrong server or database name entered.

10. How do you replace a data source after importing it?

In Power BI Desktop:

Go to Home → Transform Data → Data Source Settings.

Select the data source you want to change.

Click Change Source….

Update the file path, server name, or database details.

Click OK → Power BI reconnects using the new source.

11. FilteredRows = Table.SelectRows(ChangedType, each [Quantity] > 1)

12. If file moved to a new folder → Go to Home → Transform Data → Data Source Settings → Change Source → browse new file.
13. Replace or remove invalid values (e.g., replace "N/A" with null).
14. Go to Home → Get Data → SQL Server.

Enter Server Name and Database.

Click Advanced options → paste query with parameter:

SELECT * 
FROM Sales
WHERE YEAR(OrderDate) = @Year
15.  Power BI alone: Use Scheduled Refresh → automatically pulls latest data from source at defined times.

With Power Automate:

Build a flow that triggers when a file is updated (e.g., new Sales_Data.csv uploaded to OneDrive/SharePoint).

The flow calls the Power BI Refresh Dataset action.

This ensures Power BI reports update immediately after new data arrives.
