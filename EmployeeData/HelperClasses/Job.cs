using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeData.HelperClasses
{
    public class Job
    {
        public void AddJob(string job_title,string min_salary,string max_salary)
        {
            var db = new Employee_ManagementEntities();

            Tbl_Job job = new Tbl_Job();
            job.job_title=job_title ;
            job.min_salary = min_salary;
            job.max_salary = max_salary;

            db.Tbl_Job.Add(job);
            db.SaveChanges();
            db.Dispose();
        }
    }
}
