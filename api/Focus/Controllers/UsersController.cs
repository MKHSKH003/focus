using Focus.Entities;
using Focus.Models;
using Focus.Services.Login;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace Focus.Controllers
{
    [Route("api/users")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private readonly IUsersService _usersService;
        public UsersController(IUsersService usersService)
        {
            _usersService = usersService;
        }

        [HttpGet]
        public IEnumerable<Entities.User> Get()
        {
            return _usersService.Get();
        }

        [HttpPost("update-user-avatar")]
        public void UpdateUserImage(Models.User user)
        {
            _usersService.UpdateUserImage(user);
        }
    }
}
