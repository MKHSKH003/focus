using Focus.Entities;
using Focus.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Focus.Services.Login
{
    public class LoginService : ILoginService
    {
        private readonly Context _FocusDbContext;
        private readonly ICipherService _cipherService;

        public LoginService(Context ticketSystemDbContext, ICipherService cipherService)
        {
            _FocusDbContext = ticketSystemDbContext;
            _cipherService = cipherService;
        }

        public Models.User Authentication(Entities.User user)
        {
            var dbUser = _FocusDbContext.Users.SingleOrDefault(u => u.Name == user.Name && _cipherService.Decrypt(u.Password) == user.Password);

            return dbUser == null ? new Models.User()
                : new Models.User()
                {
                    Id = dbUser.Id,
                    Name = dbUser.Name,
                    Email = dbUser.Email,
                    Avatar = dbUser.Avatar
                };
        }

        public UserSignup Signup(Entities.User user)
        {

            var users = _FocusDbContext.Users;
            var userSignup = new UserSignup();

            if (users.SingleOrDefault(u => u.Name == user.Name) != null)
            {
                userSignup.message = "Name already exists!";
            }
            else
            { 
                var dbNewUser = new Entities.User()
                {
                    Name = user.Name,
                    Password = _cipherService.Encrypt(user.Password),
                    Email = user.Email,
                    Avatar = ""
                };

                _FocusDbContext.Add(dbNewUser);
                _FocusDbContext.SaveChanges();

                userSignup.user = dbNewUser;
            }

            return userSignup;
        }


    }
}
