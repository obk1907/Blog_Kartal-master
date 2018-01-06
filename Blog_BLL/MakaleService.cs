using Blog_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Blog_BLL
{
    public class MakaleService
    {
        EtiketService es = new EtiketService();
        static BlogEntities ent = new BlogEntities();

        public List<Makaleler> GetAllMakaleler()
        {

            var sonuc = ent.Makaleler.ToList();
            return sonuc;

        }

        public Makaleler GetMakaleByID(int ID)
        {

            var sonuc = ent.Makaleler.Where(x => x.MakaleID == ID).FirstOrDefault();
            return sonuc;

        }

        public bool MakaleEkle(Makaleler m)
        {
            ent.Makaleler.Add(m);
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

        public bool MakaleSil(int ID)
        {
            var sonuc = ent.Makaleler.Where(x => x.MakaleID == ID).FirstOrDefault();
            ent.Makaleler.Remove(sonuc);
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

        public bool MakaleGuncelle(Makaleler k)
        {

            var sonuc = ent.Makaleler.Where(x => x.MakaleID == k.MakaleID).FirstOrDefault();

            sonuc.MakaleBaslik = k.MakaleBaslik;
            sonuc.MakaleAktifmi = k.MakaleAktifmi;
            sonuc.MakaleIcerik = k.MakaleIcerik;
            sonuc.MakaleKapakResimUrl = k.MakaleKapakResimUrl;
            sonuc.MakaleOkunmaSayisi = k.MakaleOkunmaSayisi;
            sonuc.MakaleOnYazi = k.MakaleOnYazi;
            sonuc.MakaleTarihi = k.MakaleTarihi;
            sonuc.UserID = k.UserID;
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

        public static Makaleler GetTopMakale()
        {

            var sonuc = ent.Makaleler.OrderByDescending(x => x.MakaleID).Take(1).FirstOrDefault();
            return sonuc;

        }


    }
}
