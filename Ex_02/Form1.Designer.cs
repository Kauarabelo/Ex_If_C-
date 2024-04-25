namespace Ex_02
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
            btnProcessar = new Button();
            label1 = new Label();
            label2 = new Label();
            txtBox2 = new TextBox();
            txtBox1 = new TextBox();
            lblTxt1 = new Label();
            lblTxt2 = new Label();
            SuspendLayout();
            // 
            // btnProcessar
            // 
            btnProcessar.Location = new Point(244, 172);
            btnProcessar.Name = "btnProcessar";
            btnProcessar.Size = new Size(112, 34);
            btnProcessar.TabIndex = 0;
            btnProcessar.Text = "Processar";
            btnProcessar.UseVisualStyleBackColor = true;
            btnProcessar.Click += btnProcessar_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(231, 9);
            label1.Name = "label1";
            label1.Size = new Size(135, 25);
            label1.TabIndex = 1;
            label1.Text = "Digite 2 valores";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(192, 224);
            label2.Name = "label2";
            label2.Size = new Size(225, 25);
            label2.TabIndex = 2;
            label2.Text = "As ordens dos valores são:";
            label2.Click += label2_Click;
            // 
            // txtBox2
            // 
            txtBox2.Location = new Point(216, 103);
            txtBox2.Name = "txtBox2";
            txtBox2.Size = new Size(150, 31);
            txtBox2.TabIndex = 3;
            // 
            // txtBox1
            // 
            txtBox1.Location = new Point(216, 54);
            txtBox1.Name = "txtBox1";
            txtBox1.Size = new Size(150, 31);
            txtBox1.TabIndex = 4;
            // 
            // lblTxt1
            // 
            lblTxt1.AutoSize = true;
            lblTxt1.Location = new Point(270, 300);
            lblTxt1.Name = "lblTxt1";
            lblTxt1.Size = new Size(0, 25);
            lblTxt1.TabIndex = 5;
            // 
            // lblTxt2
            // 
            lblTxt2.AutoSize = true;
            lblTxt2.Location = new Point(270, 354);
            lblTxt2.Name = "lblTxt2";
            lblTxt2.Size = new Size(0, 25);
            lblTxt2.TabIndex = 6;
            lblTxt2.Click += label4_Click;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(593, 450);
            Controls.Add(lblTxt2);
            Controls.Add(lblTxt1);
            Controls.Add(txtBox1);
            Controls.Add(txtBox2);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(btnProcessar);
            Name = "Form1";
            Text = "Form1";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button btnProcessar;
        private Label label1;
        private Label label2;
        private TextBox txtBox2;
        private TextBox txtBox1;
        private Label lblTxt1;
        private Label lblTxt2;
    }
}
