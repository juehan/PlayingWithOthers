using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Q4_Creating_objects
{
    //Name is a string
    //Price is a decimal
    //displayProducts returns a string listing the product name and price

    class Product
    {
        private string _name;
        private decimal _price;
        
        public Product() 
        {
        }

        public string Name 
        {
            get
            {
                return _name;
            }
            set
            {
                _name = value;
            }
        }
        public decimal Price
        {
            get
            {
                return _price;
            }
            set
            {
                _price = value;
            }

        }

        public virtual string displayProduct()
        {
            return "Product name: " + _name + ", price: $" + _price;
        }
    }

    //Inherits from the product class
    //Discount is a decimal
    //displayProducts overrides the method in the Product class and returns a string listing the product name, price
    //and discount

    class SaleProduct : Product
    {
        private decimal _discount;

        public SaleProduct()
        {
        }

        public decimal Discount
        {
            get
            {
                return _discount;
            }
            set
            {
                _discount = value;
            }
        }
        public override string displayProduct()
        {
            return base.displayProduct()  + ", discount: " + _discount + "% off.";
        }

    }

    class Program
    {
        static void Main(string[] args)
        {
            SaleProduct s = new SaleProduct();

            s.Name = "Macbook Air";
            s.Price = 1599;
            s.Discount = 10;

            string displayInfo = s.displayProduct();
            Console.WriteLine(displayInfo);
        }
    }
}
