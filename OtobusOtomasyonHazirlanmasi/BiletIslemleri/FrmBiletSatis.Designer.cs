﻿namespace OtobusOtomasyonHazirlanmasi.BiletIslemleri
{
    partial class FrmBiletSatis
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmBiletSatis));
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtKalkisSehirID = new System.Windows.Forms.TextBox();
            this.txtVarisSehirID = new System.Windows.Forms.TextBox();
            this.dgvSonuc = new System.Windows.Forms.DataGridView();
            this.Saat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Plaka = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.BiletTutari = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SeferID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.KoltukSayisi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label4 = new System.Windows.Forms.Label();
            this.txtTarih = new System.Windows.Forms.TextBox();
            this.dtpZaman = new System.Windows.Forms.DateTimePicker();
            this.txtVarisSehirAdi = new System.Windows.Forms.TextBox();
            this.txtKalkisSehirAdi = new System.Windows.Forms.TextBox();
            this.cmbKalkisSehri = new System.Windows.Forms.ComboBox();
            this.cmbVarisSehri = new System.Windows.Forms.ComboBox();
            this.btnSeferGoster = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtMusteriID = new System.Windows.Forms.TextBox();
            this.chckMevcutMusteri = new System.Windows.Forms.CheckBox();
            this.chckAyniBilgi = new System.Windows.Forms.CheckBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.button1 = new System.Windows.Forms.Button();
            this.btnBiletKes = new System.Windows.Forms.Button();
            this.btnOnayla = new System.Windows.Forms.Button();
            this.txtKoltukNo = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.cmbSatisTipi = new System.Windows.Forms.ComboBox();
            this.label12 = new System.Windows.Forms.Label();
            this.cmbIslemTipi = new System.Windows.Forms.ComboBox();
            this.label11 = new System.Windows.Forms.Label();
            this.txtMevcutPara = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.cmbCinsiyet = new System.Windows.Forms.ComboBox();
            this.label9 = new System.Windows.Forms.Label();
            this.txtSoyadi = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtAd = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txtKartNo = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.grpOturmaPlani = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnCikis = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lblMarkaAdi = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.lblPlaka = new System.Windows.Forms.Label();
            this.lblSeferBilgi = new System.Windows.Forms.Label();
            this.tmrKoltukBilgiGuncelleyici = new System.Windows.Forms.Timer(this.components);
            this.bcKoltukBilgiGuncelle = new System.ComponentModel.BackgroundWorker();
            this.biletSolMenu = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.satisIptalContext = new System.Windows.Forms.ToolStripMenuItem();
            this.SatisYapContext = new System.Windows.Forms.ToolStripMenuItem();
            this.RezervasyonIptalContext = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem2 = new System.Windows.Forms.ToolStripMenuItem();
            this.VazgecContext = new System.Windows.Forms.ToolStripMenuItem();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSonuc)).BeginInit();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.biletSolMenu.SuspendLayout();
            this.SuspendLayout();
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.groupBox1);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.txtMusteriID);
            this.splitContainer1.Panel2.Controls.Add(this.chckMevcutMusteri);
            this.splitContainer1.Panel2.Controls.Add(this.chckAyniBilgi);
            this.splitContainer1.Panel2.Controls.Add(this.groupBox3);
            this.splitContainer1.Panel2.Controls.Add(this.txtKoltukNo);
            this.splitContainer1.Panel2.Controls.Add(this.label13);
            this.splitContainer1.Panel2.Controls.Add(this.cmbSatisTipi);
            this.splitContainer1.Panel2.Controls.Add(this.label12);
            this.splitContainer1.Panel2.Controls.Add(this.cmbIslemTipi);
            this.splitContainer1.Panel2.Controls.Add(this.label11);
            this.splitContainer1.Panel2.Controls.Add(this.txtMevcutPara);
            this.splitContainer1.Panel2.Controls.Add(this.label10);
            this.splitContainer1.Panel2.Controls.Add(this.cmbCinsiyet);
            this.splitContainer1.Panel2.Controls.Add(this.label9);
            this.splitContainer1.Panel2.Controls.Add(this.txtSoyadi);
            this.splitContainer1.Panel2.Controls.Add(this.label8);
            this.splitContainer1.Panel2.Controls.Add(this.txtAd);
            this.splitContainer1.Panel2.Controls.Add(this.label7);
            this.splitContainer1.Panel2.Controls.Add(this.txtKartNo);
            this.splitContainer1.Panel2.Controls.Add(this.label6);
            this.splitContainer1.Panel2.Controls.Add(this.label5);
            this.splitContainer1.Panel2.Controls.Add(this.grpOturmaPlani);
            this.splitContainer1.Panel2.Controls.Add(this.groupBox2);
            this.splitContainer1.Size = new System.Drawing.Size(1022, 537);
            this.splitContainer1.SplitterDistance = 399;
            this.splitContainer1.TabIndex = 0;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtKalkisSehirID);
            this.groupBox1.Controls.Add(this.txtVarisSehirID);
            this.groupBox1.Controls.Add(this.dgvSonuc);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtTarih);
            this.groupBox1.Controls.Add(this.dtpZaman);
            this.groupBox1.Controls.Add(this.txtVarisSehirAdi);
            this.groupBox1.Controls.Add(this.txtKalkisSehirAdi);
            this.groupBox1.Controls.Add(this.cmbKalkisSehri);
            this.groupBox1.Controls.Add(this.cmbVarisSehri);
            this.groupBox1.Controls.Add(this.btnSeferGoster);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox1.ForeColor = System.Drawing.Color.Green;
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(399, 537);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Sefer Ara :";
            // 
            // txtKalkisSehirID
            // 
            this.txtKalkisSehirID.Location = new System.Drawing.Point(189, 20);
            this.txtKalkisSehirID.Name = "txtKalkisSehirID";
            this.txtKalkisSehirID.ReadOnly = true;
            this.txtKalkisSehirID.Size = new System.Drawing.Size(21, 20);
            this.txtKalkisSehirID.TabIndex = 13;
            this.txtKalkisSehirID.Visible = false;
            // 
            // txtVarisSehirID
            // 
            this.txtVarisSehirID.Location = new System.Drawing.Point(190, 51);
            this.txtVarisSehirID.Name = "txtVarisSehirID";
            this.txtVarisSehirID.ReadOnly = true;
            this.txtVarisSehirID.Size = new System.Drawing.Size(21, 20);
            this.txtVarisSehirID.TabIndex = 12;
            this.txtVarisSehirID.Visible = false;
            // 
            // dgvSonuc
            // 
            this.dgvSonuc.AllowUserToAddRows = false;
            this.dgvSonuc.AllowUserToDeleteRows = false;
            this.dgvSonuc.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvSonuc.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Saat,
            this.Plaka,
            this.BiletTutari,
            this.SeferID,
            this.KoltukSayisi});
            this.dgvSonuc.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgvSonuc.Location = new System.Drawing.Point(3, 165);
            this.dgvSonuc.Name = "dgvSonuc";
            this.dgvSonuc.ReadOnly = true;
            this.dgvSonuc.Size = new System.Drawing.Size(393, 369);
            this.dgvSonuc.TabIndex = 11;
            this.dgvSonuc.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvSonuc_CellDoubleClick);
            // 
            // Saat
            // 
            this.Saat.DataPropertyName = "Saat";
            this.Saat.HeaderText = "Saat";
            this.Saat.Name = "Saat";
            this.Saat.ReadOnly = true;
            // 
            // Plaka
            // 
            this.Plaka.DataPropertyName = "Plaka";
            this.Plaka.HeaderText = "Otobüs Plaka";
            this.Plaka.Name = "Plaka";
            this.Plaka.ReadOnly = true;
            // 
            // BiletTutari
            // 
            this.BiletTutari.DataPropertyName = "BiletTutari";
            this.BiletTutari.HeaderText = "Ücret";
            this.BiletTutari.Name = "BiletTutari";
            this.BiletTutari.ReadOnly = true;
            // 
            // SeferID
            // 
            this.SeferID.DataPropertyName = "SeferID";
            this.SeferID.HeaderText = "";
            this.SeferID.Name = "SeferID";
            this.SeferID.ReadOnly = true;
            // 
            // KoltukSayisi
            // 
            this.KoltukSayisi.DataPropertyName = "KoltukSayisi";
            this.KoltukSayisi.HeaderText = "";
            this.KoltukSayisi.Name = "KoltukSayisi";
            this.KoltukSayisi.ReadOnly = true;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(3, 165);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(82, 13);
            this.label4.TabIndex = 10;
            this.label4.Text = "Mevcut Seferler";
            // 
            // txtTarih
            // 
            this.txtTarih.Location = new System.Drawing.Point(67, 77);
            this.txtTarih.Name = "txtTarih";
            this.txtTarih.Size = new System.Drawing.Size(117, 20);
            this.txtTarih.TabIndex = 9;
            // 
            // dtpZaman
            // 
            this.dtpZaman.Location = new System.Drawing.Point(224, 83);
            this.dtpZaman.Name = "dtpZaman";
            this.dtpZaman.Size = new System.Drawing.Size(121, 20);
            this.dtpZaman.TabIndex = 8;
            this.dtpZaman.ValueChanged += new System.EventHandler(this.dtpZaman_ValueChanged);
            // 
            // txtVarisSehirAdi
            // 
            this.txtVarisSehirAdi.Location = new System.Drawing.Point(67, 50);
            this.txtVarisSehirAdi.Name = "txtVarisSehirAdi";
            this.txtVarisSehirAdi.Size = new System.Drawing.Size(117, 20);
            this.txtVarisSehirAdi.TabIndex = 7;
            // 
            // txtKalkisSehirAdi
            // 
            this.txtKalkisSehirAdi.Location = new System.Drawing.Point(67, 20);
            this.txtKalkisSehirAdi.Name = "txtKalkisSehirAdi";
            this.txtKalkisSehirAdi.Size = new System.Drawing.Size(117, 20);
            this.txtKalkisSehirAdi.TabIndex = 6;
            // 
            // cmbKalkisSehri
            // 
            this.cmbKalkisSehri.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbKalkisSehri.FormattingEnabled = true;
            this.cmbKalkisSehri.Location = new System.Drawing.Point(224, 19);
            this.cmbKalkisSehri.Name = "cmbKalkisSehri";
            this.cmbKalkisSehri.Size = new System.Drawing.Size(121, 21);
            this.cmbKalkisSehri.TabIndex = 5;
            this.cmbKalkisSehri.SelectedIndexChanged += new System.EventHandler(this.cmbKalkisSehri_SelectedIndexChanged);
            // 
            // cmbVarisSehri
            // 
            this.cmbVarisSehri.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbVarisSehri.FormattingEnabled = true;
            this.cmbVarisSehri.Location = new System.Drawing.Point(224, 49);
            this.cmbVarisSehri.Name = "cmbVarisSehri";
            this.cmbVarisSehri.Size = new System.Drawing.Size(121, 21);
            this.cmbVarisSehri.TabIndex = 4;
            this.cmbVarisSehri.SelectedIndexChanged += new System.EventHandler(this.cmbVarisSehri_SelectedIndexChanged);
            // 
            // btnSeferGoster
            // 
            this.btnSeferGoster.BackgroundImage = global::OtobusOtomasyonHazirlanmasi.Properties.Resources.Ara;
            this.btnSeferGoster.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnSeferGoster.Location = new System.Drawing.Point(116, 135);
            this.btnSeferGoster.Name = "btnSeferGoster";
            this.btnSeferGoster.Size = new System.Drawing.Size(93, 23);
            this.btnSeferGoster.TabIndex = 3;
            this.btnSeferGoster.Text = "Sefer Göster ";
            this.btnSeferGoster.TextAlign = System.Drawing.ContentAlignment.BottomRight;
            this.btnSeferGoster.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnSeferGoster.UseVisualStyleBackColor = true;
            this.btnSeferGoster.Click += new System.EventHandler(this.btnSeferGoster_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(11, 84);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(37, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Tarih :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(11, 57);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(36, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Varış :";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(11, 27);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(41, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Kalkış :";
            // 
            // txtMusteriID
            // 
            this.txtMusteriID.BackColor = System.Drawing.SystemColors.MenuText;
            this.txtMusteriID.ForeColor = System.Drawing.SystemColors.Info;
            this.txtMusteriID.Location = new System.Drawing.Point(546, 156);
            this.txtMusteriID.Name = "txtMusteriID";
            this.txtMusteriID.ReadOnly = true;
            this.txtMusteriID.Size = new System.Drawing.Size(21, 20);
            this.txtMusteriID.TabIndex = 32;
            this.txtMusteriID.Visible = false;
            // 
            // chckMevcutMusteri
            // 
            this.chckMevcutMusteri.AutoSize = true;
            this.chckMevcutMusteri.ForeColor = System.Drawing.Color.DarkRed;
            this.chckMevcutMusteri.Location = new System.Drawing.Point(350, 133);
            this.chckMevcutMusteri.Name = "chckMevcutMusteri";
            this.chckMevcutMusteri.Size = new System.Drawing.Size(105, 17);
            this.chckMevcutMusteri.TabIndex = 30;
            this.chckMevcutMusteri.Text = "Mevcut Müsteri :";
            this.chckMevcutMusteri.UseVisualStyleBackColor = true;
            this.chckMevcutMusteri.CheckedChanged += new System.EventHandler(this.chckMevcutMusteri_CheckedChanged);
            // 
            // chckAyniBilgi
            // 
            this.chckAyniBilgi.AutoSize = true;
            this.chckAyniBilgi.ForeColor = System.Drawing.Color.DarkRed;
            this.chckAyniBilgi.Location = new System.Drawing.Point(482, 133);
            this.chckAyniBilgi.Name = "chckAyniBilgi";
            this.chckAyniBilgi.Size = new System.Drawing.Size(113, 17);
            this.chckAyniBilgi.TabIndex = 31;
            this.chckAyniBilgi.Text = "Aynı Bilgileri Kullan";
            this.chckAyniBilgi.UseVisualStyleBackColor = true;
            this.chckAyniBilgi.CheckedChanged += new System.EventHandler(this.chckAyniBilgi_CheckedChanged);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.button1);
            this.groupBox3.Controls.Add(this.btnBiletKes);
            this.groupBox3.Controls.Add(this.btnOnayla);
            this.groupBox3.ForeColor = System.Drawing.Color.Green;
            this.groupBox3.Location = new System.Drawing.Point(324, 482);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(285, 53);
            this.groupBox3.TabIndex = 29;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "İşlemler  İnfo :";
            // 
            // button1
            // 
            this.button1.BackgroundImage = global::OtobusOtomasyonHazirlanmasi.Properties.Resources.BiletIptal;
            this.button1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.button1.ForeColor = System.Drawing.Color.Green;
            this.button1.Location = new System.Drawing.Point(102, 19);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 27;
            this.button1.Text = "İptal";
            this.button1.TextAlign = System.Drawing.ContentAlignment.BottomRight;
            this.button1.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.button1.UseVisualStyleBackColor = true;
            // 
            // btnBiletKes
            // 
            this.btnBiletKes.BackgroundImage = global::OtobusOtomasyonHazirlanmasi.Properties.Resources.raporal;
            this.btnBiletKes.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnBiletKes.ForeColor = System.Drawing.Color.Green;
            this.btnBiletKes.Location = new System.Drawing.Point(204, 19);
            this.btnBiletKes.Name = "btnBiletKes";
            this.btnBiletKes.Size = new System.Drawing.Size(75, 23);
            this.btnBiletKes.TabIndex = 28;
            this.btnBiletKes.Text = "Bilet Kes";
            this.btnBiletKes.TextAlign = System.Drawing.ContentAlignment.BottomRight;
            this.btnBiletKes.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnBiletKes.UseVisualStyleBackColor = true;
            this.btnBiletKes.Click += new System.EventHandler(this.btnBiletKes_Click);
            // 
            // btnOnayla
            // 
            this.btnOnayla.BackgroundImage = global::OtobusOtomasyonHazirlanmasi.Properties.Resources.Onayla;
            this.btnOnayla.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnOnayla.ForeColor = System.Drawing.Color.Green;
            this.btnOnayla.Location = new System.Drawing.Point(0, 19);
            this.btnOnayla.Name = "btnOnayla";
            this.btnOnayla.Size = new System.Drawing.Size(75, 23);
            this.btnOnayla.TabIndex = 26;
            this.btnOnayla.Text = "Onayla ";
            this.btnOnayla.TextAlign = System.Drawing.ContentAlignment.BottomRight;
            this.btnOnayla.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnOnayla.UseVisualStyleBackColor = true;
            this.btnOnayla.Click += new System.EventHandler(this.btnOnayla_Click);
            // 
            // txtKoltukNo
            // 
            this.txtKoltukNo.Location = new System.Drawing.Point(423, 423);
            this.txtKoltukNo.Name = "txtKoltukNo";
            this.txtKoltukNo.ReadOnly = true;
            this.txtKoltukNo.Size = new System.Drawing.Size(50, 20);
            this.txtKoltukNo.TabIndex = 25;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.ForeColor = System.Drawing.Color.Teal;
            this.label13.Location = new System.Drawing.Point(353, 430);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(60, 13);
            this.label13.TabIndex = 24;
            this.label13.Text = "Koltuk No :";
            // 
            // cmbSatisTipi
            // 
            this.cmbSatisTipi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbSatisTipi.FormattingEnabled = true;
            this.cmbSatisTipi.Items.AddRange(new object[] {
            "Kart",
            "Nakit"});
            this.cmbSatisTipi.Location = new System.Drawing.Point(423, 388);
            this.cmbSatisTipi.Name = "cmbSatisTipi";
            this.cmbSatisTipi.Size = new System.Drawing.Size(121, 21);
            this.cmbSatisTipi.TabIndex = 23;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.ForeColor = System.Drawing.Color.Teal;
            this.label12.Location = new System.Drawing.Point(357, 396);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(56, 13);
            this.label12.TabIndex = 22;
            this.label12.Text = "Satış Tipi :";
            // 
            // cmbIslemTipi
            // 
            this.cmbIslemTipi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbIslemTipi.FormattingEnabled = true;
            this.cmbIslemTipi.Items.AddRange(new object[] {
            "Satis",
            "Rezervasyon"});
            this.cmbIslemTipi.Location = new System.Drawing.Point(423, 351);
            this.cmbIslemTipi.Name = "cmbIslemTipi";
            this.cmbIslemTipi.Size = new System.Drawing.Size(121, 21);
            this.cmbIslemTipi.TabIndex = 21;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.ForeColor = System.Drawing.Color.Teal;
            this.label11.Location = new System.Drawing.Point(357, 359);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(57, 13);
            this.label11.TabIndex = 20;
            this.label11.Text = "İşlem Tipi :";
            // 
            // txtMevcutPara
            // 
            this.txtMevcutPara.Location = new System.Drawing.Point(423, 266);
            this.txtMevcutPara.Name = "txtMevcutPara";
            this.txtMevcutPara.ReadOnly = true;
            this.txtMevcutPara.Size = new System.Drawing.Size(117, 20);
            this.txtMevcutPara.TabIndex = 19;
            this.txtMevcutPara.TextChanged += new System.EventHandler(this.txtMevcutPara_TextChanged);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.ForeColor = System.Drawing.Color.Teal;
            this.label10.Location = new System.Drawing.Point(347, 269);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(67, 13);
            this.label10.TabIndex = 18;
            this.label10.Text = "Kredi Tutari :";
            this.label10.Click += new System.EventHandler(this.label10_Click);
            // 
            // cmbCinsiyet
            // 
            this.cmbCinsiyet.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbCinsiyet.FormattingEnabled = true;
            this.cmbCinsiyet.Items.AddRange(new object[] {
            "Bay",
            "Bayan"});
            this.cmbCinsiyet.Location = new System.Drawing.Point(423, 308);
            this.cmbCinsiyet.Name = "cmbCinsiyet";
            this.cmbCinsiyet.Size = new System.Drawing.Size(121, 21);
            this.cmbCinsiyet.TabIndex = 17;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.ForeColor = System.Drawing.Color.Teal;
            this.label9.Location = new System.Drawing.Point(365, 313);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(49, 13);
            this.label9.TabIndex = 16;
            this.label9.Text = "Cinsiyet :";
            // 
            // txtSoyadi
            // 
            this.txtSoyadi.Location = new System.Drawing.Point(423, 224);
            this.txtSoyadi.Name = "txtSoyadi";
            this.txtSoyadi.Size = new System.Drawing.Size(117, 20);
            this.txtSoyadi.TabIndex = 15;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.ForeColor = System.Drawing.Color.Teal;
            this.label8.Location = new System.Drawing.Point(365, 231);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(43, 13);
            this.label8.TabIndex = 14;
            this.label8.Text = "Soyad :";
            // 
            // txtAd
            // 
            this.txtAd.Location = new System.Drawing.Point(423, 189);
            this.txtAd.Name = "txtAd";
            this.txtAd.Size = new System.Drawing.Size(117, 20);
            this.txtAd.TabIndex = 12;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.ForeColor = System.Drawing.Color.Teal;
            this.label7.Location = new System.Drawing.Point(373, 196);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(26, 13);
            this.label7.TabIndex = 11;
            this.label7.Text = "Ad :";
            // 
            // txtKartNo
            // 
            this.txtKartNo.Location = new System.Drawing.Point(423, 156);
            this.txtKartNo.Name = "txtKartNo";
            this.txtKartNo.ReadOnly = true;
            this.txtKartNo.Size = new System.Drawing.Size(117, 20);
            this.txtKartNo.TabIndex = 10;
            this.txtKartNo.TextChanged += new System.EventHandler(this.txtKartNo_TextChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.ForeColor = System.Drawing.Color.Teal;
            this.label6.Location = new System.Drawing.Point(323, 163);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(79, 13);
            this.label6.TabIndex = 3;
            this.label6.Text = "Kart Numarası :";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.ForeColor = System.Drawing.Color.Teal;
            this.label5.Location = new System.Drawing.Point(321, 107);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(76, 13);
            this.label5.TabIndex = 2;
            this.label5.Text = "Müşteri Bilgileri";
            // 
            // grpOturmaPlani
            // 
            this.grpOturmaPlani.Dock = System.Windows.Forms.DockStyle.Left;
            this.grpOturmaPlani.ForeColor = System.Drawing.Color.Green;
            this.grpOturmaPlani.Location = new System.Drawing.Point(0, 100);
            this.grpOturmaPlani.Name = "grpOturmaPlani";
            this.grpOturmaPlani.Size = new System.Drawing.Size(314, 437);
            this.grpOturmaPlani.TabIndex = 1;
            this.grpOturmaPlani.TabStop = false;
            this.grpOturmaPlani.Text = "Oturma Plani : ";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnCikis);
            this.groupBox2.Controls.Add(this.pictureBox1);
            this.groupBox2.Controls.Add(this.lblMarkaAdi);
            this.groupBox2.Controls.Add(this.label16);
            this.groupBox2.Controls.Add(this.label15);
            this.groupBox2.Controls.Add(this.label14);
            this.groupBox2.Controls.Add(this.lblPlaka);
            this.groupBox2.Controls.Add(this.lblSeferBilgi);
            this.groupBox2.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox2.ForeColor = System.Drawing.Color.Green;
            this.groupBox2.Location = new System.Drawing.Point(0, 0);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(619, 100);
            this.groupBox2.TabIndex = 0;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Sefer Bilgileri :";
            // 
            // btnCikis
            // 
            this.btnCikis.BackgroundImage = global::OtobusOtomasyonHazirlanmasi.Properties.Resources.CikisIcon;
            this.btnCikis.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnCikis.Location = new System.Drawing.Point(544, 71);
            this.btnCikis.Name = "btnCikis";
            this.btnCikis.Size = new System.Drawing.Size(75, 23);
            this.btnCikis.TabIndex = 19;
            this.btnCikis.Text = "Çıkış";
            this.btnCikis.TextAlign = System.Drawing.ContentAlignment.BottomRight;
            this.btnCikis.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCikis.UseVisualStyleBackColor = true;
            this.btnCikis.Click += new System.EventHandler(this.btnCikis_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(516, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(100, 50);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 18;
            this.pictureBox1.TabStop = false;
            // 
            // lblMarkaAdi
            // 
            this.lblMarkaAdi.AutoSize = true;
            this.lblMarkaAdi.ForeColor = System.Drawing.Color.DarkGreen;
            this.lblMarkaAdi.Location = new System.Drawing.Point(355, 23);
            this.lblMarkaAdi.Name = "lblMarkaAdi";
            this.lblMarkaAdi.Size = new System.Drawing.Size(0, 13);
            this.lblMarkaAdi.TabIndex = 17;
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.ForeColor = System.Drawing.Color.DarkRed;
            this.label16.Location = new System.Drawing.Point(57, 23);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(88, 13);
            this.label16.TabIndex = 16;
            this.label16.Text = "Nerden -Nereye :";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.ForeColor = System.Drawing.Color.DarkRed;
            this.label15.Location = new System.Drawing.Point(256, 23);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(80, 13);
            this.label15.TabIndex = 15;
            this.label15.Text = "Otobus Marka :";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.ForeColor = System.Drawing.Color.DarkRed;
            this.label14.Location = new System.Drawing.Point(57, 64);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(91, 13);
            this.label14.TabIndex = 14;
            this.label14.Text = "Otobus Plaka No:";
            // 
            // lblPlaka
            // 
            this.lblPlaka.AutoSize = true;
            this.lblPlaka.ForeColor = System.Drawing.Color.DarkGreen;
            this.lblPlaka.Location = new System.Drawing.Point(166, 64);
            this.lblPlaka.Name = "lblPlaka";
            this.lblPlaka.Size = new System.Drawing.Size(0, 13);
            this.lblPlaka.TabIndex = 13;
            // 
            // lblSeferBilgi
            // 
            this.lblSeferBilgi.AutoSize = true;
            this.lblSeferBilgi.ForeColor = System.Drawing.Color.DarkGreen;
            this.lblSeferBilgi.Location = new System.Drawing.Point(166, 23);
            this.lblSeferBilgi.Name = "lblSeferBilgi";
            this.lblSeferBilgi.Size = new System.Drawing.Size(0, 13);
            this.lblSeferBilgi.TabIndex = 12;
            // 
            // tmrKoltukBilgiGuncelleyici
            // 
            this.tmrKoltukBilgiGuncelleyici.Interval = 1000;
            this.tmrKoltukBilgiGuncelleyici.Tick += new System.EventHandler(this.tmrKoltukBilgiGuncelleyici_Tick);
            // 
            // bcKoltukBilgiGuncelle
            // 
            this.bcKoltukBilgiGuncelle.DoWork += new System.ComponentModel.DoWorkEventHandler(this.bcKoltukBilgiGuncelle_DoWork);
            // 
            // biletSolMenu
            // 
            this.biletSolMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.satisIptalContext,
            this.SatisYapContext,
            this.RezervasyonIptalContext,
            this.toolStripMenuItem2,
            this.VazgecContext});
            this.biletSolMenu.Name = "biletSolMenu";
            this.biletSolMenu.Size = new System.Drawing.Size(163, 114);
            // 
            // satisIptalContext
            // 
            this.satisIptalContext.Name = "satisIptalContext";
            this.satisIptalContext.Size = new System.Drawing.Size(162, 22);
            this.satisIptalContext.Text = "Satış İptal";
            this.satisIptalContext.Click += new System.EventHandler(this.satisIptalContext_Click);
            // 
            // SatisYapContext
            // 
            this.SatisYapContext.Name = "SatisYapContext";
            this.SatisYapContext.Size = new System.Drawing.Size(162, 22);
            this.SatisYapContext.Text = "Satış Yap";
            this.SatisYapContext.Click += new System.EventHandler(this.SatisYapContext_Click);
            // 
            // RezervasyonIptalContext
            // 
            this.RezervasyonIptalContext.Name = "RezervasyonIptalContext";
            this.RezervasyonIptalContext.Size = new System.Drawing.Size(162, 22);
            this.RezervasyonIptalContext.Text = "Rezervasyon Iptal";
            this.RezervasyonIptalContext.Click += new System.EventHandler(this.RezervasyonIptalContext_Click);
            // 
            // toolStripMenuItem2
            // 
            this.toolStripMenuItem2.Name = "toolStripMenuItem2";
            this.toolStripMenuItem2.Size = new System.Drawing.Size(162, 22);
            this.toolStripMenuItem2.Text = "___";
            // 
            // VazgecContext
            // 
            this.VazgecContext.Name = "VazgecContext";
            this.VazgecContext.Size = new System.Drawing.Size(162, 22);
            this.VazgecContext.Text = "Vazgeç";
            this.VazgecContext.Click += new System.EventHandler(this.VazgecContext_Click);
            // 
            // FrmBiletSatis
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1022, 537);
            this.Controls.Add(this.splitContainer1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FrmBiletSatis";
            this.Text = "FrmBiletSatis";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.FrmBiletSatis_Load);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            this.splitContainer1.Panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSonuc)).EndInit();
            this.groupBox3.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.biletSolMenu.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dgvSonuc;
        private System.Windows.Forms.DataGridViewTextBoxColumn Saat;
        private System.Windows.Forms.DataGridViewTextBoxColumn Plaka;
        private System.Windows.Forms.DataGridViewTextBoxColumn BiletTutari;
        private System.Windows.Forms.DataGridViewTextBoxColumn SeferID;
        private System.Windows.Forms.DataGridViewTextBoxColumn KoltukSayisi;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtTarih;
        private System.Windows.Forms.DateTimePicker dtpZaman;
        private System.Windows.Forms.TextBox txtVarisSehirAdi;
        private System.Windows.Forms.TextBox txtKalkisSehirAdi;
        private System.Windows.Forms.ComboBox cmbKalkisSehri;
        private System.Windows.Forms.ComboBox cmbVarisSehri;
        private System.Windows.Forms.Button btnSeferGoster;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnBiletKes;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btnOnayla;
        private System.Windows.Forms.TextBox txtKoltukNo;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.ComboBox cmbSatisTipi;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.ComboBox cmbIslemTipi;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtMevcutPara;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.ComboBox cmbCinsiyet;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtSoyadi;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtAd;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtKartNo;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.GroupBox grpOturmaPlani;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Timer tmrKoltukBilgiGuncelleyici;
        private System.ComponentModel.BackgroundWorker bcKoltukBilgiGuncelle;
        private System.Windows.Forms.ContextMenuStrip biletSolMenu;
        private System.Windows.Forms.ToolStripMenuItem satisIptalContext;
        private System.Windows.Forms.ToolStripMenuItem SatisYapContext;
        private System.Windows.Forms.ToolStripMenuItem RezervasyonIptalContext;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem2;
        private System.Windows.Forms.ToolStripMenuItem VazgecContext;
        private System.Windows.Forms.TextBox txtKalkisSehirID;
        private System.Windows.Forms.TextBox txtVarisSehirID;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lblMarkaAdi;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label lblPlaka;
        private System.Windows.Forms.Label lblSeferBilgi;
        private System.Windows.Forms.CheckBox chckMevcutMusteri;
        private System.Windows.Forms.CheckBox chckAyniBilgi;
        private System.Windows.Forms.TextBox txtMusteriID;
        private System.Windows.Forms.Button btnCikis;
    }
}