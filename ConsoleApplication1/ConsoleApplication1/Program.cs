using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            bool acertou = false, acertoletra = false;
            int erro = 0;
            string palavra = Console.ReadLine();
            Console.Clear();
            char[] s = new char[palavra.Length];
            for (int i = 0; i < palavra.Length; i++)
            {
                s[i] = '*';
            }
            while (erro < 7)
            {
                char letra = char.Parse(Console.ReadLine());
                for (int i = 0; i < s.Length; i++)
                {
                    if (letra == palavra[i])
                    {
                        acertoletra = true;
                        s[i] = letra;
                    }
                }
                if (acertoletra == false)
                    erro++;
                Console.WriteLine(s);
                for (int i = 0; i < s.Length; i++)
                {
                    if (s[i] != palavra[i])
                    {
                        acertou = false;
                        break;
                    }
                    else
                        acertou = true;

                }
                if (acertou == true)
                    Console.WriteLine("Acertou, miserável!");

            }
            if (erro == 7)
            {
                Console.WriteLine("Errou!");
            }
        
        }
    }
}
