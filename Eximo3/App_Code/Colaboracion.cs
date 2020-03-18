
public class Colaboracion
{
    //atributos de tipo Object
    private Hija hija;
    public Colaboracion()
    {
        this.hija = new Hija();
    }

    public string retorno()
    {
        return this.hija.getNombre();
    }

    public void nombrar(string nom)
    {
        this.hija.setNombre(nom);
    }
}