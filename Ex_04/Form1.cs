namespace Ex_04
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void radAzul_CheckedChanged(object sender, EventArgs e)
        {
            if (radAzul.Checked)
            {
                lblTexto.Text = "Meu nome é " + txtBoxNome.Text + " e minha cor favorita é Azul";
            }
        }

        private void radRosa_CheckedChanged(object sender, EventArgs e)
        {
            if (radRosa.Checked)
            {
                lblTexto.Text = "Meu nome é " + txtBoxNome.Text + " e minha cor favorita é Rosa";
            }
        }
    }
}
