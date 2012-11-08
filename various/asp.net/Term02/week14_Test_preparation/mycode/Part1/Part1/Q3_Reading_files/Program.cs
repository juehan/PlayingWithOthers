using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.IO;

//Q3. Reading files
//Read the file “numbers.txt” and display the numbers one per line.

namespace Q3_Reading_files
{
    class Program
    {
        static void Main(string[] args)
        {
            //01. specify path
            string path = @"c:\temp\numbers.txt";

            //02. create stream reader object using path
            StreamReader sr = File.OpenText(path);
            
            //03. create empty string object
            string s;

            //04. while readline is not null, keep reading lines
            while ((s = sr.ReadLine()) != null)
            {

                //05. print it out to console
                Console.WriteLine(s);
            }
        }
    }
}
