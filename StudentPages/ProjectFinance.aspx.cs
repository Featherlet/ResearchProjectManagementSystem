﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProjectFinance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String stuid = Session["userid"].ToString();
        SqlDataSource1.SelectCommand = "select * from ProjectInformation inner join FinanceRecord on ProjectInformation.ProjectId= FinanceRecord.ProjectId" +
            " where ProjectInformation.StuId='" + stuid + "'";
    }
}