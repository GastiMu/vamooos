using System.Collections;

namespace Eximo3
{
    public class Arreglo
    {
        private ArrayList lista;

        public Arreglo()
        {
            this.lista = new ArrayList();
            this.lista.Add("Chile");
            this.lista.Add("Colombia");
            this.lista.Add("Argentina");
            this.lista.Add("Peru");

        }

        public ArrayList getLista()
        {
            return this.lista;
        }
    }

}