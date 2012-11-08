using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class Student
    {
        private string FirstName { get; set; }
        private string LastName {get; set;}
        private string StudentNumber {get; set;}
        private string CourseNumber{get; set;}
        private bool Status = false;

        public Student(string studentNumber)
        {
            StudentNumber = studentNumber;
            Status = true;
        }

        public Student()
        {
            Status = false;
        }


        public void Enrol(string courseNumber)
        {
            CourseNumber = courseNumber;
            Status = true;
        }

        public void Update(bool status)
        {
            if (Status != status)
                Status = status;
        }

        public void Update(string fn, string ln)
        {
            if (String.Compare(FirstName, fn) != 0)
                FirstName = fn;

            if (String.Compare(LastName, ln) != 0)
                LastName = ln;
        }


    }
}