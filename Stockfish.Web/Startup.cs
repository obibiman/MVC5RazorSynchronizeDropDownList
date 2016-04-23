using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Stockfish.Web.Startup))]
namespace Stockfish.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
