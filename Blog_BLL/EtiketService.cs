using Blog_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Blog_BLL
{
    public class EtiketService
    {

        static BlogEntities ent = new BlogEntities();

        public List<Etiketler> GetAllEtiketler()
        {

            var sonuc = ent.Etiketler.ToList();
            return sonuc;
        }

        public List<string> GetEtiketName()
        {
            var sonuc = ent.Etiketler.Select(x => x.EtiketAd).ToList();
            return sonuc;

        }

        public static int GetEtiketIDByName(string name)
        {
            var sonuc = ent.Etiketler.Where(x => x.EtiketAd == name).Select(x => x.EtiketID).FirstOrDefault();
            return sonuc;
        }

    }
}
