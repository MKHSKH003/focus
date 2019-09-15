using Focus.Entities;
using Focus.Models;
using System.Collections.Generic;

namespace Focus.Services.Login
{
    public interface IUsersService
    {
        IEnumerable<Entities.User> Get();
        void UpdateUserImage(Models.User user);
    }
}
