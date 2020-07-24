using NLog;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace RavenToSqlPersistence
{
    static class Program
    {
        static void Main(string[] args)
        {
            InitNLog();

            NServiceBus.Logging.LogManager.Use<NServiceBus.Logging.DefaultFactory>().Level(NServiceBus.Logging.LogLevel.Warn);

            try
            {
                RunAsync().GetAwaiter().GetResult();
                Console.WriteLine("Conversion tool complete. Press Enter to exit.");
            }
            catch (Exception e)
            {
                Console.WriteLine("An error has occurred:");
                Console.WriteLine(e);
                Console.WriteLine();
                Console.WriteLine("Press Enter to exit.");
            }
            finally
            {
                Console.ReadLine();
            }
        }

        private static void InitNLog()
        {
            var config = new NLog.Config.LoggingConfiguration();

            // Targets where to log to: File and Console
            var logfile = new NLog.Targets.FileTarget("logfile") { FileName = "file.txt" };
            var logconsole = new NLog.Targets.ConsoleTarget("logconsole");

            // Rules for mapping loggers to targets            
            config.AddRule(LogLevel.Info, LogLevel.Fatal, logconsole);
            config.AddRule(LogLevel.Debug, LogLevel.Fatal, logfile);

            // Apply config           
            NLog.LogManager.Configuration = config;
        }

        static async Task RunAsync()
        {
            CheckConfiguration();

            var docStore = Configuration.ConfigureRavenDb();
            docStore.Initialize();

            //await SubscriptionConverter.ConvertSubscriptions(docStore);
            //await TimeoutConverter.ConvertTimeouts(docStore);
            await SagaConverter.ConvertSagas(docStore);

            await EndpointProxy.StopAll();
        }

        private static void CheckConfiguration()
        {
            // ReSharper disable once ReturnValueOfPureMethodIsNotUsed
            Configuration.SagaConversions.ToList();
        }
    }
}
