using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Drawing;

namespace ohmValue
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }

        public OhmValues CalculateOhmValue(string bandAColor, string bandBColor, string bandCColor, string bandDColor)
        {
            var returnVal = new OhmValues();
            
            try
            {
               
                var colorToDigitMapBand1and2 = new Dictionary<string, int>()
                  {
                     {"black", 0},
                     {"brown", 1},
                     {"red",  2},
                     {"orange",3},
                     {"yellow",4},
                     {"green", 5},
                     {"blue", 6},
                     {"violet",7},
                     {"grey", 8},
                     {"white",9}
                 };
                var colorToDigitMapBand3 = new Dictionary<string, double>()
                  {
                     {"black", 1},
                     {"brown", 10},
                     {"red",  100},
                     {"orange",1000},
                     {"yellow",10000},
                     {"green", 100000},
                     {"blue", 1000000},
                     {"violet",10000000},
                     {"grey", 100000000},
                     {"white",1000000000},
                     {"gold",0.1},
                     {"silver",.01}
                 };
                var colorToDigitMapBand4 = new Dictionary<string, double>()
                  {
                                       
                     {"red",  2},
                     {"orange",3},
                     {"yellow",4},
                     {"green", .5},
                     {"blue", .25},
                     {"violet",.1},
                     {"grey", .05},
                     {"gold",5},
                     {"silver",10}
                
                   };

                
              returnVal.OhmValue1  = Convert.ToInt32(string.Format("{0}{1}", colorToDigitMapBand1and2[bandAColor], colorToDigitMapBand1and2[bandBColor])) * colorToDigitMapBand3[bandCColor] - (colorToDigitMapBand4[bandDColor] / 100);

              returnVal.OhmValue = Convert.ToInt32(string.Format("{0}{1}", colorToDigitMapBand1and2[bandAColor], colorToDigitMapBand1and2[bandBColor])) * colorToDigitMapBand3[bandCColor] + (colorToDigitMapBand4[bandDColor]/100);
               
            }

                

            catch (Exception ex)
            {

            }

            return returnVal;

        }

    }
}
