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
    public partial class KategoriGuncelle : System.Web.UI.Page
    {
        KategoriService ks = new KategoriService();
        BlogEntities ent = new BlogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["ID"] != null)
            {
                int KategoriID = Convert.ToInt32(Request.QueryString["ID"]);
                if (!IsPostBack)
                {

                    Kategoriler k = ks.GetKategoriByID(KategoriID);
                    txtad.Text = k.KategoriAd;
                    txtaciklama.Text = k.KategoriAciklama;

                }
            }
        }

        protected void btnguncelle_Click(object sender, EventArgs e)
        {

            if (txtad.Text.Trim() != "" && txtaciklama.Text.Trim() != "")
            {
                if (ks.KategoriKontrol(txtad.Text))
                {
                    //güncelleme yap
                    Kategoriler k = new Kategoriler();
                    k.KategoriID = Convert.ToInt32(Request.QueryString["ID"]);
                    k.KategoriAd = txtad.Text;
                    k.KategoriAciklama = txtaciklama.Text;

                    if (ks.KategoriGuncelle(k))
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
                    lblalert.Text = "Aynı isimde kategori zaten var !!!!";
                    txtad.Text = "";
                    txtad.Focus();


                }



            }





        }

    }
}