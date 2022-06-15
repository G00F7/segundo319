using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descripción breve de WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
// [System.Web.Script.Services.ScriptService]

public class WebService : System.Web.Services.WebService {

    public int Recursivo(int n)
    {
        if (n == 0) return 0;
        else if (n == 1) return 1;
        else if (n == 2) return 1;
        else return Recursivo(n - 1) + Recursivo(n - 2) + Recursivo(n - 3); 
    }

    public WebService () {

        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string Fibonacci_Estructurada (int n)
    {
        int a = -1;
        int b = 1;
        int c = 0;
        string valor = "";
        for (int i = 0; i < n;  i++)
        {
            int aux = a + b + c;
            a = b;
            b = c;
            c = aux;
            valor +=  c +", ";
        }
        return valor;
    }
    [WebMethod]
    public string Fibonacci_Recursivo(int n)
    {
        string valor = "";
        for (int i = 0; i < n; i++)
        {
            valor += Recursivo(i) + ", ";
        }
        return valor;
    }
}
