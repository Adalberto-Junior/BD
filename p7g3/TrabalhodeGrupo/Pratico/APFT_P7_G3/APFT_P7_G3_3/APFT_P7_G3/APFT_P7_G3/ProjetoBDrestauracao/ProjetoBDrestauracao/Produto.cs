using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoBDrestauracao
{
    public class Produto
    {
        private String _Nome;
        private String _Preco;
        private String _Iva;
        private String _QuantiDisp;
        private String _NomeR;


        public String Nome
        {
            get { return _Nome; }
            set { _Nome = value; }
        }

        public String Preco
        {
            get { return _Preco; }
            set { _Preco = value; }
        }

        public String Iva
        {
            get { return _Iva; }
            set { _Iva = value; }
        }
        public String QuantiDisp
        {
            get { return _QuantiDisp; }
            set { _QuantiDisp = value; }
        }

        public String NomeR
        {
            get { return _NomeR; }
            set { _NomeR = value; }
        }


    }
}
