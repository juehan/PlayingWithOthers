using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


//Q1. Arrays
//Create an array or array list which holds 10 book titles.
//Store the 10 book titles in the array

namespace Q1_Arrays
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] bookTitles = new string[10] { 
                "book1", "book2", "book3", "book4", "book5", 
                "book6", "book7", "book8", "book9", "book10" 
            };

            foreach (string s in bookTitles)
                Console.WriteLine(s);


        }
    }
}
