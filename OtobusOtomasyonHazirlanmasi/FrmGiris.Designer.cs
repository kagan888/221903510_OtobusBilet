namespace OtobusOtomasyonHazirlanmasi
{
    partial class FrmGiris
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtSifre = new System.Windows.Forms.TextBox();
            this.txtKullaniciAdi = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.btnYeniCalisan = new System.Windows.Forms.Button();
            this.btnGiris = new System.Windows.Forms.Button();
            this.btnCikis = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtSifre);
            this.groupBox1.Controls.Add(this.txtKullaniciAdi);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.btnYeniCalisan);
            this.groupBox1.Controls.Add(this.btnGiris);
            this.groupBox1.Controls.Add(this.btnCikis);
            this.groupBox1.ForeColor = System.Drawing.Color.Teal;
            this.groupBox1.Location = new System.Drawing.Point(128, 22);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(275, 142);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Kullanıcı İşlemleri :";
            // 
            // txtSifre
            // 
            this.txtSifre.BackColor = System.Drawing.Color.Black;
            this.txtSifre.ForeColor = System.Drawing.Color.White;
            this.txtSifre.Location = new System.Drawing.Point(116, 56);
            this.txtSifre.Name = "txtSifre";
            this.txtSifre.PasswordChar = '*';
            this.txtSifre.Size = new System.Drawing.Size(123, 20);
            this.txtSifre.TabIndex = 6;
            // 
            // txtKullaniciAdi
            // 
            this.txtKullaniciAdi.BackColor = System.Drawing.Color.Black;
            this.txtKullaniciAdi.ForeColor = System.Drawing.Color.White;
            this.txtKullaniciAdi.Location = new System.Drawing.Point(116, 30);
            this.txtKullaniciAdi.Name = "txtKullaniciAdi";
            this.txtKullaniciAdi.Size = new System.Drawing.Size(123, 20);
            this.txtKullaniciAdi.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(7, 64);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(34, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Şifre :";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(7, 30);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(70, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "Kullanıcı Adı :";
            // 
            // btnYeniCalisan
            // 
            this.btnYeniCalisan.BackgroundImage = global::OtobusOtomasyonHazirlanmasi.Properties.Resources.Ekle;
            this.btnYeniCalisan.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnYeniCalisan.Location = new System.Drawing.Point(183, 103);
            this.btnYeniCalisan.Name = "btnYeniCalisan";
            this.btnYeniCalisan.Size = new System.Drawing.Size(85, 33);
            this.btnYeniCalisan.TabIndex = 2;
            this.btnYeniCalisan.Text = "Yeni Çalışan Ekle";
            this.btnYeniCalisan.TextAlign = System.Drawing.ContentAlignment.BottomRight;
            this.btnYeniCalisan.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnYeniCalisan.UseVisualStyleBackColor = true;
            this.btnYeniCalisan.Click += new System.EventHandler(this.btnYeniCalisan_Click);
            // 
            // btnGiris
            // 
            this.btnGiris.BackgroundImage = global::OtobusOtomasyonHazirlanmasi.Properties.Resources.login;
            this.btnGiris.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnGiris.Location = new System.Drawing.Point(94, 103);
            this.btnGiris.Name = "btnGiris";
            this.btnGiris.Size = new System.Drawing.Size(71, 33);
            this.btnGiris.TabIndex = 1;
            this.btnGiris.Text = "Giriş";
            this.btnGiris.TextAlign = System.Drawing.ContentAlignment.BottomRight;
            this.btnGiris.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnGiris.UseVisualStyleBackColor = true;
            this.btnGiris.Click += new System.EventHandler(this.btnGiris_Click);
            // 
            // btnCikis
            // 
            this.btnCikis.BackgroundImage = global::OtobusOtomasyonHazirlanmasi.Properties.Resources.cikis;
            this.btnCikis.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnCikis.Location = new System.Drawing.Point(6, 103);
            this.btnCikis.Name = "btnCikis";
            this.btnCikis.Size = new System.Drawing.Size(71, 33);
            this.btnCikis.TabIndex = 0;
            this.btnCikis.Text = "Çıkış";
            this.btnCikis.TextAlign = System.Drawing.ContentAlignment.BottomRight;
            this.btnCikis.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCikis.UseVisualStyleBackColor = true;
            this.btnCikis.Click += new System.EventHandler(this.btnCikis_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::OtobusOtomasyonHazirlanmasi.Properties.Resources.frmGirisLogo;
            this.pictureBox1.Location = new System.Drawing.Point(13, 22);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(100, 132);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // FrmGiris
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(422, 166);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.groupBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FrmGiris";
            this.Text = "Giriş Formu ";
            this.Load += new System.EventHandler(this.FrmGiris_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.TextBox txtSifre;
        private System.Windows.Forms.TextBox txtKullaniciAdi;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnYeniCalisan;
        private System.Windows.Forms.Button btnGiris;
        private System.Windows.Forms.Button btnCikis;
    }
}