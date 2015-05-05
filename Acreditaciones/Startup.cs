using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Acreditaciones.Startup))]
namespace Acreditaciones
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
