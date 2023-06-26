using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProjetoBDrestauracao
{
    public partial class AddProduto: Form
    {
        private Button button1;
        private Label label7;
        private TextBox text4;
        private Label label3;
        private Label label4;
        private TextBox text3;
        private TextBox text5;
        private Label label2;
        private Label label1;
        private TextBox text2;
        private TextBox text1;
        private SqlConnection cn;

        public AddProduto()
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
            this.button1 = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.text4 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.text3 = new System.Windows.Forms.TextBox();
            this.text5 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.text2 = new System.Windows.Forms.TextBox();
            this.text1 = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(468, 294);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(173, 66);
            this.button1.TabIndex = 48;
            this.button1.Text = "Salvar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(499, 177);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(144, 16);
            this.label7.TabIndex = 43;
            this.label7.Text = "Quantidade Disponivel";
            this.label7.Click += new System.EventHandler(this.label7_Click);
            // 
            // text4
            // 
            this.text4.Location = new System.Drawing.Point(468, 210);
            this.text4.Name = "text4";
            this.text4.Size = new System.Drawing.Size(191, 22);
            this.text4.TabIndex = 42;
            this.text4.TextChanged += new System.EventHandler(this.text4_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(235, 177);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(25, 16);
            this.label3.TabIndex = 41;
            this.label3.Text = "Iva";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(204, 286);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(120, 16);
            this.label4.TabIndex = 40;
            this.label4.Text = "Nome Restaurante";
            this.label4.Click += new System.EventHandler(this.label4_Click);
            // 
            // text3
            // 
            this.text3.Location = new System.Drawing.Point(165, 210);
            this.text3.Name = "text3";
            this.text3.Size = new System.Drawing.Size(191, 22);
            this.text3.TabIndex = 39;
            this.text3.TextChanged += new System.EventHandler(this.text3_TextChanged);
            // 
            // text5
            // 
            this.text5.Location = new System.Drawing.Point(165, 316);
            this.text5.Name = "text5";
            this.text5.Size = new System.Drawing.Size(191, 22);
            this.text5.TabIndex = 38;
            this.text5.TextChanged += new System.EventHandler(this.text5_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(518, 89);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(43, 16);
            this.label2.TabIndex = 37;
            this.label2.Text = "Preço";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(219, 80);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 16);
            this.label1.TabIndex = 36;
            this.label1.Text = "Nome";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // text2
            // 
            this.text2.Location = new System.Drawing.Point(468, 120);
            this.text2.Name = "text2";
            this.text2.Size = new System.Drawing.Size(191, 22);
            this.text2.TabIndex = 35;
            this.text2.TextChanged += new System.EventHandler(this.text2_TextChanged);
            // 
            // text1
            // 
            this.text1.Location = new System.Drawing.Point(165, 120);
            this.text1.Name = "text1";
            this.text1.Size = new System.Drawing.Size(191, 22);
            this.text1.TabIndex = 34;
            this.text1.TextChanged += new System.EventHandler(this.text1_TextChanged);
            // 
            // AddProduto
            // 
            this.ClientSize = new System.Drawing.Size(1112, 520);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.text4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.text3);
            this.Controls.Add(this.text5);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.text2);
            this.Controls.Add(this.text1);
            this.Name = "AddProduto";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void text9_TextChanged(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void text8_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            String Nome = text1.Text;
            String Preco = text2.Text;
            String Iva = text3.Text;
            String QuantiDisp = text4.Text;
            String NomeR = text5.Text;

            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("INSERT INTO Conta VALUES(\'" + Nome + "\',\'" + Preco + "\',\'" + Iva + "\',\'" + QuantiDisp + "\',\'" + NomeR + "\')", cn);
            try
            {
                cmd.ExecuteNonQuery();
                MessageBox.Show("Produto adicionado!");
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to Add Produto in Database. \n ERROR MESSAGE: \n" + ex.Message);
            }


        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void text6_TextChanged(object sender, EventArgs e)
        {

        }

        private void text7_TextChanged(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void text4_TextChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void text3_TextChanged(object sender, EventArgs e)
        {

        }

        private void text5_TextChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label9_Click(object sender, EventArgs e)
        {

        }

        private void text2_TextChanged(object sender, EventArgs e)
        {

        }

        private void text1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
