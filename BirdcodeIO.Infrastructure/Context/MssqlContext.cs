using Microsoft.EntityFrameworkCore;
using System;

namespace BirdcodeIO.Infrastructure
{
    public class MssqlContext : DbContext
    {

        public DbSet<User> User { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer(@"Data Source=localhost; Initial Catalog=CadastroDB; User Id=sa; Password=abcd.1234");

            }
        }

        protected override void OnModelCreating(ModelBuilder modelbilder)
        {
            base.OnModelCreating(modelbilder);
            modelbilder.Entity<Usuario>(new Usermap().configure);
        }

    }
}
