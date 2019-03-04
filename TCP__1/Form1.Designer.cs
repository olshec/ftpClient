namespace TCP__1
{
    partial class Form1
    {
        /// <summary>
        /// Требуется переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Обязательный метод для поддержки конструктора - не изменяйте
        /// содержимое данного метода при помощи редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.button1 = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.textAdress_ = new System.Windows.Forms.TextBox();
            this.textPort_ = new System.Windows.Forms.TextBox();
            this.textLog = new System.Windows.Forms.TextBox();
            this.textPass = new System.Windows.Forms.TextBox();
            this.textCwd = new System.Windows.Forms.TextBox();
            this.GoTo = new System.Windows.Forms.Button();
            this.Back = new System.Windows.Forms.Button();
            this.button8 = new System.Windows.Forms.Button();
            this.textCopy = new System.Windows.Forms.TextBox();
            this.Exit = new System.Windows.Forms.Button();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(12, 128);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(90, 23);
            this.button1.TabIndex = 0;
            this.button1.Text = "Подключиться";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(415, 98);
            this.textBox1.Multiline = true;
            this.textBox1.Name = "textBox1";
            this.textBox1.ReadOnly = true;
            this.textBox1.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.textBox1.Size = new System.Drawing.Size(449, 162);
            this.textBox1.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label1.Location = new System.Drawing.Point(466, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(0, 15);
            this.label1.TabIndex = 4;
            // 
            // textAdress_
            // 
            this.textAdress_.Location = new System.Drawing.Point(112, 15);
            this.textAdress_.Name = "textAdress_";
            this.textAdress_.Size = new System.Drawing.Size(186, 20);
            this.textAdress_.TabIndex = 13;
            this.textAdress_.Text = "ftp.intel.com";
            // 
            // textPort_
            // 
            this.textPort_.Location = new System.Drawing.Point(112, 46);
            this.textPort_.Name = "textPort_";
            this.textPort_.Size = new System.Drawing.Size(100, 20);
            this.textPort_.TabIndex = 14;
            this.textPort_.Text = "21";
            // 
            // textLog
            // 
            this.textLog.Location = new System.Drawing.Point(112, 72);
            this.textLog.Name = "textLog";
            this.textLog.Size = new System.Drawing.Size(100, 20);
            this.textLog.TabIndex = 15;
            this.textLog.Text = "anonymous";
            // 
            // textPass
            // 
            this.textPass.Location = new System.Drawing.Point(112, 98);
            this.textPass.Name = "textPass";
            this.textPass.Size = new System.Drawing.Size(100, 20);
            this.textPass.TabIndex = 16;
            this.textPass.Text = "any@any.any";
            // 
            // textCwd
            // 
            this.textCwd.Location = new System.Drawing.Point(112, 213);
            this.textCwd.Name = "textCwd";
            this.textCwd.Size = new System.Drawing.Size(136, 20);
            this.textCwd.TabIndex = 20;
            // 
            // GoTo
            // 
            this.GoTo.Location = new System.Drawing.Point(12, 212);
            this.GoTo.Name = "GoTo";
            this.GoTo.Size = new System.Drawing.Size(90, 23);
            this.GoTo.TabIndex = 21;
            this.GoTo.Text = "Перейти";
            this.GoTo.UseVisualStyleBackColor = true;
            this.GoTo.Click += new System.EventHandler(this.GoTo_Click);
            // 
            // Back
            // 
            this.Back.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.Back.Location = new System.Drawing.Point(254, 213);
            this.Back.Name = "Back";
            this.Back.Size = new System.Drawing.Size(90, 23);
            this.Back.TabIndex = 22;
            this.Back.Text = "Назад";
            this.Back.UseVisualStyleBackColor = true;
            this.Back.Click += new System.EventHandler(this.Back_Click);
            // 
            // button8
            // 
            this.button8.Location = new System.Drawing.Point(12, 237);
            this.button8.Name = "button8";
            this.button8.Size = new System.Drawing.Size(90, 23);
            this.button8.TabIndex = 23;
            this.button8.Text = "Копировать";
            this.button8.UseVisualStyleBackColor = true;
            this.button8.Click += new System.EventHandler(this.button8_Click);
            // 
            // textCopy
            // 
            this.textCopy.Location = new System.Drawing.Point(112, 240);
            this.textCopy.Name = "textCopy";
            this.textCopy.Size = new System.Drawing.Size(136, 20);
            this.textCopy.TabIndex = 24;
            // 
            // Exit
            // 
            this.Exit.Location = new System.Drawing.Point(112, 128);
            this.Exit.Name = "Exit";
            this.Exit.Size = new System.Drawing.Size(100, 23);
            this.Exit.TabIndex = 27;
            this.Exit.Text = "Выход";
            this.Exit.UseVisualStyleBackColor = true;
            this.Exit.Click += new System.EventHandler(this.Exit_Click);
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(15, 284);
            this.textBox2.Multiline = true;
            this.textBox2.Name = "textBox2";
            this.textBox2.ReadOnly = true;
            this.textBox2.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.textBox2.Size = new System.Drawing.Size(849, 256);
            this.textBox2.TabIndex = 28;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label2.Location = new System.Drawing.Point(466, 47);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(0, 15);
            this.label2.TabIndex = 29;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 18);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(38, 13);
            this.label3.TabIndex = 30;
            this.label3.Text = "Адрес";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 49);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(32, 13);
            this.label4.TabIndex = 31;
            this.label4.Text = "Порт";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 75);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(38, 13);
            this.label5.TabIndex = 32;
            this.label5.Text = "Логин";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(12, 105);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(45, 13);
            this.label6.TabIndex = 33;
            this.label6.Text = "Пароль";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(876, 554);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.Exit);
            this.Controls.Add(this.textCopy);
            this.Controls.Add(this.button8);
            this.Controls.Add(this.Back);
            this.Controls.Add(this.GoTo);
            this.Controls.Add(this.textCwd);
            this.Controls.Add(this.textPass);
            this.Controls.Add(this.textLog);
            this.Controls.Add(this.textPort_);
            this.Controls.Add(this.textAdress_);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.button1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "Form1";
            this.Text = "FTP - клиент. Вариант №4";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textAdress_;
        private System.Windows.Forms.TextBox textPort_;
        private System.Windows.Forms.TextBox textLog;
        private System.Windows.Forms.TextBox textPass;
        private System.Windows.Forms.TextBox textCwd;
        private System.Windows.Forms.Button GoTo;
        private System.Windows.Forms.Button Back;
        private System.Windows.Forms.Button button8;
        private System.Windows.Forms.TextBox textCopy;
        private System.Windows.Forms.Button Exit;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
    }
}

