using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProjetoBDrestauracao
{
    public partial class ProjetoMain : Form
    {
        BindingSource empregadoBindingSource = new BindingSource();
        BindingSource produtoBindingSource = new BindingSource();
        BindingSource contaBindingSource = new BindingSource();
        BindingSource mesaBindingSource = new BindingSource();

        private SqlConnection cn;

        public ProjetoMain()
        {
            InitializeComponent();
        }

        private void ProjetoMain_Load(object sender, EventArgs e)
        {
            cn = getSGBDConnection();
        }


        private SqlConnection getSGBDConnection()
        {
            return new SqlConnection("data source=DESKTOP-QICGHQP\\SQLEXPRESS;integrated security=true;initial catalog=Restauracao");
        }

        private bool verifySGBDConnection()
        {
            if (cn == null)
                cn = getSGBDConnection();

            if (cn.State != ConnectionState.Open)
                cn.Open();

            return cn.State == ConnectionState.Open;
        }


        private void button1_Click(object sender, EventArgs e)
        {
            AddEmpregado form = new AddEmpregado();
            form.Show();
        }

        private void toolStripLabel1_Click(object sender, EventArgs e)
        {
            EmpregadoDAO empregadoDAO = new EmpregadoDAO();
            Empregado e1 = new Empregado
            {
                NumFuncio = "123456789",

                Nome = "Place Holder",

                NIF = "987654321",

                Endereco = "Rua dos Pessegueiros 117",

                Telefone = "919919191",

                Salario = "1000",

                NomeR = "Tasca do Ze"

            };

            Empregado e2 = new Empregado
            {
                NumFuncio = "123456739",

                Nome = "Holder Placed",

                NIF = "987653331",

                Endereco = "Rua dos Carneiros 132",

                Telefone = "919919221",

                Salario = "1000",

                NomeR = "Tasca do Ze"

            };

            empregadoDAO.empregados.Add(e1);
            empregadoDAO.empregados.Add(e2);


            empregadoBindingSource.DataSource = empregadoDAO.empregados;


            dataGridView1.DataSource = empregadoBindingSource;
        }

        private void toolStripSplitButton1_ButtonClick(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            


        }

        private void button4_Click(object sender, EventArgs e)
        {



            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("SELECT * FROM Empregado", cn);
            SqlDataReader reader = cmd.ExecuteReader();

            EmpregadoDAO empregadoDAO = new EmpregadoDAO();

            while (reader.Read())
            {
                Empregado e1 = new Empregado { 
                NumFuncio = reader["NumFuncio"].ToString(),
                Nome = reader["Nome"].ToString(),
                NIF = reader["NIF"].ToString(),
                Endereco = reader["Endereco"].ToString(),
                Telefone = reader["Telefone"].ToString(),
                Salario = reader["Salario"].ToString(),
                NomeR = reader["NomeR"].ToString(),

                };

                empregadoDAO.empregados.Add(e1);

            }

            cn.Close();
            empregadoBindingSource.DataSource = empregadoDAO.empregados;


            dataGridView1.DataSource = empregadoBindingSource;

        }

        private void tabPage1_Click(object sender, EventArgs e)
        {

        }

        private void ProjetoMain_Load_1(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void button9_Click(object sender, EventArgs e)
        {
            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("DELETE FROM Conta WHERE CodigoTalao =" + textBox2.Text, cn);
            cmd.ExecuteNonQuery();

            MessageBox.Show("Conta removida!");

        }

    

        private void button10_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView3_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button8_Click(object sender, EventArgs e)
        {
            AddConta form = new AddConta();
            form.Show();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button12_Click(object sender, EventArgs e)
        {
            
            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("Update Mesa"+" SET Estado = 'Reservado' WHERE Numero =" + textBox1.Text, cn);
            cmd.ExecuteNonQuery();
        }

        private void button13_Click(object sender, EventArgs e)
        {
            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("SELECT * FROM Produto", cn);
            SqlDataReader reader = cmd.ExecuteReader();

            ProdutoDAO produtoDAO = new ProdutoDAO();

            while (reader.Read())
            {
                Produto p1 = new Produto
                {
                    Nome = reader["Nome"].ToString(),
                    Preco = reader["Preco"].ToString(),
                    Iva = reader["Iva"].ToString(),
                    QuantiDisp = reader["QuantiDisp"].ToString(),
                    NomeR = reader["NomeR"].ToString(),

                };

                produtoDAO.produtos.Add(p1);

            }

            cn.Close();
            produtoBindingSource.DataSource = produtoDAO.produtos;


            dataGridView2.DataSource = produtoBindingSource;



        }

        private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button14_Click(object sender, EventArgs e)
        {

            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("SELECT * FROM Conta", cn);
            SqlDataReader reader = cmd.ExecuteReader();

            ContaDAO contaDAO = new ContaDAO();

            while (reader.Read())
            {
                Conta c1 = new Conta
                {
                    CodigoTalao = reader["CodigoTalao"].ToString(),
                    Numero = reader["Numero"].ToString(),
                    NIF = reader["NIF"].ToString(),
                    DataC = reader["DataC"].ToString(),
                    QuantiVend = reader["QuantiVend"].ToString(),
                    Valor_Total = reader["Valor_Total"].ToString(),
                    valor_Base = reader["valor_Base"].ToString(),
                    Iva = reader["Iva"].ToString(),
                    Endereco_Restaurante = reader["Endereco_Restaurante"].ToString(),
                };

                contaDAO.contas.Add(c1);

            }

            cn.Close();
            contaBindingSource.DataSource = contaDAO.contas;


            dataGridView3.DataSource = contaBindingSource;


        }

        private void button5_Click(object sender, EventArgs e)
        {
            AddProduto form = new AddProduto();
            form.Show();
        }

        private void dataGridView4_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button11_Click(object sender, EventArgs e)
        {
            if (!verifySGBDConnection())
                return;

           // SqlCommand cmd = new SqlCommand("SELECT * FROM Mesa", cn);

            SqlCommand cmd = new SqlCommand("SELECT Numero,Estado,NumCliente FROM Mesa WHERE Numero = " + textBox1.Text, cn);
           
            SqlDataReader reader = cmd.ExecuteReader();

            MesaDAO mesaDAO = new MesaDAO();

            while (reader.Read())
            {
                Mesa m1 = new Mesa
                {
                   
                    Numero = reader["Numero"].ToString(),
                    Estado = reader["Estado"].ToString(),
                    NumCliente = reader["NumCliente"].ToString(),
                    
                   

                };

                mesaDAO.mesas.Add(m1);

            }

            cn.Close();
            mesaBindingSource.DataSource = mesaDAO.mesas;


            dataGridView4.DataSource = mesaBindingSource;
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void button6_Click(object sender, EventArgs e)
        {
            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("DELETE FROM Produto WHERE Nome =" + textBox3.Text, cn);
            cmd.ExecuteNonQuery();

            MessageBox.Show("Produto removido!");

        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("DELETE FROM Empregado WHERE NumFuncio =" + textBox4.Text, cn);
            cmd.ExecuteNonQuery();

            MessageBox.Show("Empregado despedido!");
        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
