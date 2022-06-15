using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShoppingWebsite
{
    public partial class Add_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check whether Admin is logged in or not
                if (Session["admin"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        // Will Add all Product Details in Table
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog=Organic; Integrated Security= True;");
            if (imageUpload.HasFile)
            {
                string filename = imageUpload.PostedFile.FileName;
                string filepath = "Images/" + imageUpload.FileName;
                imageUpload.PostedFile.SaveAs(Server.MapPath("~/Images/") + filename);
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Product1 values('" + txtName.Text + "', '" + txtDesc.Text + "',  '" + filepath + "', '" + txtPrice.Text + "', '" + txtQuantity.Text + "', '" + DropDownList1.SelectedItem.Text + "' )", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("UpdateProducts.aspx");
            }
        }
    }
}