Public Class Main
    Inherits System.Web.UI.MasterPage



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Page.ClientScript.GetPostBackEventReference(Me, "")
        Dim sUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Dim _obra As String = HttpContext.Current.Session.Contents("idObra")
        Dim _obraSelect As Integer = sUsuario.EmpresaSelected.ObraIDSelected

        If Not Page.IsPostBack Then

            lblUsuario.Text = sUsuario.NickName & " - " & sUsuario.EmpresaSelected.Nombre
            'lbl_obra.Text = sUsuario.EmpresaSelected.ObraNombreSelected

            Me.sqlProyectos.ConnectionString = sUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion()

            Dim BLLobra As New DAL.Empresa.Obra
            Dim lstObra As New List(Of EL.Obra)

            lstObra = BLLobra.getObras(sUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion, 1)

            Me.BootstrapComboBox1.TextField = "NOMBRE"
            Me.BootstrapComboBox1.ValueField = "ID"
            Me.BootstrapComboBox1.DataSource = lstObra
            Me.BootstrapComboBox1.DataBind()

            If _obraSelect <> 0 Then
                HttpContext.Current.Session.Add("idObra", _obraSelect)
                Me.BootstrapComboBox1.SelectedIndex = _obraSelect
            Else
                Me.BootstrapComboBox1.SelectedIndex = 0
            End If

        End If

        Me.CargarMenu()


    End Sub

    Private Sub CargarMenu()

        'Listas de objetos
        Dim lstMenu As New List(Of EL.Seguridad.Menu)
        Dim lstMenuNodos As New List(Of EL.Seguridad.Menu)
        Dim lstMenuNodosSub As New List(Of EL.Seguridad.Menu)
        Dim sUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        'BLL 
        Dim BLLMenu As New DAL.Seguridad.Menu()
        'objetos
        Dim oMenu As New EL.Seguridad.Menu
        Dim oNodo As New EL.Seguridad.Menu
        Dim oNodoSub As New EL.Seguridad.Menu

        'menu raiz
        lstMenu = BLLMenu.getMenu(sUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion)

        'por cada nodo raiz
        For Each oMenu In lstMenu

            Dim li_base As New HtmlGenericControl("li")
            li_base.Attributes.Add("class", "mm-dropdown")

            'si es raiz
            If oMenu.PADREID = 0 Then
                Dim a_link As New HtmlGenericControl("a")
                a_link.Attributes.Add("href", "#")
                'a_link.InnerText = oMenu.NOMBRE

                Dim i_link As New HtmlGenericControl("i")
                i_link.Attributes.Add("class", oMenu.CSS_ICON)
                a_link.Controls.Add(i_link)

                Dim s_link As New HtmlGenericControl("span")
                s_link.InnerHtml = oMenu.NOMBRE
                s_link.Attributes("class") = "mm-text"

                a_link.Attributes.Add("href", "#")
                a_link.Controls.Add(s_link)

                li_base.Controls.Add(a_link)

                'si tiene hijos
                If oMenu.NODOS > 0 Then
                    lstMenuNodos = BLLMenu.getMenuList(sUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion, oMenu.ID)
                    Dim lu_nodo As New HtmlGenericControl("ul")
                    For Each oNodo In lstMenuNodos

                        If oNodo.NODOS = 0 Then
                            Dim li_nodo As New HtmlGenericControl("li")
                            Dim a_nodo As New HtmlGenericControl("a")


                            Dim i_link_nodo As New HtmlGenericControl("i")
                            i_link_nodo.Attributes.Add("class", oNodo.CSS_ICON)
                            a_nodo.Controls.Add(i_link_nodo)

                            Dim s_link_nodo As New HtmlGenericControl("span")
                            s_link_nodo.InnerHtml = oNodo.NOMBRE
                            s_link_nodo.Attributes("class") = "mm-text"

                            a_nodo.Attributes.Add("href", oNodo.URL)
                            a_nodo.Controls.Add(s_link_nodo)

                            li_nodo.Controls.Add(a_nodo)

                            lu_nodo.Controls.Add(li_nodo)
                        Else
                            lstMenuNodosSub = BLLMenu.getMenuList(sUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion, oNodo.ID)
                            Dim li_nodo As New HtmlGenericControl("li")
                            li_nodo.Attributes.Add("class", "mm-dropdown")

                            Dim a_nodo As New HtmlGenericControl("a")
                            a_nodo.Attributes.Add("href", "#")
                            a_nodo.InnerText = oNodo.NOMBRE

                            li_nodo.Controls.Add(a_nodo)

                            Dim lu_nodoSub As New HtmlGenericControl("ul")
                            For Each oNodoSub In lstMenuNodosSub
                                'li + a
                                Dim li_nodoSub As New HtmlGenericControl("li")
                                Dim a_nodoSub As New HtmlGenericControl("a")
                                a_nodoSub.Attributes.Add("href", oNodoSub.URL)
                                a_nodoSub.InnerText = oNodoSub.NOMBRE
                                li_nodoSub.Controls.Add(a_nodoSub)
                                lu_nodoSub.Controls.Add(li_nodoSub)
                            Next
                            li_nodo.Controls.Add(lu_nodoSub)

                            lu_nodo.Controls.Add(li_nodo)
                        End If

                    Next
                    li_base.Controls.Add(lu_nodo)
                End If

            End If
            'buscar control UL page
            ul1.Controls.Add(li_base)
        Next
    End Sub


    Protected Sub BootstrapComboBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles BootstrapComboBox1.SelectedIndexChanged

        HttpContext.Current.Session.Add("idObra", Me.BootstrapComboBox1.Value)
        HttpContext.Current.Session.Add("nomObra", Me.BootstrapComboBox1.Text)
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = HttpContext.Current.Session.Contents("xSSN_USUARIO")
        ssUsuario.EmpresaSelected.ObraNombreSelected = Me.BootstrapComboBox1.Text
        ssUsuario.EmpresaSelected.ObraIDSelected = Me.BootstrapComboBox1.Value

        HttpContext.Current.Session.Add("xSSN_USUARIO", ssUsuario)
    End Sub

End Class