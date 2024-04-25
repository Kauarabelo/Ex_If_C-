namespace Ex_05
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
            label1 = new Label();
            label2 = new Label();
            txtAltura = new TextBox();
            radMasculino = new RadioButton();
            radFeminino = new RadioButton();
            groupBox1 = new GroupBox();
            groupBox2 = new GroupBox();
            lblPesoIdeal = new Label();
            groupBox1.SuspendLayout();
            groupBox2.SuspendLayout();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(143, 46);
            label1.Name = "label1";
            label1.Size = new Size(204, 25);
            label1.TabIndex = 0;
            label1.Text = "Descubra seu peso ideal";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(115, 97);
            label2.Name = "label2";
            label2.Size = new Size(68, 25);
            label2.TabIndex = 1;
            label2.Text = "Altura: ";
            // 
            // txtAltura
            // 
            txtAltura.Location = new Point(179, 97);
            txtAltura.Name = "txtAltura";
            txtAltura.Size = new Size(150, 31);
            txtAltura.TabIndex = 2;
            // 
            // radMasculino
            // 
            radMasculino.AutoSize = true;
            radMasculino.Location = new Point(20, 30);
            radMasculino.Name = "radMasculino";
            radMasculino.Size = new Size(117, 29);
            radMasculino.TabIndex = 3;
            radMasculino.TabStop = true;
            radMasculino.Text = "Masculino";
            radMasculino.UseVisualStyleBackColor = true;
            radMasculino.CheckedChanged += radMasculino_CheckedChanged;
            // 
            // radFeminino
            // 
            radFeminino.AutoSize = true;
            radFeminino.Location = new Point(20, 65);
            radFeminino.Name = "radFeminino";
            radFeminino.Size = new Size(110, 29);
            radFeminino.TabIndex = 4;
            radFeminino.TabStop = true;
            radFeminino.Text = "Feminino";
            radFeminino.UseVisualStyleBackColor = true;
            radFeminino.CheckedChanged += radFeminino_CheckedChanged;
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(radMasculino);
            groupBox1.Controls.Add(radFeminino);
            groupBox1.Location = new Point(95, 157);
            groupBox1.Name = "groupBox1";
            groupBox1.Size = new Size(300, 108);
            groupBox1.TabIndex = 5;
            groupBox1.TabStop = false;
            groupBox1.Text = "Sexo";
            // 
            // groupBox2
            // 
            groupBox2.Controls.Add(lblPesoIdeal);
            groupBox2.Location = new Point(95, 281);
            groupBox2.Name = "groupBox2";
            groupBox2.Size = new Size(300, 93);
            groupBox2.TabIndex = 6;
            groupBox2.TabStop = false;
            groupBox2.Text = "Peso Ideal";
            // 
            // lblPesoIdeal
            // 
            lblPesoIdeal.AutoSize = true;
            lblPesoIdeal.Location = new Point(33, 41);
            lblPesoIdeal.Name = "lblPesoIdeal";
            lblPesoIdeal.Size = new Size(0, 25);
            lblPesoIdeal.TabIndex = 0;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(484, 453);
            Controls.Add(groupBox2);
            Controls.Add(groupBox1);
            Controls.Add(txtAltura);
            Controls.Add(label2);
            Controls.Add(label1);
            Name = "Form1";
            Text = "Form1";
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            groupBox2.ResumeLayout(false);
            groupBox2.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Label label2;
        private TextBox txtAltura;
        private RadioButton radMasculino;
        private RadioButton radFeminino;
        private GroupBox groupBox1;
        private GroupBox groupBox2;
        private Label lblPesoIdeal;
    }
}
