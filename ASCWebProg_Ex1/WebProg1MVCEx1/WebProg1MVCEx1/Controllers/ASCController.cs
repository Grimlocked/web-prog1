using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebProg1MVCEx1.Controllers
{
    public class ASCController : Controller
    {
        // GET: ASC
        public string Index()
        {
            return "This is my default action...";
        }

        // 
        // GET: /ASC/Welcome/ 

        public string Welcome(string name = "Dull Boy", int numTimes = 0)
        {
            return HttpUtility.HtmlEncode($"Hello {name}, NumTimes is: {numTimes}");
        }
    }
}