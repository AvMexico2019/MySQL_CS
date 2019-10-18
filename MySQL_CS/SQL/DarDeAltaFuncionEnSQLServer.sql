Use SQL_CS
GO
Create Assembly MySQL_CS from 'C:\Users\desa21\source\repos\MySQL_CS\MySQL_CS\bin\Debug\MySQL_CS.dll' WITH PERMISSION_SET=SAFE
GO

CREATE FUNCTION AddGSTTax(@inputOne float)
RETURNS [float] WITH EXECUTE AS CALLER, RETURNS NULL ON NULL INPUT
AS 
EXTERNAL NAME [<DLLName>].[<Complete Namespace>].[AddGSTTax]
GO

sp_configure 'clr enabled', 1
GO 

RECONFIGURE
GO

EXEC sp_configure;
EXEC sp_configure 'clr enabled';
EXEC sp_configure 'clr enabled' , 1;
EXEC sp_configure 'clr strict security';

RECONFIGURE
GO

--.\fciv -SHA2_512  .\bin\Debug\MySQL_CS.dll
-- db206a5985a3468881672786f4ebd33c

exec sp_add_trusted_assembly 0xdb206a5985a3468881672786f4ebd33c, 'MySQL_CS'

-- funcionó en test
CREATE FUNCTION dbo.GetTax(@originalAmount AS float) RETURNS float
AS EXTERNAL NAME
[MySQL_CS].[MySQL_CS.UserDefinedFunctions].[addGsTTax]
