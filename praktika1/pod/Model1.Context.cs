﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace praktika1.pod
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class strahovyaKompaniya : DbContext
    {
        public strahovyaKompaniya()
            : base("name=strahovyaKompaniya")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Appoiment> Appoiment { get; set; }
        public virtual DbSet<Branch> Branch { get; set; }
        public virtual DbSet<City> City { get; set; }
        public virtual DbSet<Client> Client { get; set; }
        public virtual DbSet<Contract> Contract { get; set; }
        public virtual DbSet<ContractBMC> ContractBMC { get; set; }
        public virtual DbSet<Employee> Employee { get; set; }
        public virtual DbSet<MedicalCenter> MedicalCenter { get; set; }
        public virtual DbSet<Payment> Payment { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
    }
}
