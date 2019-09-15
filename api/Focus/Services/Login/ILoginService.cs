using Focus.Entities;
using Focus.Models;
using System.Collections.Generic;

namespace Focus.Services.Login
{
    public interface ILoginService
    {
        Models.User Authentication(Entities.User user);
        UserSignup Signup(Entities.User user);
    }
}
