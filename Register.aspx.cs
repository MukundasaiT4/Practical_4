using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical_4
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Simple Alert Message
                string name = TextBox1.Text;
                string script = $"alert('Registration Successful for {name}!');";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessAlert", script, true);

                // Reset Textboxes
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";

                // Reset Selection Controls
                ListBox1.SelectedIndex = -1;
                RadioButtonList1.SelectedIndex = -1;
                CheckBoxList1.ClearSelection();
            }
        }
    }
}