//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SMS.DAL.Common.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblClass
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public Nullable<int> DepartmentId { get; set; }
        public Nullable<int> BranchId { get; set; }
    
        public virtual tblBranch tblBranch { get; set; }
        public virtual tblDepartment tblDepartment { get; set; }
    }
}
