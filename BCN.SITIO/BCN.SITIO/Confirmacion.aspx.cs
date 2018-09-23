using BCN.DOCS;
using BCN.SITIO.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCN.SITIO
{
    public partial class Confirmacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) { return; }
        }

        protected void LanzaReporte()
        {
            Person person = null;
            if (Session["PASAPORTE"] != null)
            {
                person = (Person)Session["PASAPORTE"];
            }

            if (person == null) { return; }

            Pasaporte rep = new Pasaporte();
            rep.TxtNumPasaporte.Value = person.noPasaporte;
            rep.TxtApellidos.Value = person.apellidos;
            rep.TxtNombre.Value = person.nombre;
            rep.TxtNacionalidad.Value = person.nacionalidad;
            rep.TxtFechaNacimiento.Value = person.fechaNacimiento;
            rep.TxtCedula.Value = person.cedulaIdentidad;
            rep.TxtSexo.Value = person.Sexo;
            rep.TxtLugarNacimiento.Value = person.lugarNacimiento;
            rep.TxtFechaEmision.Value = person.fechaNacimiento;
            rep.TxtLugarNacimiento.Value = person.lugarNacimiento;
            rep.TxtFechaExpiracion.Value = person.fechaNacimiento;
            rep.TxtOCR.Value = person.ocr;

            Telerik.Reporting.Processing.ReportProcessor reportProcessor = new Telerik.Reporting.Processing.ReportProcessor();

            System.Collections.Hashtable deviceInfo =
                new System.Collections.Hashtable();

            Telerik.Reporting.InstanceReportSource instanceReportSource =
                new Telerik.Reporting.InstanceReportSource();

            instanceReportSource.ReportDocument = rep;

            Telerik.Reporting.Processing.RenderingResult result =
                reportProcessor.RenderReport("PDF", instanceReportSource, deviceInfo);

            byte[] ReportePdf = result.DocumentBytes;

            DescargaArchivos da = new DescargaArchivos(Response);
            da.DescargaArchivoBytes(ReportePdf, Constantes.mimeTypePDF, "Pasaporte", Constantes.pdfextension);            
        }

        protected void BtnDescargar_Click(object sender, EventArgs e)
        {
            LanzaReporte();
        }
    }
}