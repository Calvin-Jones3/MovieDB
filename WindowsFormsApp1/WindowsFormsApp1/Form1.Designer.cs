namespace WindowsFormsApp1
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnSQL = new System.Windows.Forms.Button();
            this.btnStored = new System.Windows.Forms.Button();
            this.richTextBox1 = new System.Windows.Forms.RichTextBox();
            this.SuspendLayout();
            // 
            // btnSQL
            // 
            this.btnSQL.Location = new System.Drawing.Point(12, 12);
            this.btnSQL.Name = "btnSQL";
            this.btnSQL.Size = new System.Drawing.Size(126, 44);
            this.btnSQL.TabIndex = 0;
            this.btnSQL.Text = "Run SQL";
            this.btnSQL.UseVisualStyleBackColor = true;
            this.btnSQL.Click += new System.EventHandler(this.btnSQL_Click);
            // 
            // btnStored
            // 
            this.btnStored.Location = new System.Drawing.Point(12, 62);
            this.btnStored.Name = "btnStored";
            this.btnStored.Size = new System.Drawing.Size(126, 44);
            this.btnStored.TabIndex = 0;
            this.btnStored.Text = "Run Stored";
            this.btnStored.UseVisualStyleBackColor = true;
            this.btnStored.Click += new System.EventHandler(this.btnStored_Click);
            // 
            // richTextBox1
            // 
            this.richTextBox1.Location = new System.Drawing.Point(144, 12);
            this.richTextBox1.Name = "richTextBox1";
            this.richTextBox1.Size = new System.Drawing.Size(681, 453);
            this.richTextBox1.TabIndex = 1;
            this.richTextBox1.Text = "";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(11F, 24F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(839, 477);
            this.Controls.Add(this.richTextBox1);
            this.Controls.Add(this.btnStored);
            this.Controls.Add(this.btnSQL);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnSQL;
        private System.Windows.Forms.Button btnStored;
        private System.Windows.Forms.RichTextBox richTextBox1;
    }
}

