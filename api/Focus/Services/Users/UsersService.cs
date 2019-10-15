using Focus.Entities;
using Focus.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Focus.Services.Login
{
    public class UsersService : IUsersService
    {
        private readonly Context _focusDbContext;
        private readonly ICipherService _cipherService;

        public UsersService(Context focusDbContext, ICipherService cipherService)
        {
            _focusDbContext = focusDbContext;
            _cipherService = cipherService;
        }

        public IEnumerable<Entities.User> Get()
        {
            return _focusDbContext.Users;
        }

        public void UpdateUserImage(Models.User user)
        {
            var selectUser = _focusDbContext.Users.Find(user.Id);
            selectUser.Avatar = user.Avatar;
            _focusDbContext.Users.Update(selectUser);
            _focusDbContext.SaveChanges();
        }

    }
}
