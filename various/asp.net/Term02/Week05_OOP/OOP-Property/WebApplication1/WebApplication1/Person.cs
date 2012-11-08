using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class Person
    {
        private int _Age;
        private string _Name;
        private string _EyeColor;

        public Person()
        {
        }

        public int Age
        {
            get { return _Age; }
            set { _Age = value; }
        }

        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }

        public string EyeColor
        {
            get { return _EyeColor; }
            set { _EyeColor = value; }
        }

    }
}