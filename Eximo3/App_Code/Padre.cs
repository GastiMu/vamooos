
abstract public class Padre
{
    private string nombre;
    private string correo;

    public Padre()
    {

    }
    public Padre(string nom, string corr)
    {
        this.nombre = nom;
        this.correo = corr;
    }

    public string getNombre()
    {
        return nombre;
    }

    public string getCorreo()
    {
        return correo;
    }

    public void setNombre(string nom)
    {
        this.nombre = nom;
    }
}