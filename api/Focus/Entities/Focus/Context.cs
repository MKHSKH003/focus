using Focus.Models.Configuration;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;

namespace Focus.Entities
{
    public partial class Context : DbContext
    {
        private readonly EnvironmentConfig _environmentConfig;

        public Context(DbContextOptions<Context> options, IOptions<EnvironmentConfig> environmentConfig) : base(options)
        {
            _environmentConfig = environmentConfig.Value;
        }

        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<ExamPaper> ExamPapers { get; set; }
        public virtual DbSet<Grade> Grades { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

            modelBuilder.Entity<User>(entity =>
            {
                entity.ToTable("User", "3XCpN5NUQo");

                entity.Property(e => e.Id)
                    .HasColumnName("ID")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Email)
                   .IsRequired()
                   .HasMaxLength(50)
                   .IsUnicode(false);

                entity.Property(e => e.IsAdmin)
                    .IsRequired()
                    .HasColumnType("bit(1)")
                    .HasDefaultValueSql("b'0'");

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasMaxLength(1000)
                    .IsUnicode(false);

                entity.Property(e => e.Avatar)
                    .IsRequired()
                    .HasMaxLength(1000)
                    .IsUnicode(false);
            });

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