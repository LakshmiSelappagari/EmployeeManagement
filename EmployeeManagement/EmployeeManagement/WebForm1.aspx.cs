using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagement
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AddNewEmployeePopup(object sender, System.EventArgs e)
        {
            //to open popup
            myModal.Attributes.Add("Style", "display:block");
            
        }
        protected void ClosePopup(object sender, System.EventArgs e)
        {
            //to close popup
            myModal.Attributes.Add("Style", "display:none");

        }
    }
}