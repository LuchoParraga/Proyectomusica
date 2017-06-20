using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Proyectomusica.Startup))]
namespace Proyectomusica
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
