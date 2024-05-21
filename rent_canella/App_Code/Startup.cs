using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(rent_canella.Startup))]
namespace rent_canella
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
