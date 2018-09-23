using BCN.DOCS;
using BCN.SITIO.Clases;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCN.SITIO
{
    public partial class Default : System.Web.UI.Page
    {
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(typeof(Default));
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) { return; }
        }

        protected void BtnConsultar_Click(object sender, EventArgs e)
        {
            String tipo = TxtTipo.Value.ToString().ToUpper();
            String emisor = TxtPEmisor.Value.ToString().ToUpper();
            String noPassaporte = TxtNoPasaporte.Text.Trim().ToUpper();
            String apellidos = TxtApellidos.Value.ToString().Trim().ToUpper();
            String nombres = TxtNombres.Value.ToString().ToUpper();
            String nacionalidad = TxtNacionalidad.Value.ToString().ToUpper();
            DateTime fechaEmision = DateTime.Parse(fecEmision.Value.ToString().ToUpper());
            DateTime fechaNacimiento = DateTime.Parse(fecEmision.Value.ToString().ToUpper());
            DateTime fechaVencimiento = DateTime.Parse(fecEmision.Value.ToString().ToUpper());


            String diaNacimiento = fechaNacimiento.Day.ToString().PadRight(2, '0');
            String mesNacimientoEspaniol = fechaNacimiento.Date.ToString("MM");
            String mesNacimientoIngles = fechaNacimiento.Date.ToString("MM", CultureInfo.InvariantCulture);
            String anioNacimiento = fechaNacimiento.Year.ToString().Substring(2, 2);
            String mesNacimientoNumero = fechaNacimiento.Month.ToString().PadLeft(2, '0');
            String fechaNacimiento_formated = diaNacimiento + " " + mesNacimientoEspaniol + "/" + mesNacimientoIngles + " " + anioNacimiento;

            String diaVencimiento = fechaVencimiento.Day.ToString().PadRight(2, '0');
            String mesVencimientoEspaniol = fechaVencimiento.Date.ToString("MM");
            String mesVencimientoIngles = fechaVencimiento.Date.ToString("MM", CultureInfo.InvariantCulture);
            String anioVencimiento = fechaVencimiento.Year.ToString().Substring(2, 2);
            String mesVencimientoNumero = fechaVencimiento.Month.ToString().PadLeft(2, '0');
            String fechaVencimiento_formated = diaVencimiento + " " + mesVencimientoEspaniol + "/" + mesVencimientoIngles + " " + anioVencimiento;

            String diaEmision = fechaEmision.Day.ToString().PadRight(2, '0');
            String mesEmisionEspaniol = fechaEmision.Date.ToString("MM");
            String mesEmisionIngles = fechaEmision.Date.ToString("MM", CultureInfo.InvariantCulture);
            String anioEmision = fechaEmision.Year.ToString().Substring(2, 2);
            String mesEmisionNumero = fechaEmision.Month.ToString().PadLeft(2, '0');
            String fechaEmision_formated = diaEmision + " " + mesEmisionEspaniol + "/" + mesEmisionIngles + " " + anioEmision;

            String cedula = TxtCedula.Value.ToString().ToUpper();
            Char sexo = Constantes.SEXO_MASCULINO;
            if (ChkMasculino.Checked)
            {
                sexo = Constantes.SEXO_FEMENINO;
            }
            String lugarNacimiento = TxtLugarNac1.Value;
            String autoridad = TxtAutoridad.Value.Trim().ToUpper();

            String fechaNacimiento_formatedOCR = anioNacimiento + mesNacimientoNumero + diaNacimiento;
            String fechaVencimiento_formatedOCR = anioVencimiento + mesVencimientoNumero + diaVencimiento;

            if (!creaObjetoPasaporte(noPassaporte,
                                 apellidos,
                                 nombres,
                                 nacionalidad,
                                 fechaNacimiento_formated,
                                 cedula,
                                 sexo,
                                 lugarNacimiento,
                                 fechaEmision_formated,
                                 fechaVencimiento_formated,
                                 "6",
                                 "2",
                                 "9",
                                 "10",
                                 fechaNacimiento_formatedOCR,
                                 fechaVencimiento_formatedOCR))
            {
                PnlContenido.Visible = false;
                PnlError.Visible = true;
                return;
            }

            Response.Redirect("~/Biometrico.aspx");
        }

        protected Boolean creaObjetoPasaporte(String numPasaporte, String apellidos,
                                          String nombre, String nacionalidad,
                                          String fechaNacimiento, String cedulaIdentidad,
                                          Char Sexo, String lugarNacimiento,
                                          String fechaEmision, String fechaVencimiento,
                                          String numeroVerificador1,
                                          String numeroVerificador2,
                                          String numeroVerificador3,
                                          String numeroVerificador4,
                                          String fechaNacimiento_formatedOCR,
                                          String fechaVencimiento_formatedOCR)
        {
            try
            {
                String ocr1 = Constantes.TIPO_DOCUMENTO_PASAPORTE + "<" +
                             Constantes.CLAVE_PAIS_MEXICO + apellidos.Replace(" ", "").Trim().ToUpper() + "<<" +
                             nombre;
                ocr1 = ocr1.PadRight(43, '<');

                String ocr2 = numPasaporte + numeroVerificador1 +
                             Constantes.CLAVE_PAIS_MEXICO + fechaNacimiento_formatedOCR + numeroVerificador2 +
                             Sexo.ToString() + fechaVencimiento_formatedOCR + numeroVerificador3 +
                             cedulaIdentidad;

                ocr2 = ocr2.PadRight(41, '<');

                ocr2 += numeroVerificador4;


                String ocr = ocr1 + ocr2;


                Person person = new Person();
                person.noPasaporte = numPasaporte.Trim().ToUpper();
                person.apellidos = apellidos.Trim().ToUpper();
                person.nombre = nombre.Trim().ToUpper();
                person.nacionalidad = nacionalidad.Trim().ToUpper();
                person.fechaNacimiento = fechaNacimiento;
                person.cedulaIdentidad = cedulaIdentidad.Trim().ToUpper();
                person.Sexo = Sexo.ToString().ToUpper();
                person.lugarNacimiento = lugarNacimiento.Trim().ToUpper();
                person.fechaEmision = fechaEmision;
                person.lugarNacimiento = lugarNacimiento.Trim().ToUpper();
                person.fechaVencimiento = fechaVencimiento_formatedOCR;
                person.ocr = ocr;

                Session["PASAPORTE"] = person;
            }
            catch (Exception ex)
            {
                log.Error(ex);
                PnlContenido.Visible = false;
                PnlError.Visible = true;
                return false;
            }

            return true;
        }
    }
}