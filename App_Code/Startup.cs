using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(sims_web.Startup))]
namespace sims_web
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
