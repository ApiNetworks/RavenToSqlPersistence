using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NServiceBus;
using NServiceBus.Persistence.Sql;
using Raven.Client.Document;


static class Configuration
{
    public const string SubscriptionDocumentsStartWith = "Subscriptions/";
    public const string TimeoutDocumentsStartWith = "TimeoutDatas/";

    public static IEnumerable<SagaConversion> SagaConversions
    {
        get
        {
            yield return new SagaConversion(
                documentPrefix: "ProgramOccurrenceSaga/",
                correlationId: "ProgramOccurrenceGuid",
                tableName: "NSB7_ProgramOccurrenceSaga");

            yield return new SagaConversion(
                documentPrefix: "ContractOccurrenceSaga/",
                correlationId: "ContractOccurrenceGuid",
                tableName: "NSB7_ContractOccurrenceSaga");

            yield return new SagaConversion(
                documentPrefix: "DraftContractSaga/",
                correlationId: "DraftContractGuid",
                tableName: "NSB7_DraftContractSaga");

            yield return new SagaConversion(
                documentPrefix: "DraftProgramSaga/",
                correlationId: "DraftProgramGuid",
                tableName: "NSB7_DraftProgramSaga");

            yield return new SagaConversion(
                documentPrefix: "GlobalUpliftSagas/",
                correlationId: "UpliftSessionKey",
                tableName: "NSB7_GlobalUpliftSagas");

            yield return new SagaConversion(
                documentPrefix: "IncrementalDraftProgramInventorySagas/",
                correlationId: "ProgramOccurrenceGuid",
                tableName: "NSB7_IncrementalDraftProgramInventorySagas");

            yield return new SagaConversion(
                documentPrefix: "NegotiationSessionSagas/",
                correlationId: "MessageGuid",
                tableName: "NSB7_NegotiationSessionSagas");

            yield return new SagaConversion(
                documentPrefix: "NonUnionDraftProgramBudgetSagas/",
                correlationId: "NonUnionDraftProgramBudgetKey",
                tableName: "NSB7_NonUnionDraftProgramBudgetSagas");

            yield return new SagaConversion(
                documentPrefix: "NonUnionIncrementalDraftProgramBudgetSagas/",
                correlationId: "NonUnionIncrementalDraftProgramBudgetKey",
                tableName: "NSB7_NonUnionIncrementalDraftProgramBudgetSagas");

            yield return new SagaConversion(
                documentPrefix: "NotificationSessionSaga/",
                correlationId: "MessageGuid",
                tableName: "NSB7_NotificationSessionSaga");

            yield return new SagaConversion(
                documentPrefix: "ProgramBudgetProgramOccurrenceSagas/",
                correlationId: "ProgramOccurrenceGuid",
                tableName: "NSB7_ProgramBudgetProgramOccurrenceSagas");

            yield return new SagaConversion(
                documentPrefix: "UnionDraftProgramBudgetSagas/",
                correlationId: "UnionDraftProgramBudgetKey",
                tableName: "NSB7_UnionDraftProgramBudgetSagas");

            yield return new SagaConversion(
                documentPrefix: "UnionIncrementalDraftProgramBudgetSagas/",
                correlationId: "UnionIncrementalDraftProgramBudgetKey",
                tableName: "NSB7_UnionIncrementalDraftProgramBudgetSagas");

            yield return new SagaConversion(
                documentPrefix: "VendorCentralRatesSagas/",
                correlationId: "PeriodGuid",
                tableName: "NSB7_VendorCentralRatesSagas");
        }
    }

    public static DocumentStore ConfigureRavenDb()
    {
        var docStore = new DocumentStore()
        {
            Url = "http://localhost:8080",
            DefaultDatabase = "CLBC.ServiceDeliveryManagement.ESB.Server"
        };

        // Do not Initialize DocumentStore
        return docStore;
    }

    public const SqlVariant DestinationSqlType = SqlVariant.MsSqlServer;

    public static Func<DbConnection> CreateSqlConnection = () =>
    {
        return new SqlConnection(@"Data Source=(local);Initial Catalog=Uplift;Integrated Security=True");
    };
}