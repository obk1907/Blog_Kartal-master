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
    public partial class AltKategoriGuncelle : System.Web.UI.Page
    {
        BlogEntities ent = new BlogEntities();
        AltKategoriService aks = new AltKategoriService();
        KategoriService ks = new KategoriService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ID"] != null)
            {
                int AltKategoriID = Convert.ToInt32(Request.QueryString["ID"]);
                if (!IsPostBack)
                {
                    KategoriDoldur();


                    AltKategoriler k = aks.GetAltKategoriByID(AltKategoriID);
                    txtad.Text = k.AltKategoriAd;
                    txtaciklama.Text = k.AltKategoriAciklama;
                    ddlaltkategoriler.SelectedValue = ks.GetKategoriNameByID(k.KategoriID);

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (txtad.Text.Trim() != "" && txtaciklama.Text.Trim() != "")
            {
                if (aks.AltKategoriKontrol(txtad.Text, Convert.ToInt32(Request.QueryString["ID"])))
                {
                    //güncelleme yap
                    AltKategoriler k = new AltKategoriler();
                    k.AltKategoriID = Convert.ToInt32(Request.QueryString["ID"]);
                    k.AltKategoriAd = txtad.Text;
                    k.AltKategoriAciklama = txtaciklama.Text;
                    k.KategoriID = ks.GetKategoriIDByKategoriName(ddlaltkategoriler.SelectedValue);

                    if (aks.AltKategoriGuncelle(k))
                    {

                        lblsuccess.Text = "Güncelleme Başarılı";
                        lblalert.Visible = false;



                        Response.Redirect("../Admin/Default.aspx");
                    }
                    else
                    {
                        lblalert.Text = "Güncelleme Başarısız";
                        lblsuccess.Visible = false;
                        txtad.Focus();
                    }
                }
                else
                {
                    //zaten var uyar
                    lblalert.Text = "Aynı isimde Altkategori zaten var !!!!";
                    txtad.Text = "";
                    txtad.Focus();


                }



            }



        }


        public void KategoriDoldur()
        {

            ddlaltkategoriler.DataSource = ent.Kategoriler.Select(x => x.KategoriAd).ToList();
            ddlaltkategoriler.DataBind();

        }


    }
}