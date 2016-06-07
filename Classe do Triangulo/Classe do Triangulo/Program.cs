using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Classe_do_Triangulo
{
    class Triangulo
    {
        private int id;
        private double posx;
        private double posy;
        private double _cor;
        public double Cor
        {
            get { return _cor; }
            set
            {
                if (value >= 0 && value < Math.Pow(2, 24))
                    _cor = value;
            }
        }
        public double _lado1;
        public double Lado1
        {
            get { return _lado1; }
            set
            {
                if (value > 0)
                    _lado1 = value;
            }
        }
        private double _lado2;
        public double Lado2
        {
            get { return _lado2; }
            set
            {
                if (value > 0)
                    _lado2 = value;
            }
        }
        private double _lado3;
        public double Lado3
        {
            get { return _lado3; }
            set
            {
                if (value > 0)
                    _lado3 = value;
            }
        }
        public Triangulo(double ladu1, double ladu2, double ladu3, double corTri)
        {
            if ((ladu1 + ladu2 > ladu3) && (ladu2 + ladu3 > ladu1) && (ladu3 + ladu1 > ladu2))
            {
                _lado1 = ladu1;
                _lado2 = ladu2;
                _lado3 = ladu3;
            }
            _cor = corTri;
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
        }
    }
}
