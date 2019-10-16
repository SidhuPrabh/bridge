using bridge.Models.Categories;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;

namespace bridge.Models.Sql
{
    public class CategorySql : SqlCon
    {
        public void InsertCatToDB(Category cat)
        {
            MySqlConnection con = CreateConnection();
            string cmdText = $"INSERT INTO `categories` (category) VALUES (`{cat.category}`)";
            
            MySqlCommand cmd = new MySqlCommand(cmdText, con);
            try
            {
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch(Exception ex)
            {
                System.Console.WriteLine(ex);
            }
        }

        public List<Category> GetCatFromDB()
        {
            MySqlConnection con = this.CreateConnection();
            string cmdText = $"select * from `categories`;";
            MySqlCommand cmd = new MySqlCommand(cmdText, con);
            var result = cmd.ExecuteReader();
            List<Category> CatList = new List<Category>();
            while(result.Read())
            {
                Category c = new Category();
                c.id = Convert.ToUInt32(result["id"]);
                c.category = result["category"].ToString();
                CatList.Add(c);
            }
            con.Close();
            return CatList;
        }

        public void UpdateCatToDB(Category cat)
        {
            MySqlConnection con = CreateConnection();
            string cmdText = $"UPDATE `categories` set `category`='{cat.category}' where id={cat.id};";
            MySqlCommand cmd = new MySqlCommand(cmdText, con);
            try
            {
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch(Exception ex)
            {
                System.Console.WriteLine(ex);
            }
        }
    }
}