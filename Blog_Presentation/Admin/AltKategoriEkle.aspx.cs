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
    public partial class AltKategoriEkle : System.Web.UI.Page
    {
        BlogEntities ent = new BlogEntities();
        KategoriService ks = new KategoriService();
        AltKategoriService aks = new AltKategoriService();


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                ddlkategoriler.DataSource = ks.GetKategoriName();
                ddlkategoriler.DataBind();



            }


        }
        public void Temizle()
        {

            txtad.Text = "";
            txtaciklama.Text = "";
            txtad.Focus();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            AltKategoriler k = new AltKategoriler();
            k.AltKategoriAd = txtad.Text;
            k.AltKategoriAciklama = txtaciklama.Text;
            k.KategoriID = ks.GetKategoriIDByKategoriName(ddlkategoriler.SelectedValue.ToString());

            if (txtad.Text.Trim() != "" && txtaciklama.Text.Trim() != "")
            {
                if (aks.AltKategoriEkle(k))
                {
                    //true
                    lblsuccess.Text = "AltKategori başarılı bir şekilde kaydedildi...";
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



    }
}