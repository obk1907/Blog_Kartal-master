using Blog_BLL;
using Blog_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog_Presentation.Admin
{
    public partial class MakaleEtiket : System.Web.UI.Page
    {
        EtiketService es = new EtiketService();
        MakaleService ms = new MakaleService();
        static BlogEntities ent = new BlogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                ddletiketler.DataSource = es.GetEtiketName();
                ddletiketler.DataBind();
            }
            return;

        }
        static int deger = MakaleService.GetTopMakale().MakaleID;
        [WebMethod]
        public static string EtiketKayit(string etiket)
        {

            var makale = ent.Makaleler.Where(x => x.MakaleID == deger).FirstOrDefault();
            makale.EtiketID = EtiketService.GetEtiketIDByName(etiket);

            try
            {
                ent.SaveChanges();
                return "Makale ile Etiket İlişkilendirildi.";

            }
            catch (Exception ex)
            {

                string mesaj = ex.Message;
            }
            return "Hata Oluştu.....";

        }

        protected void ddletiketler_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtetiket.Text = ddletiketler.SelectedValue;
        }
    }
}