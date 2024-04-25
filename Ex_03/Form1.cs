namespace Ex_03
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btn1_Click(object sender, EventArgs e)
        {
            int num = Convert.ToInt32(lblNumero.Text);
            
            if (num % 2 == 0 )
            {

            MessageBox.Show ("Número " + Convert.ToString(num) + " é Positivo");
            } else {
                MessageBox.Show("Número " + Convert.ToString(num) + " é Negativo");
            }
        }
    }
}
