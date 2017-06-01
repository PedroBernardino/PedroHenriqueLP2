using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ExLP4
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        public void Cadastrar()
        {
            MySqlCommand cmd = new MySqlCommand()
            {
                Connection = new MySqlConnection("Server=localhost;Database=test;Uid=root;Pwd="),
                CommandText = "INSERT INTO Alunos(nome, idade, turma) VALUES (@nome, @idade, @turma);"
            };

            cmd.Parameters.AddWithValue("@nome", txtnome.Text);
            cmd.Parameters.AddWithValue("@idade", txtidade.Text);
            cmd.Parameters.AddWithValue("@turma", txtturma.Text);

            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();

        }

        public void Limpar()
        {
            txtnome.Clear();
            txtidade.Clear();
            txtturma.Clear();
        }

        public void Consulta()
        {
            List<Aluno> a = new List<Aluno>();

            MySqlCommand cmd = new MySqlCommand()
            {
                Connection = new MySqlConnection("Server=localhost;Database=test;Uid=root;Pwd="),
                CommandText = "SELECT * FROM Alunos WHERE Nome = @nome;"
            };

            cmd.Parameters.AddWithValue("@nome", txtnome.Text);

            MySqlDataReader r = cmd.ExecuteReader();

            if(r.HasRows)
            {
                while(r.Read())
                {
                    Aluno aluno = new Aluno();
                    aluno.Id = r.GetInt32(0);
                    aluno.Nome = r.GetString(1);
                    aluno.Idade = r.GetInt32(2);
                    aluno.Turma = r.GetString(3);
                    a.Add(aluno);
                }
            }
            
        }

        private void btncadastro_Click(object sender, RoutedEventArgs e)
        {
            Cadastrar();
            Limpar();
        }

        private void btnConsultar_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
