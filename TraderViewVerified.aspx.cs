﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ForestProductTracker
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlDataAdapter sda = null;
        DataSet ds = null;
        String connetionString = @"Data Source=DESKTOP-LA9385J;Initial Catalog=Forest_user_data ; integrated Security=true ";

        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(connetionString);
            conn.Open();
            sda = new SqlDataAdapter("Select State,Forest,Date_of_trans,Quantity,Tr_id,F_Id From dbo.Transactions where isVerified=1 AND Tr_Id=" + Session["Id"], conn);
            ds = new DataSet();
            sda.Fill(ds, "dbo.Transactions");
            GridView1.DataSource = ds.Tables["dbo.Transactions"];
            GridView1.DataBind();
            conn.Close();

        }
    }
}