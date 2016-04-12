using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.ServiceModel;
using WebApplication1.ServiceReference1;


namespace WebApplication1
{
     
    public partial class WebForm1 : System.Web.UI.Page
    {

        private Color[] Band1and2 = { Color.Black,
               Color.Brown,
              Color.Red,
              Color.Orange,
              Color.Yellow,
              Color.Green,
              Color.Blue,
              Color.Violet,
              Color.Gray,
              Color.White};

        private Color[] Band3 = { Color.Black,
               Color.Brown,
              Color.Red,
              Color.Orange,
              Color.Yellow,
              Color.Green,
              Color.Blue,
              Color.Violet,
              Color.Gray,
              Color.White,
              Color.Gold,
              Color.Silver};

        private Color[] Band4 = {               
              Color.Red,
              Color.Orange,
              Color.Yellow,
              Color.Green,
              Color.Blue,
              Color.Violet,
              Color.Gray,              
              Color.Gold,
              Color.Silver};
    
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdateValue();
        }

        protected void ddlBandColor1_SelectedIndexChanged(object sender, EventArgs e)
        {

            lblColorLabel1.BackColor = Band1and2[ddlBandColor1.SelectedIndex];
            UpdateValue();
        }

        protected void ddlBandColor2_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblColorLabel2.BackColor = Band1and2[ddlBandColor2.SelectedIndex];
            UpdateValue();
        }

        protected void ddlBandColor3_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblColorLabel3.BackColor = Band3[ddlBandColor3.SelectedIndex];
            UpdateValue();
        }

        protected void ddlBandColor4_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblColorLabel4.BackColor = Band4[ddlBandColor4.SelectedIndex];
            UpdateValue();
        }

        public void UpdateValue()
        {
            string BandColor1 = ddlBandColor1.SelectedItem.Text;
            string BandColor2 = ddlBandColor2.SelectedItem.Text;
            string BandColor3 = ddlBandColor3.SelectedItem.Text;
            string BandColor4 = ddlBandColor4.SelectedItem.Text;

            Service1Client client = new Service1Client();

            var v = new OhmValues();
            
            double Value = 0;
            try
            {
               
                v = client.CalculateOhmValue(BandColor1, BandColor3, BandColor3, BandColor4);
                txtResistorValue.Text = v.OhmValue1.ToString();
                txtResistorValueplus.Text = v.OhmValue.ToString();

            }
            catch(Exception ex)
            {

            }
            
        }
      
    }
}