Imports System.Web.UI
Imports DevExpress.Web

Namespace Utilidades
    Public Class CustomTemplate
        Implements ITemplate
        Public Sub InstantiateIn(ByVal container As Control) Implements ITemplate.InstantiateIn
            Dim gcontainer As GridViewDataItemTemplateContainer = CType(container, GridViewDataItemTemplateContainer)
            Dim criterio As String = gcontainer.Column.FieldName
            If DataBinder.Eval(gcontainer.DataItem, criterio).Equals(DBNull.Value) Then
                Dim check As New ASPxCheckBox()
                check.ID = "check"
                gcontainer.Controls.Add(check)
                check.Value = DataBinder.Eval(gcontainer.DataItem, criterio).ToString()
                check.Width = 100

            Else
                criterio = Convert.ToInt32(DataBinder.Eval(gcontainer.DataItem, criterio))

            End If

            'Convert.ToBoolean(DataBinder.Eval(gcontainer.DataItem, criterio))

            'criterio = If(criterio.Equals(DBNull.Value), False, Convert.ToBoolean(criterio)) Then



        End Sub
    End Class
End Namespace
