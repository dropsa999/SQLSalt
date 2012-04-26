/**********************************************************
Author: Thomas Stringer
Created on: 4/26/2012

Description:
	creates an email operator

Notes:
	- change @operator_name to desired op name

	- change @operator_email_address to operator's 
	receiving email address

	- enabled by default
**********************************************************/

declare
	@operator_name sysname = 'YourOperator',
	@operator_email_address nvarchar(100) = 'YourEmail@domain.com'

exec msdb.dbo.sp_add_operator 
	@name = @operator_name, 
	@enabled = 1,
	@email_address = @operator_email_address
go