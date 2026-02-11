<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoriaForm.aspx.cs" Inherits="UMCAEstilo.Vistas.CategoriaForm" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mantenimiento de Categorías de Ropa</title>
    <!-- Enlaza tu CSS correctamente -->
    <link rel="stylesheet" href="../Estilos/CategoriaStyle.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Mantenimiento de Categorías de Ropa</h1>

            <div class="form-section">
                <label for="txtNombre">Nombre de la Categoría:</label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="input-text"></asp:TextBox>

                <label for="txtDescripcion">Descripción:</label>
                <asp:TextBox ID="txtDescripcion" runat="server" CssClass="input-text"></asp:TextBox> 
            </div>
            <div class =" boton_verde"><asp:Button ID="btnAgregar" runat="server" Text="Agregar Categoría" /></div>
            <h2>Categorías Existentes</h2>
            <asp:GridView ID="gvCategorias" runat="server" AutoGenerateColumns="False" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                    <asp:TemplateField HeaderText="Acciones">
                        <ItemTemplate>
                            <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar" CssClass="btn btn-green" CommandName="Select" />
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-red" CommandName="Delete" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
