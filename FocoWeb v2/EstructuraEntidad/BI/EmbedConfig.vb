Imports Microsoft.PowerBI.Api.V2.Models
Public Class EmbedConfig
    Public Property Id As String
    Public Property EmbedUrl As String
    '   Public Property EmbedToken As EmbedToken
    Public Property MinutesToExpiration As Integer
        Set(ByVal value As Integer)

        End Set
        Get
            '  Dim minutes = EmbedToken.Expiration.Value - DateTime.UtcNow
            '  Return minutes.Minutes
        End Get
    End Property
    Public Property IsEffectiveIdentityRolesRequired As Boolean
    Public Property IsEffectiveIdentityRequired As Boolean
    Public Property EnableRLS As String
    Public Property Username As String
    Public Property Roles As String
    Public Property ErrorMessage As String
End Class
