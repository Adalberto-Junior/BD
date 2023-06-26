using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoBDrestauracao
{
    public class Empregado
    {

        private String _NumFuncio;
        private String _Nome;
        private String _NIF;
        private String _Endereco;
        private String _Telefone;
        private String _Salario;
        private String _NomeR;
  
        public String NumFuncio {
            get { return _NumFuncio; }
            set { _NumFuncio = value; } 
        }

        public String Nome {
            get { return _Nome; }
            set { _Nome = value; }
        }

        public String NIF {
            get { return _NIF; }
            set { _NIF = value; }
        }
        public String Endereco {
            get { return _Endereco; }
            set { _Endereco = value; }
        }

        public String Telefone {
            get { return _Telefone; }
            set { _Telefone = value; }
        }

        public String Salario {
            get { return _Salario; }
            set { _Salario = value; }
        }

        public String NomeR {
            get { return _NomeR; }
            set { _NomeR = value; }
        }
    }
}
