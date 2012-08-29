using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Security.Cryptography;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Text;
using System.Drawing.Drawing2D;

/// <summary>
/// Summary description for Verification
/// </summary>
public class Verification
{
	public Verification()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string CreateImage(string path, int height, int width)
    {
        //Get the random characters for our code
        string code = CreateCode(4);

        //A random value used to randomly rotate the characters of our code
        Random rndRotatio = new Random();
        
        //Create a bitmap(width x height) using 24 bits per pixel (eight bit each for Red, Green, Blue)
        Bitmap bmp = new Bitmap(width, height, PixelFormat.Format24bppRgb);

        //Create a graphics object, this is our 'drawing surface' ...
        Graphics gDrawingSurface = Graphics.FromImage(bmp);

        //Turn an Anti-Aliasing On so that we get a better quality (smoother) image
        gDrawingSurface.TextRenderingHint = TextRenderingHint.AntiAlias;

        //Clear the drawing surface and fill it with the specified colour.
        gDrawingSurface.Clear(Color.White);

        //Draw 2 rectangles on our drawing surface. One with a white pen and one with a red pen for borders
        gDrawingSurface.DrawRectangle(Pens.White, 1, 1, width-3, height-3);
        gDrawingSurface.DrawRectangle(Pens.Red, 0, 0, width-1, height-1);


        
        //The Matrix class has a 'RotateAt' method that will allow us to rotate our text
        Matrix myMatrix = new Matrix();

        //Set the height of the text to be used for the rotation below
        float fHeight = (float)(height * 0.5);

        //iterate through each character in our code and rotate it (a little bit)
        for (int i = 0; i <= code.Length - 1; i++)
        {
            //Increment the 'y' location of each character proportional to the width of our drawing surface. 
            //0.12 sets the space between each character. i.e. 1/8th
            //the width of our drawing surface (8 characters)
            float fWidth = (float)(width * 0.12 * i);

            myMatrix.RotateAt(3.0F, new PointF(fWidth, fHeight));
        }


        //Fix me
        //gDrawingSurface.Transform = myMatrix;


        //Define rectangle area
        RectangleF rect = new RectangleF(1, 1, width-3, height-3);


        // Set up text format.
        StringFormat stringFormat = new StringFormat();
        stringFormat.Alignment = StringAlignment.Center;
        stringFormat.LineAlignment = StringAlignment.Center;

        
        //Set Font
        Font font = new Font("Consolas", 20, FontStyle.Italic);
                    

        //apply background noise
        HatchBrush hatchBrush = new HatchBrush(HatchStyle.SmallConfetti, Color.LightGray, Color.White);
        gDrawingSurface.FillRectangle(hatchBrush, rect);

                
        
        //Creae Brush
        HatchBrush brush = new HatchBrush(HatchStyle.LargeConfetti, Color.LightGray, Color.DarkGray);
        
        //Draw string
        gDrawingSurface.DrawString(code, font, brush, rect, stringFormat);

        

        //Save as a file
        bmp.Save(path, System.Drawing.Imaging.ImageFormat.Gif);


        //clean up
        font.Dispose();
        brush.Dispose();
        gDrawingSurface.Dispose();

        //return string to be used in session variable
        return code;
    }

    //This method will randomly generate eight characters (buffer size is 4 bytes)
    private string CreateCode(int size)
    {
        //RNG: Random Number Generator
        RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();

        //Create a byte array to hold the randomly genrated numbers
        //actually held in a buffer in memory
        byte[] buff = new byte[size + 2];

        //Fill the byte array with a sequence of random values (numbers)
        rng.GetBytes(buff);

        //Now convert the byte array to chacracters and return
        return Convert.ToBase64String(buff);
           
    }

    
}