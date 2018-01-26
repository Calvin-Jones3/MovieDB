using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql;
using MySql.Data.MySqlClient;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        private string myConnectionString = "server=localhost;database=intermedixmoviebackenddb;uid=root;pwd=Password;";
        private MySqlConnection dbcon;

        public Form1()
        {
            InitializeComponent();
        }

        private bool OpenCon()
        {
            dbcon = new MySqlConnection(myConnectionString);
            try
            {
                dbcon.Open();
                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }

        private bool CloseCon()
        {
            try
            {
                dbcon.Close();
                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }

        private List<string> GetFirstShows()
        {
            //write sql to get the first show of each movie
            List<string> results = new List<string>();
            string query = "select m.Title, min(s.StartTime), s.showdate, s.ID" +
                           " from movies m inner join showtimes s" +
                           " on m.ID = s.MovieID" +
                           " group by s.movieid, s.showdate" +
                           " order by Title, showdate ASC;";

            if (OpenCon())
            {
                MySqlCommand cmd = new MySqlCommand(query, dbcon);
                MySqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    string temp = "";
                    for (int i = 0; i < reader.FieldCount; i++)
                        temp += reader[i] + " | ";
                    results.Add(temp);
                }
            }
            return results;
        }

        private List<string> GetHandicapShows()
        {
            List<string> results = new List<string>();
            string query = "CALL `intermedixmoviebackenddb`.`HandicapShows`()";

            if (OpenCon())
            {
                MySqlCommand cmd = new MySqlCommand(query, dbcon);
                MySqlDataReader reader = cmd.ExecuteReader();
                
                while (reader.Read())
                {
                    string temp = "";
                    for (int i = 0; i < reader.FieldCount; i++)
                        temp += reader[i] + " | ";
                    results.Add(temp);
                }
            }
            return results;

        }

        private void btnSQL_Click(object sender, EventArgs e)
        {
            richTextBox1.Text = "List of Each Movies First show each day: \nTitle, ShowTime, Date, MovieID\n\n";
            foreach (string s in GetFirstShows())
                richTextBox1.Text += s + "\n";
        }

        private void btnStored_Click(object sender, EventArgs e)
        {
            richTextBox1.Text = "List of all showings in handicap accessible theaters: \nTitle, ShowTime, Date, MovieID\n\n";
            foreach (string s in GetHandicapShows())
                richTextBox1.Text += s + "\n";
        }
    }
}
