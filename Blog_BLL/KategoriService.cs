using Blog_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Blog_BLL
{
    public class KategoriService
    {
        BlogEntities ent = new BlogEntities();


        public List<Kategoriler> GetAllKategoriler()
        {
            var sonuc = ent.Kategoriler.ToList();
            //var sonuc2 = (from f in ent.Kategoriler select f).ToList();
            return sonuc;
        }

        public bool KategoriEkle(Kategoriler k)
        {

            ent.Kategoriler.Add(k);

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

        public bool KategoriSil(int ID)
        {
            var sonuc = ent.Kategoriler.Where(x => x.KategoriID == ID).FirstOrDefault();
            ent.Kategoriler.Remove(sonuc);
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

        public bool KategoriGuncelle(Kategoriler k)
        {

            var sonuc = ent.Kategoriler.Where(x => x.KategoriID == k.KategoriID).FirstOrDefault();

            sonuc.KategoriAd = k.KategoriAd;
            sonuc.KategoriAciklama = k.KategoriAciklama;


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

        public List<string> GetKategoriName()
        {

            var sonuc = ent.Kategoriler.Select(x => x.KategoriAd).ToList();
            return sonuc;

        }

        public int GetKategoriIDByKategoriName(string kategoriname)
        {

            var sonuc = ent.Kategoriler.Where(x => x.KategoriAd == kategoriname).Select(x => x.KategoriID).FirstOrDefault();
            return sonuc;
        }

        public Kategoriler GetKategoriByID(int ID)
        {

            var sonuc = ent.Kategoriler.Where(x => x.KategoriID == ID).FirstOrDefault();
            return sonuc;


        }

        public bool KategoriKontrol(string kategoriname)
        {

            var sonuc = ent.Kategoriler.Where(x => x.KategoriAd == kategoriname).Count();
            if (sonuc > 0) return false;
            return true;

        }

        public string GetKategoriNameByID(int ID)
        {

            var sonuc = ent.Kategoriler.Where(X => X.KategoriID == ID).Select(x => x.KategoriAd).FirstOrDefault();
            return sonuc;

        }


    }
}
