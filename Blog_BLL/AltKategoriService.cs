using Blog_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Blog_BLL
{
    public class AltKategoriService
    {
        BlogEntities ent = new BlogEntities();


        public List<AltKategoriler> GetAllAltKategoriler()
        {

            var sonuc = ent.AltKategoriler.ToList();
            return sonuc;

        }

        public bool AltKategoriEkle(AltKategoriler ak)
        {

            ent.AltKategoriler.Add(ak);

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

        public bool AltKategoriSil(int ID)
        {
            var sonuc = ent.AltKategoriler.Where(x => x.AltKategoriID == ID).FirstOrDefault();
            ent.AltKategoriler.Remove(sonuc);
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

        public bool AltKategoriGuncelle(AltKategoriler k)
        {

            var sonuc = ent.AltKategoriler.Where(x => x.AltKategoriID == k.AltKategoriID).FirstOrDefault();

            sonuc.AltKategoriAd = k.AltKategoriAd;
            sonuc.AltKategoriAciklama = k.AltKategoriAciklama;
            sonuc.KategoriID = k.KategoriID;


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

        public AltKategoriler GetAltKategoriByID(int ID)
        {
            var sonuc = ent.AltKategoriler.Where(x => x.AltKategoriID == ID).FirstOrDefault();
            return sonuc;
        }

        public bool AltKategoriKontrol(string altkategoriname, int ID)
        {

            var sonuc = ent.AltKategoriler.Where(x => x.AltKategoriAd == altkategoriname && x.AltKategoriID != ID).Count();
            if (sonuc > 0) return false;
            return true;

        }

    }
}
