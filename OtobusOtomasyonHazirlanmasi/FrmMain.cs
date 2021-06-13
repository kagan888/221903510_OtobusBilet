using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace OtobusOtomasyonHazirlanmasi
{
    public partial class FrmMain : Form
    {
        public FrmMain()
        {
            InitializeComponent();
        }
        public static Entity.Calisan calisan = null;//Oturum acan kullanıcı bilgileri

        private void FrmMain_Load(object sender, EventArgs e)
        {
            this.Hide();
            FrmGiris frm = new FrmGiris();

            if (frm.ShowDialog() == DialogResult.OK)
            {

                this.Show();
                YetkiyeGoreMenuGoster();
            }
            else
                Application.Exit();
        }

        private void YetkiyeGoreMenuGoster()
        {
            if (!calisan.Yoneticimi)
            {
                mnSeferIslemleri.Visible = false;
                mnSubeIslemleri.Visible = false;
                mnPersonelIslemleri.Visible = false;
                mnOtobusIslemleri.Visible = false;
                mnsRaporlar.Visible = false;
                mnMusteriIslemleri.Visible = false;
                mnMarkaIslemleri.Visible = false;
                mnMasrafIslemleri.Visible = false;
                mnSehir.Visible = false;
            }
        }

        private void FrmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (calisan != null)
            {
                Entity.PersonelGirisCikis cikisbilgileri = new Entity.PersonelGirisCikis();
                cikisbilgileri.PersonelID = FrmMain.calisan.PersonelID;
                cikisbilgileri.IslemTipi = false;
                Face.PersonelGirisCikis.PersonelGirisCikisEkle(cikisbilgileri);
            }
        }

        private void mnSubeIslemleri_Click(object sender, EventArgs e)
        {
            SubeIslemleri.FrmSubeIslemleri frm = new SubeIslemleri.FrmSubeIslemleri();
            FormAcikmi(frm);
        }
        private void FormAcikmi(Form AcilacakForm)
        {
            bool acikmi = false;
            for (int i = 0; i < this.MdiChildren.Length; i++)
            {
                if (AcilacakForm.Name == MdiChildren[i].Name)
                {
                    this.MdiChildren[i].Focus();
                    acikmi = true;
                }
            }
            if (acikmi == false)
            {
                AcilacakForm.MdiParent = this;
                AcilacakForm.Show();
            }
            else
            {
                AcilacakForm.Dispose();
            }
        }

        private void mnsCikis_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void mnCalisanIslemleri_Click(object sender, EventArgs e)
        {
            CalisanIslemleri.FrmYeniCalisan frm = new CalisanIslemleri.FrmYeniCalisan();
            FormAcikmi(frm);
        }

        private void sehirIslemleriToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SehirIslemleri.FrmSehir frm = new SehirIslemleri.FrmSehir();
            FormAcikmi(frm);
        }

        private void mnSeferIslemleri_Click(object sender, EventArgs e)
        {
            SeferIslemleri.FrmSeferIslemleri frm = new SeferIslemleri.FrmSeferIslemleri();
            FormAcikmi(frm);
        }

        private void mnOtobusIslemleri_Click(object sender, EventArgs e)
        {
            OtobusIslemleri.FrmOtobusIslemleri frm = new OtobusIslemleri.FrmOtobusIslemleri();
            FormAcikmi(frm);
        }

        private void otobusMasraflariToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OtobusMasrafIslemleri.FrmOtobusMasraflar frm = new OtobusMasrafIslemleri.FrmOtobusMasraflar();
            FormAcikmi(frm);
        }

        private void masrafTipTanımlamalarıToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MasrafTipIslemleri.FrmMasrafTip frm = new MasrafTipIslemleri.FrmMasrafTip();
            FormAcikmi(frm);
        }

        private void mnMarkaIslemleri_Click(object sender, EventArgs e)
        {
            MarkaIslemleri.FrmMarkaIslemleri frm = new MarkaIslemleri.FrmMarkaIslemleri();
            FormAcikmi(frm);
        }

        private void mnCalisanTipIslem_Click(object sender, EventArgs e)
        {
            CalisanTipIslemleri.FrmCalisanTipIslemleri frm = new CalisanTipIslemleri.FrmCalisanTipIslemleri();
            FormAcikmi(frm);
        }

        private void mnMusteriIslemleri_Click(object sender, EventArgs e)
        {
            MusteriIslemleri.FrmMusteriIslemleri frm = new MusteriIslemleri.FrmMusteriIslemleri();
            FormAcikmi(frm);
        }

        private void mnBiletSatis_Click(object sender, EventArgs e)
        {
            BiletIslemleri.FrmBiletSatis frm = new BiletIslemleri.FrmBiletSatis();
            FormAcikmi(frm);
        }
    }
}
