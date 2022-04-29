using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Laboratorio_No._11
{
    public class Universidad
    {
        public string nombre { get; set; }
        public string sede { get; set; }
        public List<Alumno> alumnos { get; set; }
    }
}