using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace Laboratorio_No._11
{
    public partial class _Default : Page
    { 
        static List<Alumno> alumnosTemp = new List<Alumno>();
        static List<Nota> notasTemp = new List<Nota>();
        static List<Universidad> universidades = new List<Universidad>();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonIngresarNotas_Click(object sender, EventArgs e)
        {
            Nota nota = new Nota();
            nota.curso = TextBoxCurso.Text;
            nota.punteo = Convert.ToInt32(TextBoxPunteo.Text);
            notasTemp.Add(nota);

            GridView1.DataSource = notasTemp;
            GridView1.DataBind();
        }

        protected void ButtonIngresarAlumno_Click(object sender, EventArgs e)
        {
            Alumno alumno = new Alumno();
            alumno.nombre = TextBoxNombre.Text;
            alumno.apellido = TextBoxApellido.Text;
            alumno.carnet = TextBoxCarne.Text;
            alumno.notas = notasTemp.ToArray().ToList();
            alumnosTemp.Add(alumno);
            notasTemp.Clear();


            
        }
        protected void Guardar()
        {
            string json = JsonConvert.SerializeObject(universidades);           
            string archivo = Server.MapPath("Universidades.json");          
            System.IO.File.WriteAllText(archivo, json);
        }

        protected void ButtonGuardarUniversidad_Click(object sender, EventArgs e)
        {


            Universidad universidad = new Universidad();
            universidad.nombre = DropDownList1.Text;
            universidad.sede = null;
            universidad.alumnos = alumnosTemp.ToArray().ToList();
            universidades.Add(universidad);
            Guardar();

            


        }
    }
}