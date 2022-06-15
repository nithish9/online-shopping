using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShoppingWebsite
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Navigate to Category page
        protected void btnCategory_Click(object sender, EventArgs e)
        {
            btnCategory.CssClass = "buttonColor";
            btnCategory.Style.Add(HtmlTextWriterStyle.Color, "green");
            Response.Redirect("AddCategory.aspx");
        }

        // Navigate to Add_Product page
        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            btnCategory.CssClass = "buttonColor";
            btnCategory.Style.Add(HtmlTextWriterStyle.Color, "green");
            Response.Redirect("Add_Product.aspx");
        }

        // Navigate to Update_Product page
        protected void btnUpdateProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateProducts.aspx");
        }

        // Does Logout from website
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        // Navigate to Update_Order_Status page
        protected void btnUpdateStatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdatesStatuss.aspx");
        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("SalesReport.aspx");
        }
    }
}