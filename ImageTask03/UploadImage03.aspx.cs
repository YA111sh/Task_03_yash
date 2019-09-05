using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ImageTask03
{
    public partial class UploadImage03 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Click(object sender, EventArgs e)
        {
           
                byte[] imagedata = UploadImage.FileBytes;
                Session["img"] = imagedata;

                
                SqlCommand command =new SqlCommand("insert into ProductMaster(ProductName,ProductPrice,UploadImage) values (@ProductName,@ProductPrice,@UploadImage)",conn);
                command.Parameters.AddWithValue("@ProductName", txtname.Text);
                command.Parameters.AddWithValue("@ProductPrice", txtprice.Text);
                command.Parameters.AddWithValue("UploadImage", imagedata);
                conn.Open();
                command.ExecuteNonQuery();
                Response.Redirect("DataLIst.aspx");
                conn.Close();


           
        }
    }
}