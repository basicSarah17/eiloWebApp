using eiloWebApp.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eiloWebApp.Eilo1
{
    public partial class Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                populdataGvClient();
            }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void populateGv()
        {
            CRUD myCrud = new CRUD();
            string mySql = @" SELECT clientId, clientFName, clientLName, clientAge, gender, clientCell, clientEmail, clientLength, clientWeight
            FROM client c INNER JOIN gender g ON c.genderId = g.genderId";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            gvClient.DataSource = dr;
            gvClient.DataBind();
        }
        protected void populdataGvClient()
        {
            CRUD myCrud = new CRUD();
            string mySql = @" select genderId,gender from gender";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            ddlClientGender.DataTextField = "gender";
            ddlClientGender.DataValueField = "genderId";
            ddlClientGender.DataSource = dr;
            ddlClientGender.DataBind();
        }
     
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @" insert client(clientFName,clientLName,clientAge,genderId,
            clientCell,clientEmail,clientLength,clientWeight)values
            (@clientFName,@clientLName,@clientAge,@genderId,@clientCell,@clientEmail,@clientLength,@clientWeight)";

            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@clientFName", txtClientFName.Text);
            myPara.Add("@clientLName", txtClientLName.Text);
            myPara.Add("@clientAge", txtClientAge.Text);
            myPara.Add("@clientCell", txtClientCell.Text);
            myPara.Add("@clientEmail", txtClientEmail.Text);
            myPara.Add("@clientLength", txtClientLength.Text);
            myPara.Add("@clientWeight", txtClientWeight.Text);
            myPara.Add("@genderId", ddlClientGender.SelectedItem.Value);

            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
            if (rtn >= 1)
            { lblOutput.Text = " You Did It, So Go And Workout!"; }
            else
            { lblOutput.Text = " You Did not, still Go And Workout!"; }

            if (String.IsNullOrEmpty(txtClientFName.Text))
            {
                lblOutput.Text = "Please fill First name field!";
                lblOutput.ForeColor = System.Drawing.Color.DarkGreen;
                txtClientFName.Focus();
                return;
            }
            if (String.IsNullOrEmpty(txtClientLName.Text))
            {
                lblOutput.Text = "Please fill Last name field!";
                lblOutput.ForeColor = System.Drawing.Color.DarkGreen;
                txtClientLName.Focus();
                return;
            }
            if (String.IsNullOrEmpty(txtClientAge.Text))
            {
                lblOutput.Text = "Please fill Age field!";
                lblOutput.ForeColor = System.Drawing.Color.DarkGreen;
                txtClientAge.Focus();
                return;
            }
            if (String.IsNullOrEmpty(txtClientCell.Text))
            {
                lblOutput.Text = "Please focus and fill the Cell field!";
                lblOutput.ForeColor = System.Drawing.Color.DarkGreen;
                txtClientCell.Focus();
                return;
            }
            if (String.IsNullOrEmpty(txtClientEmail.Text))
            {
                lblOutput.Text = "Please focus and fill the Email field!";
                lblOutput.ForeColor = System.Drawing.Color.DarkGreen;
                txtClientEmail.Focus();
                return;
            }
            if (String.IsNullOrEmpty(txtClientLength.Text))
            {
                lblOutput.Text = "Please fill your length field!";
                lblOutput.ForeColor = System.Drawing.Color.DarkGreen;
                txtClientLength.Focus();
                return;
            }
            if (String.IsNullOrEmpty(txtClientWeight.Text))
            {
                lblOutput.Text = "Please fill your weight field!";
                lblOutput.ForeColor = System.Drawing.Color.DarkGreen;
                txtClientWeight.Focus();
                return;
            }
            if (rtn >= 1)
            {
                double weight;
                if (double.TryParse(txtClientWeight.Text, out weight))
                {
                    if (weight > 60)
                    {
                        lblOutput1.Text = " We recommend a low-carb diet.";
                    }
                    else
                    {
                        lblOutput1.Text = "We recommend a keto diet.";
                    }
                }
                else
                {
                    lblOutput1.Text = "Invalid weight input!";
                }
            }
            else
            {
                lblOutput1.Text = "Failed to insert client data.";
            }
         

            populateGv();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @"update client
                    set clientFName = @clientFName, clientLName = @clientLName, clientAge = @clientAge, genderId = @genderId, clientCell = @clientCell, clientEmail = @clientEmail, clientLength = @clientLength, clientWeight = @clientWeight
                    where clientId = @clientId";

            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@clientId", int.Parse(txtClientId.Text));
            myPara.Add("@clientFName", txtClientFName.Text);
            myPara.Add("@clientLName", txtClientLName.Text);
            myPara.Add("@clientAge", txtClientAge.Text);
            myPara.Add("@clientCell", txtClientCell.Text); // Corrected parameter name here
            myPara.Add("@clientEmail", txtClientEmail.Text);
            myPara.Add("@clientLength", txtClientLength.Text);
            myPara.Add("@clientWeight", txtClientWeight.Text);
            myPara.Add("@genderId", ddlClientGender.SelectedItem.Value);
            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
            if (rtn >= 1)
            {
                lblOutput.Text = "You Did It, So Go And Workout!";
            }
            else
            {
                lblOutput.Text = "You Did not, still Go And Workout!";
            }

            populateGv();

        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            populateGv();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @"DELETE FROM client
                    WHERE clientId = @clientId";

            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@clientId", int.Parse(txtClientId.Text));

            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
            if (rtn >= 1)
            {
                lblOutput.Text = "You Did It, So Go And Workout!";
            }
            else
            {
                lblOutput.Text = "You Did not, still Go And Workout!";
            }

            populateGv();

        }

        protected void btnExport_Click(object sender, EventArgs e)
        {
            ExportGridToExcel(gvClient);
        }
        public static void ExportGridToExcel(GridView myGv) // working 1
        {
            HttpContext.Current.Response.Clear();
            HttpContext.Current.Response.Buffer = true;
            HttpContext.Current.Response.ClearContent();
            HttpContext.Current.Response.ClearHeaders();
            HttpContext.Current.Response.Charset = "";
            string FileName = "ExportedReport_" + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Current.Response.ContentType = "application/vnd.ms-excel";
            HttpContext.Current.Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            myGv.GridLines = GridLines.Both;
            myGv.HeaderStyle.Font.Bold = true;
            myGv.RenderControl(htmltextwrtter);
            HttpContext.Current.Response.Write(strwritter.ToString());
            HttpContext.Current.Response.End();
        }

        protected void gvClient_SelectedIndexChanged(object sender, EventArgs e)
        {
            int PK = int.Parse((sender as LinkButton).CommandArgument);
            //lblOuput.Text = PK.ToString();

            string mySql = @"select clientId, clientFName, clientLName, clientAge, genderId, clientCell, clientEmail, clientLength, clientWeight
from client where clientId=@clientId";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@clientId", PK);
            CRUD myCrud = new CRUD();
            using (SqlDataReader dr = myCrud.getDrPassSql(mySql, myPara))
            {
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        

                        lblClientFName.Text = dr["clientFName"].ToString();
                        lblClientLName.Text = dr["clientLName"].ToString(); ;
                        lblClientAge.Text = dr["clientAge"].ToString();
                        lblClientGender.Text = dr["genderId"].ToString();
                        lblClientCell.Text = dr["clientCell"].ToString();
                        lblClientEmail.Text = dr["clientEmail"].ToString();
                        lblClientLength.Text = dr["clientLength"].ToString();
                        lblClientWeight.Text = dr["clientWeight"].ToString();



                    }
                }
            }
        }

        protected void populateForm_Click(object sender, EventArgs e)
        {
            int PK = int.Parse((sender as LinkButton).CommandArgument);
            //lblOuput.Text = PK.ToString();

            string mySql = @"select clientId, clientFName, clientLName, clientAge, genderId, clientCell, clientEmail, clientLength, clientWeight
            from client where clientId=@clientId";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@clientId", PK);
            CRUD myCrud = new CRUD();
            using (SqlDataReader dr = myCrud.getDrPassSql(mySql, myPara))
            {
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {

                        txtClientId.Text = dr["clientId"].ToString();
                        txtClientFName.Text = dr["clientFName"].ToString();
                        txtClientLName.Text = dr["clientLName"].ToString(); ;
                        txtClientAge.Text = dr["clientAge"].ToString();
                        ddlClientGender.SelectedValue = dr["genderId"].ToString();
                        txtClientCell.Text = dr["clientCell"].ToString();
                        txtClientEmail.Text = dr["clientEmail"].ToString();
                        txtClientLength.Text = dr["clientLength"].ToString();
                        txtClientWeight.Text = dr["clientWeight"].ToString();


                    }
                }
            }
        }
 
    }//Cls
}//NS