using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Console;

namespace DoingLambda
{
    class Program
    {
        static void Main(string[] args)
        {
        }

        public bool IsSquare(Rectangle rect) => rect.Height == rect.Width;

        public bool IsNotSquare(Rectangle rect)
        {
            return rect.Height != rect.Width;
        }
        public void AnyNumberOfArguments(params int[] data)
        {
            foreach (var x in data)
            {
                WriteLine(x);
            }
        }
    }

    public class Rectangle
    {
        public decimal Height { get; set; }
        public decimal Width { get; set; }
    }
}
