//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Manu.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        public Order()
        {
            this.Parts = new HashSet<Part>();
        }
    
        public int OrderID { get; set; }
        public System.DateTime Date { get; set; }
        public string OrderContents { get; set; }
    
        public virtual ICollection<Part> Parts { get; set; }
        public virtual Client Client { get; set; }
    }
}
