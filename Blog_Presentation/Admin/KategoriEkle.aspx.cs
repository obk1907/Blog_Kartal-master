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
    public partial class KategoriEkle : System.Web.UI.Page
    {
        BlogEntities ent = new BlogEntities();
        KategoriService ks = new KategoriService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

            }




        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Kategoriler k = new Kategoriler();
            k.KategoriAd = txtad.Text;
            k.KategoriAciklama = txtaciklama.Text;

            if (txtad.Text.Trim() != "" && txtaciklama.Text.Trim() != "")
            {
                if (ks.KategoriEkle(k))
                {
                    //true
                    lblsuccess.Text = "Kategori başarılı bir şekilde kaydedildi...";
                    lblalert.Visible = false;

                    Temizle();
                }
                else
                {
                    //false
                    txtad.Focus();
                    lblsuccess.Visible = false;
                    lblalert.Text = "Kayıt Başarısız ...";

                }
            }
            else
            {
                txtad.Focus();
                lblsuccess.Visible = false;
                lblalert.Text = "Boş Geçilemez ...";
            }





        }

        public void Temizle()
        {

            txtad.Text = "";
            txtaciklama.Text = "";
            txtad.Focus();

        }
    }
}