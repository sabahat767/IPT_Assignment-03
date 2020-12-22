using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeData.HelperClasses
{
    public class Department
    {
        public void AddDepart(string name)
        {
            var db = new Employee_ManagementEntities();

            DEPARTMENT dept = new DEPARTMENT();
            dept.department_name = name;
            

            db.DEPARTMENTS.Add(dept);
            db.SaveChanges();
            db.Dispose();
        }
    }
}
