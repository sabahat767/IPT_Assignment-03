using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeData.HelperClasses
{
    public class Employee
    {
        public void AddEmplyee(string first_name, string last_name, string email,string phone_number,int department_id,string salary,int Job_id)
        {
            var db = new Employee_ManagementEntities();

            Tbl_Employee emp = new Tbl_Employee();
            emp.first_name = first_name;
            emp.last_name = last_name;
            emp.email = email;
            emp.phone_number = phone_number;
            emp.department_id = department_id;
            emp.salary = salary;
            emp.Job_id = Job_id;


            db.Tbl_Employee.Add(emp);
            db.SaveChanges();
            db.Dispose();
        }
    }
}
