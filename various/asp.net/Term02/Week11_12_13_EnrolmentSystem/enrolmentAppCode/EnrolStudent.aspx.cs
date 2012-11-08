using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EnrolStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UpdateStudentList();
      
    }

   


    protected void gvCourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        //displayStudent();
        //ddlNewStudents.DataBind();
        UpdateStudentList();
    }

    private void UpdateStudentList()
    {

        Course objCourse = new Course();

        int selectedCourseID = (int)gvCourse.SelectedValue;

        ddlNewStudents.DataSource = objCourse.GetStudentNotInCourse(selectedCourseID);
        ddlNewStudents.DataTextField = "studentname";
        ddlNewStudents.DataValueField = "studentID";
        ddlNewStudents.DataBind();

    }

    //deprecated
    private void displayStudent()
    {
        //display student
        if (gvCourse.SelectedIndex >= 0)
        {
            //clear out the drop down list
            ddlNewStudents.Items.Clear();

            //a course was selected retrieve all studnets not enrolled in that course
            Student objStudent = new Student();
            ddlNewStudents.DataSource = objStudent.retrieveNotInCourse((int)(gvCourse.SelectedValue));
            ddlNewStudents.DataBind();

            //if drop down list is empty, add "no students" message
            if (ddlNewStudents.Items.Count < 1)
                ddlNewStudents.Items.Add("No students available");
        }

    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        //Student s = new Student();
        //s.EnrolStudent((int)(gvCourse.SelectedValue), int.Parse(ddlNewStudents.SelectedValue), DateTime.Today.Year.ToString());
        //lblMessage.Text = "Student added";
        //gvClass.DataBind();
        //displayStudent();

        Course objCourse = new Course();

        //get information for enrolling student

        int studentID = int.Parse(ddlNewStudents.SelectedValue);

        int courseID = (int)gvCourse.SelectedValue;

        string year = DateTime.Now.Year.ToString();

        int numRowsAffected = objCourse.EnrolStudent(studentID, courseID, year);

        //display confirmation message
        if (numRowsAffected > 0)
        {
            lblMessage.Text = "New student added";
            lblMessage.CssClass = "confirmation";

        }
        else
        {
            lblMessage.Text = "Faild to add new student";
            lblMessage.CssClass = "error";
        }


    }
    
    protected void gvCourse_DataBound(object sender, EventArgs e)
    {
        //Auto select course
    }
}