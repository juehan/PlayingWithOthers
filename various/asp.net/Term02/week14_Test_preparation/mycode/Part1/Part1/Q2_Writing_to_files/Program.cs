using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.IO;

//Q2. Writing to files
//Loop through and write numbers 1 to 10 one per line to a file called “numbers.txt”

namespace Q2_Writing_to_files
{
    class Program
    {
        static void Main(string[] args)
        {
            string path = @"c:\temp\numbers.txt";
            StreamWriter sw = File.CreateText(path);
            for (int i = 1; i <= 10; ++i)
            {
                sw.WriteLine(i);
            }
            sw.Close();
            Console.WriteLine("File write done");
        }
    }
}
