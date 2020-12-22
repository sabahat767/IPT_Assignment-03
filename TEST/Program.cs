using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EmployeeData.HelperClasses;
namespace TEST
{
    public class Program
    {
        public static void Main()
        {
            Department dept = new Department();
            dept.AddDepart("HR");
            Job jb = new Job();
            jb.AddJob("CTO", "Rs-300000", "Rs-500000");
            Employee em = new Employee();
            em.AddEmplyee("Jawaria", "Fatima Alvi", "JaweriaAlvi230@gmail.com", "0300xxxxxxx", 1, "50000", 2);
        }
    }
}
