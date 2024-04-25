namespace Ex_03
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
            btn1 = new Button();
            lblNumero = new TextBox();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(319, 23);
            label1.Name = "label1";
            label1.Size = new Size(157, 25);
            label1.TabIndex = 0;
            label1.Text = "Digite um número";
            // 
            // btn1
            // 
            btn1.Location = new Point(302, 111);
            btn1.Name = "btn1";
            btn1.Size = new Size(200, 34);
            btn1.TabIndex = 1;
            btn1.Text = "Par ou Impar";
            btn1.UseVisualStyleBackColor = true;
            btn1.Click += btn1_Click;
            // 
            // lblNumero
            // 
            lblNumero.Location = new Point(326, 60);
            lblNumero.Name = "lblNumero";
            lblNumero.Size = new Size(150, 31);
            lblNumero.TabIndex = 2;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 202);
            Controls.Add(lblNumero);
            Controls.Add(btn1);
            Controls.Add(label1);
            Name = "Form1";
            Text = "Form1";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Button btn1;
        private TextBox lblNumero;
    }
}
