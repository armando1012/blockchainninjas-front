using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BCN.SITIO.Clases
{
    [Serializable]
    public class Person
    {
        public String noPasaporte { get; set; }
        public String apellidos { get; set; }
        public String nombre { get; set; }
        public String nacionalidad { get; set; }
        public String fechaNacimiento { get; set; }
        public String cedulaIdentidad { get; set; }
        public String Sexo { get; set; }
        public String lugarNacimiento { get; set; }
        public String fechaEmision { get; set; }
        public String fechaVencimiento { get; set; }
        public String ocr { get; set; }

    }
}