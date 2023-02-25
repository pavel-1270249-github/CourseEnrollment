using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ADO.NET_Project_1270249
{
    public static class ConnectionHelper
    {
        public static string ConnectionString
        {
            get
            {
                string db = Path.Combine(Path.GetFullPath(@"..\..\"), "CourseEnrollment.mdf");
                return $@"Data Source = (localdb)\mssqllocaldb; AttachDbFileName={db}; Initial Catalog=CourseEnrollment.mdf; Trusted_Connection=True";
            }
        }
    }
}
