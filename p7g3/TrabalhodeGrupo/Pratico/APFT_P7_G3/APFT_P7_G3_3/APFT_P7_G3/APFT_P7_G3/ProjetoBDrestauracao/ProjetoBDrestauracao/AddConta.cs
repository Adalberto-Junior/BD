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
    public partial class AddConta : Form
    {
        private Button button1;
        private Label label5;
        private Label label6;
        private TextBox text6;
        private TextBox text7;
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
        private Label label8;
        private TextBox text8;
        private Label label9;
        private TextBox text9;
        private SqlConnection cn;

        public AddConta()
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
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.text6 = new System.Windows.Forms.TextBox();
            this.text7 = new System.Windows.Forms.TextBox();
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
            this.label8 = new System.Windows.Forms.Label();
            this.text8 = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.text9 = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(660, 200);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(173, 66);
            this.button1.TabIndex = 29;
            this.button1.Text = "Salvar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(422, 276);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(77, 16);
            this.label5.TabIndex = 28;
            this.label5.Text = "Valor_Total";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(123, 378);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(76, 16);
            this.label6.TabIndex = 27;
            this.label6.Text = "valor_Base";
            // 
            // text6
            // 
            this.text6.Location = new System.Drawing.Point(372, 306);
            this.text6.Name = "text6";
            this.text6.Size = new System.Drawing.Size(191, 22);
            this.text6.TabIndex = 26;
            // 
            // text7
            // 
            this.text7.Location = new System.Drawing.Point(69, 408);
            this.text7.Name = "text7";
            this.text7.Size = new System.Drawing.Size(191, 22);
            this.text7.TabIndex = 25;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(422, 167);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(77, 16);
            this.label7.TabIndex = 24;
            this.label7.Text = "QuantiVend";
            // 
            // text4
            // 
            this.text4.Location = new System.Drawing.Point(372, 200);
            this.text4.Name = "text4";
            this.text4.Size = new System.Drawing.Size(191, 22);
            this.text4.TabIndex = 23;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(118, 167);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(92, 16);
            this.label3.TabIndex = 22;
            this.label3.Text = "Numero Mesa";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(139, 276);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(28, 16);
            this.label4.TabIndex = 21;
            this.label4.Text = "NIF";
            // 
            // text3
            // 
            this.text3.Location = new System.Drawing.Point(69, 200);
            this.text3.Name = "text3";
            this.text3.Size = new System.Drawing.Size(191, 22);
            this.text3.TabIndex = 20;
            // 
            // text5
            // 
            this.text5.Location = new System.Drawing.Point(69, 306);
            this.text5.Name = "text5";
            this.text5.Size = new System.Drawing.Size(191, 22);
            this.text5.TabIndex = 19;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(422, 79);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(93, 16);
            this.label2.TabIndex = 18;
            this.label2.Text = "Data da Conta";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(123, 70);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(87, 16);
            this.label1.TabIndex = 17;
            this.label1.Text = "CodigoTalao";
            // 
            // text2
            // 
            this.text2.Location = new System.Drawing.Point(372, 110);
            this.text2.Name = "text2";
            this.text2.Size = new System.Drawing.Size(191, 22);
            this.text2.TabIndex = 16;
            // 
            // text1
            // 
            this.text1.Location = new System.Drawing.Point(69, 110);
            this.text1.Name = "text1";
            this.text1.Size = new System.Drawing.Size(191, 22);
            this.text1.TabIndex = 15;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(442, 375);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(28, 16);
            this.label8.TabIndex = 31;
            this.label8.Text = "IVA";
            // 
            // text8
            // 
            this.text8.Location = new System.Drawing.Point(372, 408);
            this.text8.Name = "text8";
            this.text8.Size = new System.Drawing.Size(191, 22);
            this.text8.TabIndex = 30;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(681, 79);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(139, 16);
            this.label9.TabIndex = 33;
            this.label9.Text = "EnderecoRestaurante";
            // 
            // text9
            // 
            this.text9.Location = new System.Drawing.Point(660, 110);
            this.text9.Name = "text9";
            this.text9.Size = new System.Drawing.Size(191, 22);
            this.text9.TabIndex = 32;
            // 
            // AddConta
            // 
            this.ClientSize = new System.Drawing.Size(1199, 600);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.text9);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.text8);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.text6);
            this.Controls.Add(this.text7);
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
            this.Name = "AddConta";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            String CodigoTalao = text1.Text;
            String Numero = text3.Text;
            String NIF = text5.Text;
            String DataC = text2.Text;
            String QuantiVend = text4.Text;
            String Valor_Total = text6.Text;
            String valor_Base = text7.Text;
            String Iva = text8.Text;
            String Endereco_Restaurante = text9.Text;



            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("INSERT INTO Conta VALUES(\'" + CodigoTalao + "\',\'" + Numero + "\',\'" + NIF + "\',\'" + DataC + "\',\'" + QuantiVend + "\',\'" + Valor_Total + "\',\'" + valor_Base + "\',\'" + Iva + "\',\'" + Endereco_Restaurante + "\')", cn);
            try
            {
                cmd.ExecuteNonQuery();
                MessageBox.Show("Conta adicionada!");
            }
            catch(Exception ex)
            {
                throw new Exception("Failed to Add Conta in Database. \n ERROR MESSAGE: \n" + ex.Message);
            }
           
        }
    }
}
