using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Laboratorio_No._11
{
    public class Alumno : Persona
    {
       public string carnet { get; set; }
        public List<Nota> notas { get; set; }
        

    }
}