using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Carro
    {
        public string Placa { get; set; }
        public int Ano { get; set; }
        public 
    }
    class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            List<Carro> carros = new List<Carro>();
            for (int i = 0; i < n; i++)
			{
                carros.Add(new Carro());
            }
        }
    }
}
