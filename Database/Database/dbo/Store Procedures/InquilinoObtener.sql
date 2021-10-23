CREATE PROCEDURE [dbo].[InquilinoObtener]
      @Id_TipoInquilino int= NULL
AS BEGIN
  SET NOCOUNT ON

  SELECT 
     E.Id_TipoInquilino,
     E.Descripcion,
     E.Estado    
    FROM dbo.TipoInquilino E
    WHERE
    (@Id_TipoInquilino IS NULL OR Id_TipoInquilino=@Id_TipoInquilino)

END