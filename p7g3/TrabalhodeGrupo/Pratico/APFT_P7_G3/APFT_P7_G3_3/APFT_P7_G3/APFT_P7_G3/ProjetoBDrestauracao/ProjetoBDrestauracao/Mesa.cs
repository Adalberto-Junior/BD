using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoBDrestauracao
{
    public class Mesa
    {
        private String _Numero;
        private String _Estado;
        private String _NumCliente;
       // private String _NomeR;

        public String Numero
        {
            get { return _Numero; }
            set { _Numero = value; }
        }

        public String Estado
        {
            get { return _Estado; }
            set { _Estado = value; }
        }

        public String NumCliente
        {
            get { return _NumCliente; }
            set { _NumCliente = value; }
        }
      /*  public String NomeR
        {
            get { return _NomeR; }
            set { _NomeR = value; }
        }*/

    }
}
