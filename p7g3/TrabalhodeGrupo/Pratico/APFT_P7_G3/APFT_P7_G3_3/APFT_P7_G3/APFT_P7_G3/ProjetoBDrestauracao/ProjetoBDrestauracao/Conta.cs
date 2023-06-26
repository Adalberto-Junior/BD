using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoBDrestauracao
{
    public class Conta
    {
        private String _CodigoTalao;
        private String _Numero;
        private String _NIF;
        private String _DataC;
        private String _QuantiVend;
        private String _Valor_Total;
        private String _valor_Base;
        private String _Iva;
        private String _Endereco_Restaurante;

        public String CodigoTalao
        {
            get { return _CodigoTalao; }
            set { _CodigoTalao = value; }
        }

        public String Numero
        {
            get { return _Numero; }
            set { _Numero = value; }
        }

        public String NIF
        {
            get { return _NIF; }
            set { _NIF = value; }
        }

        public String DataC
        {
            get { return _DataC; }
            set { _DataC = value; }
        }

        public String QuantiVend
        {
            get { return _QuantiVend; }
            set { _QuantiVend = value; }
        }

        public String Valor_Total
        {
            get { return _Valor_Total; }
            set { _Valor_Total = value; }
        }

        public String valor_Base
        {
            get { return _valor_Base; }
            set { _valor_Base = value; }
        }

        public String Iva
        {
            get { return _Iva; }
            set { _Iva = value; }
        }
        public String Endereco_Restaurante
        {
            get { return _Endereco_Restaurante; }
            set { _Endereco_Restaurante = value; }
        }
    }
}
