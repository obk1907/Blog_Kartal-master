using Blog_BLL;
using Blog_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog_Presentation
{
    public partial class Default : System.Web.UI.Page
    {
        KategoriService ks = new KategoriService();
        EtiketService es = new EtiketService();
        MakaleService ms = new MakaleService();

        protected void Page_Load(object sender, EventArgs e)
        {

            



            rptkategoriler.DataSource = ks.GetAllKategoriler();
            rptkategoriler.DataBind();
            rptetiketler.DataSource = es.GetAllEtiketler();
            rptetiketler.DataBind();
            rptmakaleler.DataSource = ms.GetAllMakaleler();
            rptmakaleler.DataBind();

        }



    }
}