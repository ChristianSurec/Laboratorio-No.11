using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laboratorio_No._11
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        static List<Nota> notasTemp = new List<Nota>();
        static List<Alumno> alumnosTemp = new List<Alumno>();
        static List<Universidad> universidades = new List<Universidad>();
        static string carne;
        protected void Page_Load(object sender, EventArgs e)
        {
            string archivo = Server.MapPath("Universidades.json");
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();

            universidades = JsonConvert.DeserializeObject<List<Universidad>>(json);

        }

        protected void Guardar()
        {
            string json = JsonConvert.SerializeObject(universidades);
            string archivo = Server.MapPath("Universidades.json");
            System.IO.File.WriteAllText(archivo, json);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            carne = TextBoxCarné.Text;
            bool encontrado = false;

            foreach (var a in universidades)
            {
                Alumno alumnoEditar = a.alumnos.Find(c => c.carnet == carne);

                if(alumnoEditar != null)
                {
                    TextBoxNombre.Text = alumnoEditar.nombre;
                    TextBoxApellido.Text = alumnoEditar.apellido;
                    encontrado = true;  
                }
            }
            if(!encontrado)
            {
                Response.Write("<script>alert('Mensaje a mostrar')</script>");
                carne = "";
                TextBoxCarné.Text = "";
                TextBoxNombre.Text = "";
                TextBoxApellido.Text = "";
            }
        }

        protected void ButtonActualizar_Click(object sender, EventArgs e)
        {
            foreach(var a in universidades)
            {
                int alumnoEditar = a.alumnos.FindIndex(c => c.carnet == carne);

                    if (alumnoEditar > -1)
                {
                    a.alumnos[alumnoEditar].apellido = TextBoxApellido.Text; 
                    a.alumnos[alumnoEditar].nombre = TextBoxNombre.Text;
                    Guardar();
                }
            }
        }
    }
}