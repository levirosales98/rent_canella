using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient; //connect to SQL
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            //get function with sp_select
            obtenerVehiculos();
        }
    }

    // Objeto de conexión con SQL
    SqlConnection con = new SqlConnection("Data Source=CORPWROSALES;Initial Catalog=rent_canella;Persist Security Info=True;User ID=sa;Password=sql54321.");
    protected void Button1_Click(object sender, EventArgs e)
    {
        obtenerVehiculos();
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        //insert
        string matricula = TextBox2.Text;
        string marca = TextBox3.Text;
        string color = TextBox4.Text;
        double precio_alquiler = double.Parse(TextBox5.Text);
        con.Open();
        SqlCommand co = new SqlCommand("EXEC sp_insert_vehiculos '" + matricula + "', '" + marca + "', '" +
            color + "', " + precio_alquiler + ";", con);
        co.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Agregado con éxito');", true);
        obtenerVehiculos();
    }

    protected void obtenerVehiculos()
    {
        //select
        SqlCommand co = new SqlCommand("EXEC sp_select_vehiculos;", con);
        SqlDataAdapter sd = new SqlDataAdapter(co);
        DataTable dt = new DataTable();
        sd.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        //update
        int id = int.Parse(TextBox1.Text);
        string matricula = TextBox2.Text;
        string marca = TextBox3.Text;
        string color = TextBox4.Text;
        double precio_alquiler = double.Parse(TextBox5.Text);
        con.Open();
        SqlCommand co = new SqlCommand("EXEC sp_update_vehiculos " + id + ", '" + matricula + "', '" + marca +
            "', '" + color + "', " + precio_alquiler + ";", con);
        co.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Actualizado con éxito');", true);
        obtenerVehiculos();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        int id = int.Parse(TextBox1.Text);
        con.Open();
        SqlCommand co = new SqlCommand("EXEC sp_delete_vehiculos " + id + ";", con);
        co.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Eliminado con éxito');", true);
        obtenerVehiculos();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        int id = int.Parse(TextBox1.Text);
        con.Open();
        SqlCommand co = new SqlCommand("EXEC sp_search_vehiculos " + id + ";", con);
        SqlDataAdapter sd = new SqlDataAdapter(co);
        DataTable dt = new DataTable();
        sd.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        co.ExecuteNonQuery();
        con.Close();
    }
}