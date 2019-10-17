using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace Focus.scafold
{
    public partial class _3XCpN5NUQoContext : DbContext
    {
        public _3XCpN5NUQoContext()
        {
        }

        public _3XCpN5NUQoContext(DbContextOptions<_3XCpN5NUQoContext> options)
            : base(options)
        {
        }

        public virtual DbSet<ExamPaper> ExamPaper { get; set; }
        public virtual DbSet<Grade> Grade { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseMySQL("Server=remotemysql.com;Database=3XCpN5NUQo;Uid=3XCpN5NUQo;Pwd=SSbigxgXcu;SSL Mode=None;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ExamPaper>(entity =>
            {
                entity.ToTable("ExamPaper", "3XCpN5NUQo");

                entity.HasIndex(e => e.GradeId)
                    .HasName("FK_ExamPaper_Grade");

                entity.Property(e => e.Id)
                    .HasColumnName("ID")
                    .HasColumnType("int(11)");

                entity.Property(e => e.GradeId)
                    .HasColumnName("GradeID")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Url)
                    .IsRequired()
                    .HasMaxLength(1000)
                    .IsUnicode(false);

                entity.HasOne(d => d.Grade)
                    .WithMany(p => p.ExamPaper)
                    .HasForeignKey(d => d.GradeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ExamPaper_Grade");
            });

            modelBuilder.Entity<Grade>(entity =>
            {
                entity.ToTable("Grade", "3XCpN5NUQo");

                entity.Property(e => e.Id)
                    .HasColumnName("ID")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Description)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });
        }
    }
}
