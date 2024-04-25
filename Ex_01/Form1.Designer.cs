namespace Ex_01
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            btnConverso = new Button();
            label1 = new Label();
            txtBoxNumero = new TextBox();
            btnSair = new Button();
            label2 = new Label();
            lblMes = new Label();
            SuspendLayout();
            // 
            // btnConverso
            // 
            btnConverso.Location = new Point(96, 204);
            btnConverso.Name = "btnConverso";
            btnConverso.Size = new Size(112, 34);
            btnConverso.TabIndex = 0;
            btnConverso.Text = "Converso";
            btnConverso.UseVisualStyleBackColor = true;
            btnConverso.Click += btnConverso_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(149, 50);
            label1.Name = "label1";
            label1.Size = new Size(236, 25);
            label1.TabIndex = 1;
            label1.Text = "Digite um número de 1 a 12";
            label1.Click += label1_Click;
            // 
            // txtBoxNumero
            // 
            txtBoxNumero.Location = new Point(174, 109);
            txtBoxNumero.Name = "txtBoxNumero";
            txtBoxNumero.Size = new Size(150, 31);
            txtBoxNumero.TabIndex = 2;
            // 
            // btnSair
            // 
            btnSair.Location = new Point(273, 204);
            btnSair.Name = "btnSair";
            btnSair.Size = new Size(112, 34);
            btnSair.TabIndex = 3;
            btnSair.Text = "Sair";
            btnSair.UseVisualStyleBackColor = true;
            btnSair.Click += btnSair_Click;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(96, 301);
            label2.Name = "label2";
            label2.Size = new Size(135, 25);
            label2.TabIndex = 4;
            label2.Text = "Mês digitado é:";
            label2.Click += label2_Click;
            // 
            // lblMes
            // 
            lblMes.AutoSize = true;
            lblMes.Location = new Point(237, 301);
            lblMes.Name = "lblMes";
            lblMes.Size = new Size(0, 25);
            lblMes.TabIndex = 5;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(524, 450);
            Controls.Add(lblMes);
            Controls.Add(label2);
            Controls.Add(btnSair);
            Controls.Add(txtBoxNumero);
            Controls.Add(label1);
            Controls.Add(btnConverso);
            Name = "Form1";
            Text = "Form1";
            Load += Form1_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button btnConverso;
        private Label label1;
        private TextBox txtBoxNumero;
        private Button btnSair;
        private Label label2;
        private Label lblMes;
    }
}
