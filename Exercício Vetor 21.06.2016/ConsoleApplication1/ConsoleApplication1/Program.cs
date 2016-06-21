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
        public string Modelo { get; set; }
    }
    class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            List<Carro> carros = new List<Carro>();
            for (int i = 0; i < n; i++)
			{
                Carro c = new Carro();
                c.Placa = Console.ReadLine();
                c.Ano = int.Parse(Console.ReadLine());
                c.Modelo = Console.ReadLine();
                carros.Add(c);
            }
            string placa = Console.ReadLine();
            bool pesquisa = false;
            for (int i = 0; i < n; i++)
            {
                if(carros[i].Placa == placa)
                {
                    Console.WriteLine("Ano :{0} , Modelo :{1}, Placa :{2}", carros[i].Ano, carros[i].Modelo, carros[i].Placa);
                    pesquisa = true;
                }
            }
            if(pesquisa == false)
            {
                Console.WriteLine("Carro não encontrado");
            }
        }
    }
}
