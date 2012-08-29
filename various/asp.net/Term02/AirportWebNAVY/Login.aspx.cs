using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;


public partial class Login : System.Web.UI.Page
{

    //Set an instance of the Verification class

    Verification objVerify = new Verification();



    protected void Page_Load(object sender, EventArgs e)
    {
        //First time the page loads,  generate and set the characters in the image.

        if (!Page.IsPostBack)
        {
            //Get the verficiation characters and create the 'distorted' image (100 height x 300 width).
            //Add the random code to a Session variable so that we have a copy of the server to compare  to on postback

            


            Session["strVerificationCode"] = objVerify.CreateImage(Server.MapPath("Random.gif"), 100, 300);

            lblCode.Text = Session["strVerificationCode"].ToString();
        }


    }

    protected void LoginAirport_LoginError(object sender, EventArgs e)
    {
        //we could check for excessive attempts to login in here
        LoginAirport.HelpPageText = "Helo with Loggin in ...";
        LoginAirport.HelpPageUrl = "LoginHelpPage.aspx";
        LoginAirport.CreateUserText = "Create a new user ...";
        LoginAirport.PasswordRecoveryText = "Forgot your password";
        LoginAirport.PasswordRecoveryUrl = "ForgotPassword.aspx";

    }
    //http://www.4guysfromrolla.com
    //protected void LoginAirport_Authenticate(object sender, AuthenticateEventArgs e)
    //{

    //}
    protected void LoginAirport_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string strVerificationEntered = ((TextBox)LoginAirport.FindControl("txtVerificationCode")).Text;

        //First check if the characters entered by the user match the characters used in the image


        if (Session["strVerificationCode"].ToString() == strVerificationEntered) //the characters match
        {
            //Now check if the user's username and password are correct
            if (Membership.ValidateUser(LoginAirport.UserName, LoginAirport.Password))
            {
                //correct
                e.Authenticated = true;
            }
            else
            {
                //incorrect

                Session["strVerificationCode"] = objVerify.CreateImage(Server.MapPath("Random.gif"), 100, 300); 
                lblCode.Text = Session["strVerificationCode"].ToString();
                ((TextBox)LoginAirport.FindControl("txtVerificationCode")).Text = string.Empty;

                e.Authenticated = false;
                LoginAirport.FailureText = "the username and/or the password you entered are invalid";
            }
        }
        else //The characters don't match
        {
            //Reset the image with a new code
            Session["strVerificationCode"] = objVerify.CreateImage(Server.MapPath("Random.gif"), 100, 300);
            lblCode.Text = Session["strVerificationCode"].ToString();
            ((TextBox)LoginAirport.FindControl("txtVerificationCode")).Text = string.Empty;
            
            e.Authenticated = false;
            LoginAirport.FailureText = "The Code you entered does not match the image provided. \r\n Please try again with this new image";
        }
        

        
        //no validation and/or exception handling

    }
}