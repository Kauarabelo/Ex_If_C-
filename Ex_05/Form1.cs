namespace Ex_05
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void radMasculino_CheckedChanged(object sender, EventArgs e)
        {

            if (radMasculino.Checked)
            {

                double altura = Convert.ToDouble(txtAltura.Text);
                double alturaIdeal;

                alturaIdeal = (72.7 * altura) - 58;

                lblPesoIdeal.Text = alturaIdeal.ToString();

            }

        }

        private void radFeminino_CheckedChanged(object sender, EventArgs e)
        {
            if (radFeminino.Checked)
            {

                double altura = Convert.ToDouble(txtAltura.Text);
                double alturaIdeal;

                alturaIdeal = (62.1 * altura) - 44.7;

                lblPesoIdeal.Text = alturaIdeal.ToString();

            }
        }
    }
}
