using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;

namespace ProjetoBDrestauracao
{
    public partial class AddEmpregado : Form
    {
        private TextBox textNome;
        private TextBox textNumFunc;
        private Label label1;
        private Label label2;
        private Label label3;
        private Label label4;
        private TextBox textNIF;
        private TextBox textEndereco;
        private Label label5;
        private Label label6;
        private TextBox textSalario;
        private TextBox textRestaurante;
        private Label label7;
        private TextBox textTelefone;
        private Button button1;
        private SqlConnection cn;

        public AddEmpregado()
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

        private void InitializeComponent()
        {
            this.textNome = new System.Windows.Forms.TextBox();
            this.textNumFunc = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.textNIF = new System.Windows.Forms.TextBox();
            this.textEndereco = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.textSalario = new System.Windows.Forms.TextBox();
            this.textRestaurante = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.textTelefone = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // textNome
            // 
            this.textNome.Location = new System.Drawing.Point(78, 85);
            this.textNome.Name = "textNome";
            this.textNome.Size = new System.Drawing.Size(191, 22);
            this.textNome.TabIndex = 0;
            // 
            // textNumFunc
            // 
            this.textNumFunc.Location = new System.Drawing.Point(381, 85);
            this.textNumFunc.Name = "textNumFunc";
            this.textNumFunc.Size = new System.Drawing.Size(191, 22);
            this.textNumFunc.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(148, 55);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 16);
            this.label1.TabIndex = 2;
            this.label1.Text = "Nome";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(401, 54);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(150, 16);
            this.label2.TabIndex = 3;
            this.label2.Text = "Numero de Funcionario ";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(148, 142);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(28, 16);
            this.label3.TabIndex = 7;
            this.label3.Text = "NIF";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(148, 251);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(66, 16);
            this.label4.TabIndex = 6;
            this.label4.Text = "Endereço";
            // 
            // textNIF
            // 
            this.textNIF.Location = new System.Drawing.Point(78, 175);
            this.textNIF.Name = "textNIF";
            this.textNIF.Size = new System.Drawing.Size(191, 22);
            this.textNIF.TabIndex = 5;
            // 
            // textEndereco
            // 
            this.textEndereco.Location = new System.Drawing.Point(78, 281);
            this.textEndereco.Name = "textEndereco";
            this.textEndereco.Size = new System.Drawing.Size(191, 22);
            this.textEndereco.TabIndex = 4;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(451, 248);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(50, 16);
            this.label5.TabIndex = 13;
            this.label5.Text = "Salario";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(276, 392);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(80, 16);
            this.label6.TabIndex = 12;
            this.label6.Text = "Restaurante";
            this.label6.Click += new System.EventHandler(this.label6_Click);
            // 
            // textSalario
            // 
            this.textSalario.Location = new System.Drawing.Point(381, 281);
            this.textSalario.Name = "textSalario";
            this.textSalario.Size = new System.Drawing.Size(191, 22);
            this.textSalario.TabIndex = 11;
            // 
            // textRestaurante
            // 
            this.textRestaurante.Location = new System.Drawing.Point(222, 422);
            this.textRestaurante.Name = "textRestaurante";
            this.textRestaurante.Size = new System.Drawing.Size(191, 22);
            this.textRestaurante.TabIndex = 10;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(451, 145);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(61, 16);
            this.label7.TabIndex = 9;
            this.label7.Text = "Telefone";
            // 
            // textTelefone
            // 
            this.textTelefone.Location = new System.Drawing.Point(381, 175);
            this.textTelefone.Name = "textTelefone";
            this.textTelefone.Size = new System.Drawing.Size(191, 22);
            this.textTelefone.TabIndex = 8;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(768, 201);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(173, 66);
            this.button1.TabIndex = 14;
            this.button1.Text = "Salvar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // AddEmpregado
            // 
            this.ClientSize = new System.Drawing.Size(1146, 563);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.textSalario);
            this.Controls.Add(this.textRestaurante);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.textTelefone);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.textNIF);
            this.Controls.Add(this.textEndereco);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textNumFunc);
            this.Controls.Add(this.textNome);
            this.Name = "AddEmpregado";
            this.Load += new System.EventHandler(this.AddEmpregado_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void AddEmpregado_Load(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
          
            
             String NumFuncio = textNumFunc.Text;
             String Nome = textNome.Text;
             String NIF = textNIF.Text;
             String Endereco = textEndereco.Text;
             String Telefone = textTelefone.Text;
             String Salario = textSalario.Text;
             String NomeR = textRestaurante.Text;

            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("INSERT INTO Empregado VALUES(\'" + NumFuncio + "\',\'" + Nome + "\',\'" + NIF + "\',\'" + Endereco + "\',\'" + Telefone + "\',\'" + Salario + "\',\'" + NomeR + "\')", cn);
            
            try
            {
                cmd.ExecuteNonQuery();
                MessageBox.Show("Empregado contratado com sucesso!");
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to Add Empregado in Database. \n ERROR MESSAGE: \n" + ex.Message);
            }
        }
    }
}
