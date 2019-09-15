using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace Focus.scafold
{
    public partial class EGiOq46G3gContext : DbContext
    {
        public EGiOq46G3gContext()
        {
        }

        public EGiOq46G3gContext(DbContextOptions<EGiOq46G3gContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Focus> Focus { get; set; }
        public virtual DbSet<Location> Location { get; set; }
        public virtual DbSet<User> User { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseMySQL("Server=remotemysql.com;Database=EGiOq46G3g;Uid=EGiOq46G3g;Pwd=8t1wpPYtkZ;SSL Mode=None;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Focus>(entity =>
            {
                entity.ToTable("Focus", "EGiOq46G3g");

                entity.HasIndex(e => e.AddedByUserId)
                    .HasName("FK_Focus_User");

                entity.HasIndex(e => e.LocationId)
                    .HasName("FK_Focus_Location");

                entity.Property(e => e.Id)
                    .HasColumnName("ID")
                    .HasColumnType("int(11)");

                entity.Property(e => e.AddedByUserId)
                    .HasColumnName("AddedByUserID")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Loads).HasColumnType("int(11)");

                entity.Property(e => e.LocationId)
                    .HasColumnName("LocationID")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.AddedByUser)
                    .WithMany(p => p.Focus)
                    .HasForeignKey(d => d.AddedByUserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Focus_User");

                entity.HasOne(d => d.Location)
                    .WithMany(p => p.Focus)
                    .HasForeignKey(d => d.LocationId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Focus_Location");
            });

            modelBuilder.Entity<Location>(entity =>
            {
                entity.ToTable("Location", "EGiOq46G3g");

                entity.Property(e => e.Id)
                    .HasColumnName("ID")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Province)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.ToTable("User", "EGiOq46G3g");

                entity.HasIndex(e => e.PositionId)
                    .HasName("FK_User_Position");

                entity.Property(e => e.Id)
                    .HasColumnName("ID")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasMaxLength(1000)
                    .IsUnicode(false);

                entity.Property(e => e.PositionId)
                    .HasColumnName("PositionID")
                    .HasColumnType("int(11)");
            });
        }
    }
}
