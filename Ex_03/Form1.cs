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

            MessageBox.Show ("N�mero " + Convert.ToString(num) + " � Positivo");
            } else {
                MessageBox.Show("N�mero " + Convert.ToString(num) + " � Negativo");
            }
        }
    }
}
