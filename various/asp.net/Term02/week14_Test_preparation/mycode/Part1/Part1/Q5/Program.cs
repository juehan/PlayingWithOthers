using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Q5
{
    class Numbers
    {
        //NumberList is an array
        private Array _numberList;

        //Property
        public Array NumberList
        {
            get
            {
                return _numberList;
            }
            set
            {
                _numberList = value;
            }
        }
        //There are 2 constructors
        
        //The first one take no input parameter and creates an array of length 10
        public Numbers()
        {
            _numberList = Array.CreateInstance(typeof(Int32), 10);
        }

        //The second constructor takes an integer as input and creates an array of length specified by the integer input

        public Numbers(int len)
        {
            _numberList = Array.CreateInstance(typeof(Int32), len);
        }

        //The method populateNumbers() populates the array with sequential numbers dtarting from 1
        public void populateNumbers()
        {
            for (int i = 0; i < _numberList.Length; ++i)
            {
                _numberList.SetValue(i+1, i);
            }
        }

        //doubleNumbers() doubles each number and saves the doubled number back into the array element
        public void doubleNumbers()
        {
            for (int i = 0; i < _numberList.Length; ++i)
            {
                int num = Convert.ToInt32(_numberList.GetValue(i));
                _numberList.SetValue(num*2, i);
            }
        }

        //squareNumbers() squares each number and saves the square back into the array element
        public void squareNumbers()
        {
            for (int i = 0; i < _numberList.Length; ++i)
            {
                int num = Convert.ToInt32(_numberList.GetValue(i));
                _numberList.SetValue(num * num, i);
            }
        }

    }


    class Program
    {
        //utility function to print out array's elements
        static void PrintArr(Array arr)
        {
            foreach (int i in arr)
                Console.Write(i + " ");
            Console.WriteLine();
        }

        static void Main(string[] args)
        {
            Console.WriteLine("------------------1st case -------------------");

            //object creation with default constructor
            Numbers n1 = new Numbers();
            //populate 10
            n1.populateNumbers();

            Array arr = n1.NumberList;
            PrintArr(arr);

            //make it double
            Console.WriteLine("--> make it double");

            n1.doubleNumbers();
            arr = n1.NumberList;
            PrintArr(arr);

            //make it square
            Console.WriteLine("--> make it square");
            n1.squareNumbers();
            arr = n1.NumberList;
            PrintArr(arr);

            Console.WriteLine("------------------2nd case -------------------");
            Array.Clear(arr, 0, arr.Length); //clear array
            //object creation with overloaded constructor with parameter of length
            Numbers n2 = new Numbers(5);
            n2.populateNumbers();

            arr = n2.NumberList;
            PrintArr(arr);

            //make it double
            Console.WriteLine("--> make it double");

            n2.doubleNumbers();
            arr = n2.NumberList;
            PrintArr(arr);

            //make it square
            Console.WriteLine("--> make it square");
            n2.squareNumbers();
            arr = n2.NumberList;
            PrintArr(arr);

            Console.WriteLine("Well done !");

        }
    }
}
