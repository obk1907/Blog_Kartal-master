using Blog_BLL;
using Blog_DAL.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog_Presentation.Admin
{
    public partial class MakaleEkle : System.Web.UI.Page
    {
        KategoriService ks = new KategoriService();
        KullaniciService kus = new KullaniciService();
        EtiketService es = new EtiketService();
        MakaleService ms = new MakaleService();
        BlogEntities ent = new BlogEntities();
        public static string kayityeri = "C:\\Users\\burak\\OneDrive\\Masaüstü\\Blog_Kartal-master\\Blog_Presentation\\images\\";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {


            }
            dropdoldur();
        }

        public void dropdoldur()
        {
            ddlkategorilerlist.DataSource = ks.GetKategoriName();
            ddlkategorilerlist.DataBind();
            ddlkullanicilar.DataSource = kus.GetKullaniciName();
            ddlkullanicilar.DataBind();


        }

        protected void btnkaydet_Click(object sender, EventArgs e)
        {
            if (txtbaslik.Text.Trim() != "" && txticerik.Text.Trim() != "" && txtonyazi.Text.Trim() != "")
            {
                if (fukapak.HasFile)
                {
                    Makaleler m = new Makaleler();
                    #region Properties
                    m.KategoriID = ks.GetKategoriIDByKategoriName(ddlkategorilerlist.SelectedValue);
                    m.UserID = kus.GetKullaniciIDByName(ddlkullanicilar.SelectedValue);
                    if (chcaktifmi.Checked) { m.MakaleAktifmi = true; }
                    else { m.MakaleAktifmi = false; }
                    m.MakaleBaslik = txtbaslik.Text;
                    m.MakaleIcerik = txticerik.Text;
                    m.MakaleOkunmaSayisi = 0;
                    m.MakaleOnYazi = txtonyazi.Text;
                    m.MakaleTarihi = Convert.ToDateTime(txttarih.Text);
                    m.MakaleKapakResimUrl = kayityeri + fukapak.PostedFile.FileName;
                    // m.EtiketID = 1;
                    m.Silindi = false;
                    #endregion

                    if (ms.MakaleEkle(m))
                    {
                        lblsuccess.Text = "Makale Kayıt Edildi...";
                        Temizle();
                        Response.Redirect("MakaleEtiket.aspx");
                    }
                    else
                    {
                        lblalert.Text = "Hata Oluştu, Makale Kayıt Edilemedi !!!!";
                    }


                }
                else
                {
                    lblalert.Text = "Dosya Seçin ve Yükleyin";
                }
            }


        }

        public void Temizle()
        {
            txtbaslik.Text = "";
            txticerik.Text = "";
            txtonyazi.Text = "";
            txtokunmasayisi.Text = "0";
            txttarih.Text = DateTime.Now.ToShortDateString();

        }
    }
}