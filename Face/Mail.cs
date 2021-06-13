using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Mail;

namespace Face
{

    public class Mail
    {
        public string Konu { get; set; }
        public string Mesaj { get; set; }
        public int SmtpPort { get; set; }
        public string Host { get; set; }
        public string Kime { get; set; }
        public string Kimden { get; set; }
        public NetworkCredential Credential { get; set; }
        #region MailSifresi
        public string sifre = "789456123010q";// 1 - önce mail şifreni gir.(gönderici mail)
        #endregion
        public Mail(string Mailkonusu, string MailMesaji, string KimeGonderilecek)
        {
            this.Konu = Mailkonusu;
            this.Kime = KimeGonderilecek;
            this.Host = "smtp.gmail.com";
            this.SmtpPort = 587;
            this.Mesaj = MailMesaji;

            
            

            this.Credential = new NetworkCredential("wetout001@gmail.com", sifre);
            this.Kimden = "wetout001@gmail.com";



        } 
        
        public static void Gonder(Mail m)
        {
            MailMessage e_posta = new MailMessage();
            e_posta.From = new MailAddress(m.Kimden); 
            e_posta.To.Add(m.Kime);
            e_posta.IsBodyHtml = true;
            e_posta.Subject = m.Konu;
            e_posta.Body = m.Mesaj;
            SmtpClient smtp = new SmtpClient();
            smtp.EnableSsl = true;
            smtp.Credentials = m.Credential;
            smtp.Port = m.SmtpPort;
            smtp.Host = m.Host;
            smtp.Send(e_posta);
        }// Maili Gönderen Metodmuz
    }
}

