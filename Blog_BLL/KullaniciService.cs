using Blog_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Blog_BLL
{
    public class KullaniciService
    {
        BlogEntities ent = new BlogEntities();

        public bool KullaniciKontrol(string kullaniciadi)
        {

            var sonuc = ent.Kullanıcılar.Where(x => x.KullaniciEmail == kullaniciadi).Count();
            if (sonuc > 0)
            {
                //kullanıcı varsa
                //  return "<script>alert('Bu Kullanıcı zaten kayıtlı !!!');</ script > ";
                return false;
            }
            else
            {
                //kayıt işlemi
                return true;
            }



        }

        public bool KullaniciEkle(Kullanıcılar k)
        {

            ent.Kullanıcılar.Add(k);
            try
            {
                ent.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {

                string mesaj = ex.Message;
            }
            return false;



        }

        public bool KullaniciSil(int ID)
        {
            var sonuc = ent.Kullanıcılar.Where(x => x.KullaniciID == ID).FirstOrDefault();
            ent.Kullanıcılar.Remove(sonuc);
            try
            {
                ent.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {

                string mesaj = ex.Message;
            }
            return false;
        }

        public bool KullaniciGuncelle(Kullanıcılar k)
        {
            var sonuc = ent.Kullanıcılar.Where(x => x.KullaniciID == k.KullaniciID).FirstOrDefault();


            sonuc.KullaniciSifre = k.KullaniciSifre;
            sonuc.KullaniciSoyad = k.KullaniciSoyad;
            sonuc.KullaniciTelefon = k.KullaniciTelefon;
            sonuc.KullaniciAdmin = k.KullaniciAdmin;
            sonuc.KullaniciAd = k.KullaniciAd;


            try
            {
                ent.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {

                string mesaj = ex.Message;
            }
            return false;

        }

        public List<string> GetKullaniciName()
        {

            var sonuc = ent.Kullanıcılar.Select(x => x.KullaniciAd).ToList();
            return sonuc;



        }

        public int GetKullaniciIDByName(string kullaniciad)
        {

            var sonuc = ent.Kullanıcılar.Where(x => x.KullaniciAd == kullaniciad).Select(x => x.KullaniciID).FirstOrDefault();
            return sonuc;



        }





    }
}
