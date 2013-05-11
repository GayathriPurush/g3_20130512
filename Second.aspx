<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Second.aspx.cs" Inherits="Second" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="ValidateSecond.js" type="text/javascript"></script>
    <style type="text/css">
        .style1
        {
            width: 95%;
            height: 194px;
        }
        .style3
        {
            width: 289px;
            height: 42px;
        }
        .style4
        {
            height: 42px;
            width: 412px;
        }
        .style5
        {
            width: 289px;
            height: 40px;
            text-align: left;
        }
        .style6
        {
            height: 40px;
            width: 412px;
        }
        .style7
        {
            width: 289px;
            height: 45px;
        }
        .style8
        {
            height: 45px;
            width: 412px;
        }
        .style16
        {
            width: 288px;
            height: 25px;
        }
        .style17
        {
            height: 25px;
        }
        .style21
        {
            width: 287px;
        }
        .style22
        {
            width: 290px;
        }
        .style23
        {
            width: 293px;
        }
        .style24
        {
            width: 305px;
        }
        .style26
        {
            width: 288px;
            height: 44px;
        }
        .style27
        {
            height: 44px;
        }
        .style28
        {
            width: 287px;
            height: 68px;
        }
        .style29
        {
            height: 68px;
        }
        .style30
        {
            width: 288px;
        }
        .style31
        {
            width: 289px;
        }
        .style33
        {
            height: 60px;
        }
        .style34
        {
            width: 752px;
            height: 212px;
            z-index: 1;
            left: 150px;
            top: 16px;
            position: absolute;
        }
        .style35
        {
            width: 412px;
        }
    </style>
</head>
<body style="position: relative">
    <form id="form1" runat="server">
    <div style="height: 227px; width: 954px; z-index: 1; left: 10px; top: 0px; position: absolute;">
        <br />
        <asp:Panel ID="Panel2" runat="server" BorderColor="#FF6600" BorderStyle="Solid" BorderWidth="3px"
            Style="z-index: 1; left: 154px; top: 234px; position: absolute; height: 489px;
            width: 743px" BackColor="#FFB435">
            <table class="style1">
                <tr>
                    <td class="style3">
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Personal Details" Font-Bold="True" Font-Size="Larger"
                            ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td class="style4">
                    </td>
                </tr>
                <tr>
                    <td class="style31">
                        <br />
                        <asp:Label ID="lblMartial" runat="server" Text="Marital Status"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Lbl_Child" runat="server" Text="No-Of-Children"></asp:Label>
                        <br />
                    </td>
                    <td class="style35">
                        <asp:RadioButton ID="Rbtn_MartialStatus1" runat="server" GroupName="MartialStatus"
                            Text="Unmarried" AutoPostBack="True" OnCheckedChanged="MaritalStatusChanged" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_MartialStatus2" runat="server" Text="Married" GroupName="MartialStatus"
                            OnCheckedChanged="MaritalStatusChanged" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_MartialStatus3" runat="server" GroupName="MartialStatus"
                            Text="Divorced" OnCheckedChanged="MaritalStatusChanged" />

                        &nbsp;&nbsp;<asp:RadioButton ID="Rbtn_MartialStatus4" runat="server" GroupName="MartialStatus"
                            Text="Awaiting Divorce" OnCheckedChanged="MaritalStatusChanged" />
                        <br />
                        <br />
                        <asp:DropDownList ID="DDL_NoOfChild" runat="server">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>none</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="Rbtn_ChildLiving1"
                            runat="server" Text="Children Living with Me" GroupName="ChildOption" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton
                            ID="RadioButton2" runat="server" Text="Children Not Living With Me" GroupName="ChildOption" />
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <br />
                        <asp:Label ID="LblCaste" runat="server" Text="Caste"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:Label ID="Lbl_CasteName" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:RadioButton ID="Rbtn_Caste1" runat="server" Text="Willing to marry from the same community"
                            GroupName="Caste" />
                        <br />
                        <asp:RadioButton ID="Rbtn_Caste" runat="server" Text="Willing to marry from other communities also	"
                            GroupName="Caste" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style31">
                        <br />
                        <asp:Label ID="lSubCaste" runat="server" Text="Sub Caste"></asp:Label>
                    </td>
                    <td class="style35">
                        <br />
                        <asp:TextBox ID="Txt_Caste" runat="server" AutoPostBack="True" EnableViewState="False"
                            Width="244px"></asp:TextBox>
                        <br />
                        <asp:DropDownList ID="DDL_SubCaste" runat="server" Height="25px" Width="249px" AutoPostBack="True"
                            EnableViewState="False">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style31">
                        <br />
                        <asp:Label ID="Lblgothram" runat="server" Text="Gothra(m)"></asp:Label>
                    </td>
                    <td class="style35">
                        <br />
                        <asp:TextBox ID="Txt_Gothram" runat="server" Height="25px" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style31">
                        <br />
                        <asp:Label ID="LblCountry" runat="server" Text="Country"></asp:Label>
                    </td>
                    <td class="style35">
                        <br />
                        <asp:Label ID="Lbl_CountryName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <br />
                        <asp:Label ID="blState" runat="server" Text="Residing State"></asp:Label>
                    </td>
                    <td class="style8">
                        <br />
                        <asp:DropDownList ID="DDL_State" runat="server" Height="25px" Width="249px" AutoPostBack="True"
                            OnSelectedIndexChanged="DDL_State_SelectedIndexChanged1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style31">
                        <br />
                        <asp:Label ID="LblCity" runat="server" Text="Residing City"></asp:Label>
                    </td>
                    <td class="style35">
                        <br />
                        <asp:DropDownList ID="DDL_City" runat="server" Height="25px" Width="249px">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" BorderColor="#FF6600" BorderStyle="Solid" Style="z-index: 1;
            left: 154px; top: 748px; position: absolute; height: 206px; width: 743px" BackColor="#FFB435">
            <table class="style1">
                <tr>
                    <td class="style30">
                        <br />
                        <asp:Label ID="LblPhysical" runat="server" Text="Physical Attribute" Font-Bold="True"
                            Font-Size="Larger" ForeColor="#CC3300"></asp:Label>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style30">
                        <asp:Label ID="LblHeight" runat="server" Text="Height*"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Txt_Height" runat="server"></asp:TextBox>
                        <asp:Label ID="lbl_Height" runat="server" Text="[In Inches]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style30">
                        <asp:Label ID="LblWeight" runat="server" Text="Weight"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Txt_Weight" runat="server"></asp:TextBox>
                        <asp:Label ID="Lbl_Weight" runat="server" Text="[In Kg's]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style30">
                        <asp:Label ID="LblBodytype" runat="server" Text="Body Type"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="Rbtn_BodyType1" runat="server" Text="Average" GroupName="BodyType" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_BodyType2" runat="server" GroupName="BodyType" Text="Athletic" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_BodyType3" runat="server" Text="Slim" GroupName="BodyType" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_BodyType4" runat="server" Text="Heavy" GroupName="BodyType" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        <asp:Label ID="LblComplextion" runat="server" Text="Complextion"></asp:Label>
                    </td>
                    <td class="style27">
                        <asp:RadioButton ID="Rbtn_Complextion1" runat="server" Text="Fair" GroupName="Complextion" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_Complextion2" runat="server" Text="Very Fair" GroupName="Complextion" />
                        &nbsp;<asp:RadioButton ID="Rbtn_Complextion3" runat="server" Text="Wheatish" GroupName="Complextion" />
                        &nbsp;<asp:RadioButton ID="Rbtn_Complextion4" runat="server" Text="Wheatish-Brown"
                            GroupName="Complextion" />
                        &nbsp;<asp:RadioButton ID="Rbtn_Complextion5" runat="server" Text="Dark" GroupName="Complextion" />
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        <asp:Label ID="Label8" runat="server" Text="Physical Status"></asp:Label>
                    </td>
                    <td class="style17">
                        <asp:RadioButton ID="Rbtn_PhysicalStatus1" runat="server" Text="Normal" GroupName="PhysicalStatus" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_PhysicalStatus2" runat="server" GroupName="PhysicalStatus"
                            Text="Physical-Status" />
                    </td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" BorderColor="#FF6600" BorderStyle="Solid" Style="z-index: 1;
            left: 154px; top: 965px; position: absolute; height: 220px; width: 744px" BackColor="#FFB435">
            <table class="style1">
                <tr>
                    <td class="style21">
                        <asp:Label ID="LblEdu" runat="server" Text=" Education &amp; Occupation" Font-Bold="True"
                            Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        <asp:Label ID="LblEducation" runat="server" Text="Highest Education"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DDL_HighestEdu" runat="server" Height="25px" Width="250px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        <asp:Label ID="LblOcc" runat="server" Text="Occupation"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DDL_Occupation" runat="server" Height="25px" Width="249px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style28">
                        <asp:Label ID="Label12" runat="server" Text="Employed In"></asp:Label>
                    </td>
                    <td class="style29">
                        <asp:RadioButton ID="Rbtn_EmpIn1" runat="server" Text="Goverment" GroupName="EmployedIn" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="Rbtn_EmpIn2" runat="server"
                            GroupName="EmployedIn" Text="Private" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="Rbtn_EmpIn3"
                            runat="server" GroupName="EmployedIn" Text="Business" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_EmpIn4" runat="server" GroupName="EmployedIn" Text="Self-Employed" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_EmpIn5" runat="server" Text="Defence" GroupName="EmployedIn" />
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        <br />
                        <asp:Label ID="LblIncome" runat="server" Text="Income"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="Rbtn_IncomeType1" runat="server" Text="Monthly Income" GroupName="Income" />
                        &nbsp;&nbsp;<asp:RadioButton ID="Rbtn_MonthlyIncome2" runat="server" Text="Annual Income"
                            GroupName="Income" />
                        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />
                        <br />
                        &nbsp;
                        <asp:DropDownList ID="DDL_IncomeType" runat="server" Height="25px" Width="150px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="Txt_Amount" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <img alt="" class="style34" src="Images/im.png" /><br />
        <asp:Panel ID="Panel5" runat="server" BorderColor="#FF6600" BorderStyle="Solid" Style="z-index: 1;
            left: 154px; top: 1206px; position: absolute; height: 204px; width: 745px" BackColor="#FFB435">
            <table class="style1">
                <tr>
                    <td class="style22">
                        <asp:Label ID="LblHabits" runat="server" Text="Habits" Font-Bold="True" Font-Size="Large"
                            ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        <asp:Label ID="LblFood" runat="server" Text="Food"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="Rbtn_FoodType1" runat="server" Text="Non Vegetarian" GroupName="Food" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_FoodType2" runat="server" Text="Vegetarian" GroupName="Food" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_FoodType3" runat="server" Text="Eggetarian" GroupName="Food" />
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        <asp:Label ID="LblSmoking" runat="server" Text="Smoking"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="Rbtn_Smoking1" runat="server" Text="No" GroupName="Smoking" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_Smoking2" runat="server" Text="Yes" GroupName="Smoking" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_Smoking3" runat="server" Text="Occasionally" GroupName="Smoking" />
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        <asp:Label ID="LblDrink" runat="server" Text="Drinking"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="Rbtn_Drinking1" runat="server" Text="No" GroupName="Drinking" />
                        &nbsp;&nbsp;<asp:RadioButton ID="Rbtn_Drinking2" runat="server" Text="Yes" GroupName="Drinking" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_Drinking3" runat="server" Text="Occasionally" GroupName="Drinking" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel6" runat="server" BorderColor="#FF6600" BorderStyle="Solid" Style="z-index: 1;
            left: 154px; top: 1428px; position: absolute; height: 203px; width: 745px" BackColor="#FFB435">
            <table class="style1">
                <tr>
                    <td class="style23">
                        <asp:Label ID="LblAstro" runat="server" Text="Astrological Information" Font-Bold="True"
                            Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="style23">
                        <asp:Label ID="LblChevvai" runat="server" Text="Chevvai Dosham"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="Rbtn_Chevvai1" runat="server" Text="No" GroupName="Chevvai" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_Chevvai2" runat="server" Text="Yes" GroupName="Chevvai" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_Chevvai3" runat="server" Text="Dont Know" GroupName="Chevvai" />
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style23">
                        <asp:Label ID="LblStar" runat="server" Text="Star"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DDL_Star" runat="server" Height="25px" Width="250px" AutoPostBack="True"
                            OnSelectedIndexChanged="DDL_Star_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style23">
                        <asp:Label ID="LblMoon" runat="server" Text="Raasi/Moon Sign"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DDL_Moon" runat="server" Height="25px" Width="250px">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel7" runat="server" BorderColor="#FF6600" BorderStyle="Solid" Style="z-index: 1;
            left: 154px; top: 1652px; position: absolute; height: 207px; width: 745px" BackColor="#FFB435">
            <table class="style1">
                <tr>
                    <td class="style24">
                        <asp:Label ID="LblProfile" runat="server" Text="Family Profile" Font-Bold="True"
                            Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style24">
                        <asp:Label ID="Label14" runat="server" Text="Family Status"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="Rbtn_FamilyStatus1" runat="server" Text="Middle Class" GroupName="FamilyStatus" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_FamilyStatus2" runat="server" Text="Upper-Middle Class"
                            GroupName="FamilyStatus" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_FamilyStatus3" runat="server" Text="Rich" GroupName="FamilyStatus" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_FamilyStatus4" runat="server" Text="Affluent" GroupName="FamilyStatus" />
                    </td>
                </tr>
                <tr>
                    <td class="style24">
                        <asp:Label ID="Label15" runat="server" Text="Family Type"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="Rbtn_FamilyType1" runat="server" Text="Single" GroupName="FamilyType" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_FamilyType2" runat="server" Text="Nuclear" GroupName="FamilyType" />
                    </td>
                </tr>
                <tr>
                    <td class="style24">
                        <asp:Label ID="LblFamilyvalues" runat="server" Text="Family Values"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="Rbtn_FamilyValue1" runat="server" Text="Orthodox" GroupName="FamilyValues" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_FamilyValue2" runat="server" Text="Traditional" GroupName="FamilyValues" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_FamilyValue3" runat="server" Text="Moderate" GroupName="FamilyValues" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_FamilyValue4" runat="server" Text="Liberal" GroupName="FamilyValues" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel8" runat="server" BorderColor="#FF6600" BorderStyle="Solid" Style="z-index: 1;
            left: 155px; top: 1879px; position: absolute; height: 217px; width: 748px" BackColor="#FFB435">
            <table class="style1">
                <tr>
                    <td class="style33">
                        <asp:Label ID="LblDesr" runat="server" Text="Description" Font-Bold="True" Font-Size="Large"
                            ForeColor="#CC3300"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;<asp:TextBox ID="Txt_Desc" runat="server" Height="122px" Width="584px" BackColor="#FFB435"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="btn_Submit" runat="server" Text="Submit" Style="z-index: 1; left: 507px;
            top: 2112px; position: absolute" OnClick="btn_Submit_Click" BackColor="#FFB435" OnClientClick="return Validate_Process()" />
    </p>
    </form>
</body>
</html>
