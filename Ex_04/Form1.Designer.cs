namespace Ex_04
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
            groupBox1 = new GroupBox();
            txtBoxNome = new TextBox();
            label1 = new Label();
            groupBox2 = new GroupBox();
            radRosa = new RadioButton();
            radAzul = new RadioButton();
            lblTexto = new Label();
            groupBox3 = new GroupBox();
            groupBox1.SuspendLayout();
            groupBox2.SuspendLayout();
            groupBox3.SuspendLayout();
            SuspendLayout();
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(txtBoxNome);
            groupBox1.Controls.Add(label1);
            groupBox1.Location = new Point(235, 24);
            groupBox1.Name = "groupBox1";
            groupBox1.Size = new Size(326, 113);
            groupBox1.TabIndex = 0;
            groupBox1.TabStop = false;
            // 
            // txtBoxNome
            // 
            txtBoxNome.Location = new Point(56, 65);
            txtBoxNome.Name = "txtBoxNome";
            txtBoxNome.Size = new Size(207, 31);
            txtBoxNome.TabIndex = 4;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(82, 27);
            label1.Name = "label1";
            label1.Size = new Size(146, 25);
            label1.TabIndex = 0;
            label1.Text = "Digite seu nome:";
            label1.Click += label1_Click;
            // 
            // groupBox2
            // 
            groupBox2.Controls.Add(radRosa);
            groupBox2.Controls.Add(radAzul);
            groupBox2.Location = new Point(235, 170);
            groupBox2.Name = "groupBox2";
            groupBox2.Size = new Size(326, 102);
            groupBox2.TabIndex = 1;
            groupBox2.TabStop = false;
            groupBox2.Text = "Escoha uma Cor";
            // 
            // radRosa
            // 
            radRosa.AutoSize = true;
            radRosa.Location = new Point(207, 53);
            radRosa.Name = "radRosa";
            radRosa.Size = new Size(75, 29);
            radRosa.TabIndex = 3;
            radRosa.TabStop = true;
            radRosa.Text = "Rosa";
            radRosa.UseVisualStyleBackColor = true;
            radRosa.CheckedChanged += radRosa_CheckedChanged;
            // 
            // radAzul
            // 
            radAzul.AutoSize = true;
            radAzul.Location = new Point(56, 53);
            radAzul.Name = "radAzul";
            radAzul.Size = new Size(71, 29);
            radAzul.TabIndex = 2;
            radAzul.TabStop = true;
            radAzul.Text = "Azul";
            radAzul.UseVisualStyleBackColor = true;
            radAzul.CheckedChanged += radAzul_CheckedChanged;
            // 
            // lblTexto
            // 
            lblTexto.AutoSize = true;
            lblTexto.Location = new Point(30, 56);
            lblTexto.Name = "lblTexto";
            lblTexto.Size = new Size(0, 25);
            lblTexto.TabIndex = 2;
            // 
            // groupBox3
            // 
            groupBox3.Controls.Add(lblTexto);
            groupBox3.Location = new Point(132, 302);
            groupBox3.Name = "groupBox3";
            groupBox3.Size = new Size(553, 150);
            groupBox3.TabIndex = 3;
            groupBox3.TabStop = false;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 541);
            Controls.Add(groupBox3);
            Controls.Add(groupBox2);
            Controls.Add(groupBox1);
            Name = "Form1";
            Text = "Form1";
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            groupBox2.ResumeLayout(false);
            groupBox2.PerformLayout();
            groupBox3.ResumeLayout(false);
            groupBox3.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private GroupBox groupBox1;
        private Label label1;
        private GroupBox groupBox2;
        private TextBox txtBoxNome;
        private RadioButton radRosa;
        private RadioButton radAzul;
        private Label lblTexto;
        private GroupBox groupBox3;
    }
}
