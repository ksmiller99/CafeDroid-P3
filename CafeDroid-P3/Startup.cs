using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CafeDroid_P3.Startup))]
namespace CafeDroid_P3
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
