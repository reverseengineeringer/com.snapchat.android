.class public final Ljavax/validation/Validation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/validation/Validation$1;,
        Ljavax/validation/Validation$GetValidationProviderListAction;,
        Ljavax/validation/Validation$DefaultValidationProviderResolver;,
        Ljavax/validation/Validation$GenericBootstrapImpl;,
        Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    return-void
.end method

.method private static buildDefaultValidatorFactory()Ljavax/validation/ValidatorFactory;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljavax/validation/Validation$GenericBootstrapImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/validation/Validation$GenericBootstrapImpl;-><init>(B)V

    invoke-interface {v0}, Ljavax/validation/bootstrap/GenericBootstrap;->configure()Ljavax/validation/Configuration;

    move-result-object v0

    invoke-interface {v0}, Ljavax/validation/Configuration;->buildValidatorFactory()Ljavax/validation/ValidatorFactory;

    move-result-object v0

    return-object v0
.end method

.method private static byDefaultProvider()Ljavax/validation/bootstrap/GenericBootstrap;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljavax/validation/Validation$GenericBootstrapImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/validation/Validation$GenericBootstrapImpl;-><init>(B)V

    return-object v0
.end method

.method private static byProvider(Ljava/lang/Class;)Ljavax/validation/bootstrap/ProviderSpecificBootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/validation/Configuration",
            "<TT;>;U::",
            "Ljavax/validation/spi/ValidationProvider",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Ljavax/validation/bootstrap/ProviderSpecificBootstrap",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;

    invoke-direct {v0, p0}, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
