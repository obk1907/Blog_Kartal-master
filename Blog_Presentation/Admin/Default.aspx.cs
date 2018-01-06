using Blog_BLL;
using Blog_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog_Presentation.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        KategoriService ks = new KategoriService();
        AltKategoriService aks = new AltKategoriService();
        MakaleService ms = new MakaleService();
        BlogEntities ent = new BlogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {




                rptkategoriler.DataSource = ks.GetAllKategoriler();
                rptkategoriler.DataBind();

                rptaltkategoriler.DataSource = aks.GetAllAltKategoriler();
                rptaltkategoriler.DataBind();

                rptmakaleler.DataSource = ms.GetAllMakaleler();
                rptmakaleler.DataBind();
            }


        }

        protected void rptkategoriler_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            if (e.CommandName == "Delete")
            {
                int KategoriID = Convert.ToInt32(e.CommandArgument);
                if (ks.KategoriSil(KategoriID))
                {

                    rptkategoriler.DataSource = ks.GetAllKategoriler();
                    rptkategoriler.DataBind();
                }
                else
                {



                }

            }




        }

        protected void rptaltkategoriler_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            if (e.CommandName == "Delete")
            {
                int AltKategoriID = Convert.ToInt32(e.CommandArgument);
                if (aks.AltKategoriSil(AltKategoriID))
                {

                    rptaltkategoriler.DataSource = aks.GetAllAltKategoriler();
                    rptaltkategoriler.DataBind();
                }
                else
                {



                }

            }







        }

        protected void rptmakaleler_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            if (e.CommandName == "Delete")
            {

                int MakaleID = Convert.ToInt32(e.CommandArgument);
                if (ms.MakaleSil(MakaleID))
                {

                    rptmakaleler.DataSource = ms.GetAllMakaleler();
                    rptmakaleler.DataBind();
                }
                else
                {



                }




            }





        }

        public string GetKategoriNameByID(int ID)
        {

            var sonuc = ent.Kategoriler.Where(X => X.KategoriID == ID).Select(x => x.KategoriAd).FirstOrDefault();
            return sonuc;

        }

        public string GetKullaniciNameByID(int ID)
        {
            var sonuc = ent.Kullanıcılar.Where(X => X.KullaniciID == ID).Select(x => x.KullaniciAd).FirstOrDefault();
            return sonuc;

        }

        public string GetTarih(DateTime tarih)
        {
            string shortdate = tarih.ToShortDateString();
            return shortdate;

        }
    }
}