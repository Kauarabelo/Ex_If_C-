namespace Ex_02
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void btnProcessar_Click(object sender, EventArgs e)
        {

            int num1 = Convert.ToInt32(txtBox1.Text);
            int num2 = Convert.ToInt32(txtBox2.Text);

            if (num1 >= num2)
            {
                lblTxt1.Text = Convert.ToString(num2);
                lblTxt2.Text = Convert.ToString(num1);
            } else
            {
                lblTxt2.Text = Convert.ToString(num2);
                lblTxt1.Text = Convert.ToString(num1);
            }
        }
    }
}
