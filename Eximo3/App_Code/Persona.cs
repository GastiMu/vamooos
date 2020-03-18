public class Persona
{
    private int id;
    private string nombre;
    private string correo;

    public Persona(int id, string nombre, string correo)
    {
        this.id = id;
        this.nombre = nombre;
        this.correo = correo;
    }

    public string obtenerInfo()
    {
        return "id: " + this.id + ", nombre: " + this.nombre + ", mail: " + this.correo;
    }
}