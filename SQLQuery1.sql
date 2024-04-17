-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Christopher Rodriguez
-- Create date: 4/17/24
-- Description:	Returns the customers company name
-- =============================================
CREATE PROCEDURE SalesLT.uspGetCustomerCompany 
	-- Add the parameters for the stored procedure here
	@LastName nvarchar(50) = NULL, 
	@FirstName nvarchar(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT FirstName, LastName, CompanyName
		FROM SalesLT.Customer
		WHERE FirstName = @FirstName AND LastName = @LastName;
END
GO


