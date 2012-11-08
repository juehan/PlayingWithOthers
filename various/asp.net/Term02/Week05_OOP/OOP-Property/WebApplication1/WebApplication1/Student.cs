using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class Student
    {
        private string _FirstName;
        private string _LastName;
        private string _StudentNumber;

        //properties (a.k.a accessor)
        public string FirstName
        {
            get { return _FirstName; } //getter
            set { _FirstName = value; }//setter
        }

        public string LastName
        {
            get { return _LastName; }
            set { _LastName = value; }
        }

        public string StudentNumber
        {
            get { return _StudentNumber; }
            set { _StudentNumber = value; }
        }

        public Student() 
        {
            //to be filled in
        }

    }
}