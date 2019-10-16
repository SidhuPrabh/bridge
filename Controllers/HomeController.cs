using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using bridge.Models;
using bridge.Models.Sql;
using bridge.Models.Professionals;

namespace bridge.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            List<string> CityList = new List<string>();
            LocationSql lSql = new LocationSql();
            ViewData["location"] = lSql.GetCityFromDB("CA");
            return View();
        }

        public IActionResult Search(string txtPro, string selectedCity)
        {
            ProSql proSql = new ProSql();
            ViewData["CategorySearched"] = txtPro;
            ViewData["ProList"] = proSql.GetProListByCategoryFromDB(txtPro, selectedCity);
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
