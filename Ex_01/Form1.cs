namespace Ex_01
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void btnSair_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnConverso_Click(object sender, EventArgs e)
        {

            int mes;
            mes = Convert.ToInt32(txtBoxNumero.Text);

            switch (mes)
            {
                case 1:
                    lblMes.Text = "Janeiro";
                    break;
                case 2:
                    lblMes.Text = "Fevereiro";
                    break;
                case 3:
                    lblMes.Text = "Março";
                    break;
                case 4:
                    lblMes.Text = "Maio";
                    break;
                case 5:
                    lblMes.Text = "Abril";
                    break;
                case 6:
                    lblMes.Text = "Junho";

                    break;
                case 7:
                    lblMes.Text = "Julho";
                    break;
                case 8:
                    lblMes.Text = "Agosto";

                    break;
                case 9:
                    lblMes.Text = "Setembro";
                    break;
                case 10:
                    lblMes.Text = "Outubro";
                    break;
                case 11:
                    lblMes.Text = "Novembro";
                    break;
                case 12:
                    lblMes.Text = "Dezembro";
                    break;



            }

        }
    }
}
