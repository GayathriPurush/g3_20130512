using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using MatrimonyModel;
using System.Transactions;



public partial class Second : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StrCon"].ConnectionString);

    MatrimonyEntities ObjEntity;

    protected void Page_Load(object sender, EventArgs e)
    {
        ObjEntity = new MatrimonyEntities();

        string TxtCaste = Convert.ToString(Session["SessionCasteText"]);
        string TxtCountry = Convert.ToString(Session["SessionCountryText"]);
        Lbl_CountryName.Text = TxtCountry;
        Lbl_CasteName.Text = TxtCaste;

        LoadHigherEduCombo();
        LoadOccupCombo();
        LoadCurrencyCombo();
        SubCaste();

        //according to religion caste will be change to dropdown or textbox

        if (Session["SessionReligion"].ToString().ToUpper()  == "HINDU")
        {
            Txt_Caste.Visible = false;
            DDL_SubCaste.Visible = true;
        }
        else
        {
            Txt_Caste.Visible = true;
            DDL_SubCaste.Visible = false;
        }

        if (!IsPostBack)
        {
            LoadStarCombo();
            LoadStateCombo();
        }

    }
    //noofchildren
    //protected void NoofChild()
    //{
    //    DDL_NoOfChild.Items.Insert(0, new ListItem("--Select--", "0"));
    //    DDL_NoOfChild.Items.Insert(0, new ListItem("1", 1));

    //}


    //Education
    protected void LoadHigherEduCombo()
    {
        DDL_HighestEdu.DataSource = ObjEntity.HighEducations;
        DDL_HighestEdu.DataTextField = "EducationName";
        DDL_HighestEdu.DataValueField = "EducationID";
        DDL_HighestEdu.DataBind();
        DDL_HighestEdu.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Occupation
    protected void LoadOccupCombo()
    {
        DDL_Occupation.DataSource = ObjEntity.Occupations;
        DDL_Occupation.DataTextField = "OccupName";
        DDL_Occupation.DataValueField = "OccupID";
        DDL_Occupation.DataBind();
        DDL_Occupation.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Currency
    protected void LoadCurrencyCombo()
    {
        DDL_IncomeType.DataSource = ObjEntity.Currencies;
        DDL_IncomeType.DataTextField = "CurrName";
        DDL_IncomeType.DataValueField = "CurrID";
        DDL_IncomeType.DataBind();
        DDL_IncomeType.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //State
    protected void LoadStateCombo()
    {
        DDL_State.DataSource = ObjEntity.StateDetails;
        DDL_State.DataTextField = "StateName";
        DDL_State.DataValueField = "StateID";
        DDL_State.DataBind();
        DDL_State.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    protected void DDL_State_SelectedIndexChanged1(object sender, EventArgs e)
    {
        LoadCityCombo();
    }

    //City
    protected void LoadCityCombo()
    {
        int intStateID;
        bool blnCheck = int.TryParse(DDL_State.SelectedValue, out intStateID);

        var query = (from m in ObjEntity.Cities
                     where m.StateID == intStateID
                     select m).ToList();

        DDL_City.DataSource = query;
        DDL_City.DataTextField = "CityName";
        DDL_City.DataValueField = "CityID";
        DDL_City.DataBind();
        DDL_City.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //SubCaste
    protected void SubCaste()
    {

        DDL_State.DataSource = ObjEntity.StateDetails;
        DDL_State.DataTextField = "StateName";
        DDL_State.DataValueField = "StateID";
        DDL_State.DataBind();
        DDL_State.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Star
    protected void LoadStarCombo()
    {
        DDL_Star.DataSource = ObjEntity.StarDetails;
        DDL_Star.DataTextField = "StarName";
        DDL_Star.DataValueField = "StarID";
        DDL_Star.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    protected void DDL_Star_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadRasiCombo();
    }

    //Rassi
    protected void LoadRasiCombo()
    {
        DDL_Moon.DataSource = ObjEntity.Raasis;
        DDL_Moon.DataTextField = "RaasiName";
        DDL_Moon.DataValueField = "RaasiID";
        DDL_Moon.DataBind();
        DDL_Moon.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        //SqlTransaction Transaction;
        //con.Open();
        //Transaction = con.BeginTransaction();
        /*  try
          {           
              new SqlCommand("INSERT INTO Transact VALUES ('" + 
         * Convert.ToString(Session["Sessionname"]) + "','" + 
         * Convert.ToString(Session["SessionDOB"]) + "','" + 
         * Convert.ToString(Session["SessionGender"]) + "','" + 
         * Convert.ToString(Session["SessionMobile"]) + "','" + 
         * Convert.ToString(Session["SessionCountry"]) + "','" + 
         * DDL_State.SelectedItem + "','" + DDL_City.SelectedItem + "','" + 
         * Convert.ToString(Session["SessionReligion"]) + "','" + 
         * Convert.ToString(Session["SessionCaste"]) + "','" + 
         * DDL_SubCaste.SelectedItem + "','" + Txt_Gothram.Text + "','" + 
         * Convert.ToString(Session["SessionEmail"]) + "','" + Rbtn_PhysicalStatus.SelectedValue + "','" +
         * Txt_Desc.Text + "');", con, Transaction).ExecuteNonQuery();

              new SqlCommand("INSERT INTO EduDetails values ('" + Txt_Height.Text + "','" + DDL_Occupation.SelectedItem + "','" + Rbtn_EmpIn.SelectedValue + "','" + Rbtn_IncomeType.SelectedValue + "','" + DDL_IncomeType.SelectedItem + "','" + Txt_Amount.Text + "');", con, Transaction).ExecuteNonQuery();

              new SqlCommand("INSERT INTO Habit values('" + Rbtn_Food.SelectedValue + "','" + Rbtn_Smoking.SelectedValue + "','" + Rbtn_Drinking.SelectedValue + "');", con, Transaction).ExecuteNonQuery();

              new SqlCommand("INSERT INTO AstrologicalInfo values('" + Rbtn_Dhosam.SelectedValue + "','" + DDL_Star.SelectedItem + "','" + DDL_Moon.SelectedItem + "');", con, Transaction).ExecuteNonQuery();

              new SqlCommand("insert into Family values('" + Rbtn_familystatus.SelectedValue + "','" + Rbtn_FamType.SelectedValue + "','" + Rbtn_FamValue.SelectedValue + "');", con, Transaction).ExecuteNonQuery();

              Transaction.Commit();
          }
          catch
          {
              Transaction.Rollback();
          }
          con.Close();*/
        using (TransactionScope ts = new TransactionScope())
        {

            try
            {
                //using (DataContext contextObject = new DataContext(ConnectionString))
                //{
                // Open the contextObject connection state explicitly
                ObjEntity.Connection.Open();


                // First SaveChange method.
                MatrimonyDetail objMatrim = new MatrimonyDetail();
                objMatrim.MatrimonyID = 1;
                objMatrim.Name = Convert.ToString(Session["Sessionname"]);
                objMatrim.DOB = Convert.ToDateTime(Session["SessionDOB"]);
                objMatrim.Gender = Convert.ToString(Session["SessionGender"]);
                objMatrim.CountryID = int.Parse(Session["SessionCountry"].ToString());
                objMatrim.MobileNo = Convert.ToString(Session["SessionMobile"]);
                objMatrim.StateID = int.Parse(DDL_State.SelectedValue);
                objMatrim.CityID = int.Parse(DDL_City.SelectedValue);
                objMatrim.ReligionID = int.Parse(Session["SessionReligion"].ToString());
                objMatrim.CasteID = int.Parse(Session["SessionCaste"].ToString());
                objMatrim.SubCasteID = int.Parse(DDL_SubCaste.SelectedValue);
                objMatrim.GothraID = 1;
                objMatrim.Email = Convert.ToString(Session["SessionEmail"]);
                objMatrim.LoginPwd = Convert.ToString(Session["SessionPwd"]);

                string strMaritalStatus = "U";
                if (Rbtn_MartialStatus1.Checked == true)
                    strMaritalStatus = "U";
                else if (Rbtn_MartialStatus2.Checked == true)
                    strMaritalStatus = "M";
                else if (Rbtn_MartialStatus3.Checked == true)
                    strMaritalStatus = "D";
                else if (Rbtn_MartialStatus4.Checked == true)
                    strMaritalStatus = "A";

                objMatrim.MaritalStatus = strMaritalStatus;
                //objMatrim.TongueID = int.Parse(Session["SessionMotherTon"].ToString());

                objMatrim.NoOfChild = DDL_NoOfChild.SelectedValue.ToString();

                if (Rbtn_ChildLiving1.Checked == true)
                    objMatrim.LivingWith = "Y";
                else
                    objMatrim.LivingWith = "N";

                objMatrim.DescriptionInfo = Txt_Desc.Text;
                objMatrim.ActiveInd = "N";
                objMatrim.CreatedDate = System.DateTime.Now;
                objMatrim.UpdatedDate = System.DateTime.Now;

                ObjEntity.AddToMatrimonyDetails(objMatrim);
                ObjEntity.SaveChanges();


                //// Second SaveChange method.
                //....Codes for 2nd table.....
                //contextObject.SaveChanges();

                //// Third SaveChange method.
                //....Codes for 3rd table.....
                //contextObject.SaveChanges();

                // If execution reaches here, it indicates the successfull completion of all                  three save operation. hence comit the transaction.
                ts.Complete();
                //}
            }
            catch (Exception ex)
            {
                // If any excption is caught, roll back the entire transaction and ends the                 transaction scope
                ts.Dispose();
            }
            finally
            {
                // Close the opened connection
                if (ObjEntity.Connection.State == ConnectionState.Open)
                {
                    ObjEntity.Connection.Close();
                }
            }
        }


    }


    protected void MaritalStatusChanged(object sender, EventArgs e)
    {
        if (Rbtn_MartialStatus1.Checked == true)
        {
            Lbl_Child.Visible = false;
            DDL_NoOfChild.Visible = false;
            Rbtn_ChildLiving1.Visible = false;
        }
        else if (Rbtn_MartialStatus2.Checked == true)
        {
            Lbl_Child.Visible = true;
            DDL_NoOfChild.Visible = true;
            Rbtn_ChildLiving1.Visible = true;
        }
        else if (Rbtn_MartialStatus3.Checked == true)
        {
            Lbl_Child.Visible = true;
            DDL_NoOfChild.Visible = true;
            Rbtn_ChildLiving1.Visible = true;
        }
        else if (Rbtn_MartialStatus4.Checked == true)
        {
            Lbl_Child.Visible = true;
            DDL_NoOfChild.Visible = true;
            Rbtn_ChildLiving1.Visible = true;
        }
    }
    
}


