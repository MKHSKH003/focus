using Focus.Entities;
using Focus.Models;
using Focus.Services.Login;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace Focus.Controllers
{
    [Route("api/login")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        private readonly ILoginService _loginService;
        public LoginController(ILoginService loginService)
        {
            _loginService = loginService;
        }

        [HttpPost("authenticate-user")]
        public Models.User Authentication(Entities.User user)
        {
            return _loginService.Authentication(user);
        }

        [HttpPost("user-signup")]
        public ActionResult<UserSignup> Signup(Entities.User user)
        {
            return _loginService.Signup(user);
        }
    }
}
