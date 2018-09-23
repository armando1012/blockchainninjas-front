using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace BCN.SITIO.Clases
{
    public class DescargaArchivos
    {
        public DescargaArchivos(HttpResponse Response)
        {
            this.Response = Response;
        }

        #region Variables_Generales

        private HttpResponse Response;

        private String Unico = DateTime.Today.Year.ToString() + DateTime.Today.Month.ToString().PadLeft(2, '0') + DateTime.Today.Day.ToString().PadLeft(2, '0') +
                                DateTime.Now.TimeOfDay.TotalMilliseconds.ToString().Replace(".", "").Replace(",", "");

        #endregion Variables_Generales

        #region Descarga_Bytes

        public void DescargaArchivoBytes(Byte[] contenido, String mimetype, String nombre_archivo, String extension, List<HttpCookie> cookies = null)
        {
            Response.ClearContent();
            Response.AddHeader("Content-Disposition", "attachment; filename=" + nombre_archivo + Unico + extension);
            Response.AddHeader("Content-Length", contenido.Length.ToString());

            if (cookies != null && cookies.Count > 0)
            {
                foreach (HttpCookie cookie in cookies)
                {
                    Response.AppendCookie(cookie);
                }
            }

            Response.ContentType = mimetype;
            Response.BinaryWrite(contenido);
            Response.End();
        }

        #endregion Descarga_Bytes

        #region Descarga_Archivo

        public void DescargaArchivoRuta(String url, List<HttpCookie> cookies = null)
        {
            FileInfo archivo = new FileInfo(url);
            Response.ClearContent();
            Response.AddHeader("Content-Disposition", "attachment; filename=" + archivo.Name);
            Response.AddHeader("Content-Length", archivo.Length.ToString());

            if (cookies != null && cookies.Count > 0)
            {
                foreach (HttpCookie cookie in cookies)
                {
                    Response.AppendCookie(cookie);
                }
            }

            Response.ContentType = "text/pdf";
            Response.TransmitFile(archivo.FullName);
            Response.End();
        }

        #endregion Descarga_Archivo

    }
}