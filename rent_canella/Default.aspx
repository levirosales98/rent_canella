<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <asp:Label ID="Label6" runat="server" Text="Mantenimiento de Vehículos"></asp:Label>
&nbsp;<table class="nav-justified">
        <tr>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 202px;">
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="TextBox1" runat="server" Width="201px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" class="btn btn-info" runat="server" BackColor="#0066FF" ForeColor="White" OnClick="Button5_Click" Text="Buscar" />
            </td>
        </tr>
        <tr>
            <td style="width: 202px; height: 22px">
                <asp:Label ID="Label2" runat="server" Text="Matricula"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox2" runat="server" Width="201px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 202px">
                <asp:Label ID="Label3" runat="server" Text="Marca"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="201px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 202px">
                <asp:Label ID="Label4" runat="server" Text="Color"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="203px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 202px">
                <asp:Label ID="Label5" runat="server" Text="Precio de alquiler"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="204px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 40px; width: 202px">
                <asp:Button ID="Button1" class="btn btn-info" runat="server" BackColor="#0066FF" ClientIDMode="Static" ForeColor="White" OnClick="Button1_Click" Text="Cargar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" class="btn btn-info" runat="server" BackColor="#0066FF" ForeColor="White" OnClick="Button2_Click" Text="Agregar" />
            </td>
            <td style="height: 40px">&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" class="btn btn-info" runat="server" BackColor="#0066FF" ForeColor="White" OnClick="Button3_Click" Text="Actualizar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" class="btn btn-info" runat="server" BackColor="#0066FF" ForeColor="White" OnClick="Button4_Click" Text="Eliminar" />
            </td>
        </tr>
    </table>

    <br />
    <asp:GridView ID="GridView1" runat="server" Width="977px">
        <HeaderStyle BackColor="#0066FF" ForeColor="White" />
    </asp:GridView>

</asp:Content>
