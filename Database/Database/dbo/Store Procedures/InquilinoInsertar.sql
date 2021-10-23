CREATE PROCEDURE [dbo].[InquilinoInsertar]
	@Id_TipoInquilino varchar(50),
	@Descripcion varchar(50),
	@Estado bit

AS BEGIN
SET NOCOUNT ON

  BEGIN TRANSACTION TRASA

    BEGIN TRY
	
	INSERT INTO dbo.TipoInquilino
	(Id_TipoInquilino,
	 Descripcion,
	 Estado
	)
	VALUES
	(
	@Id_TipoInquilino,
	@Descripcion,
	@Estado
	)

  COMMIT TRANSACTION TRASA
  SELECT 0 AS CodeError, '' AS MsgError

  END TRY

  BEGIN CATCH

   SELECT 
         ERROR_NUMBER() AS CodeError,
		 ERROR_MESSAGE() AS MsgError
   
   ROLLBACK TRANSACTION TRASA

   END CATCH

 END



