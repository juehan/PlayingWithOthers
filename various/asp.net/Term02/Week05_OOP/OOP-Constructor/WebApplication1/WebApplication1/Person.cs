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
            _EyeColor = "Brown";
        }

        public Person(string eyecolor)
        {
            _EyeColor = eyecolor;
        }

        public int Age
        {
            get { return _Age; }
            set
            {
                if ((value >= 0) && (value <= 130))
                {
                    _Age = value;
                }
                else
                {
                    throw new Exception("Age cannot be less than 0 or greater than 130");
                }
            }

        }

        public string Name
        {
            get{return _Name;}
            set { _Name = value; }
        }

        public string EyeColor
        {
            get { return _EyeColor; }
            set { _EyeColor = value; }
        }

        public string Walk()
        {
            return Name + ": You are now walking forward";
        }


        public string Walk(string direction)
        {
            string strMessage;
            if (direction == "Back")
            {
                strMessage = Name + ": You are now walking backwards";

            }
            else
            {
                strMessage = Name + ": You are now walking forwards";

            }
            return strMessage;
        }


        public string Walk(int direction)
        {
            string strMessage;

            if (direction < 0)
            {
                strMessage = Name + ": You are now walking backward";

            }
            else
            {
                strMessage = Name + ": You are now walking forward";
            }
            return strMessage;               
        }

    }
}