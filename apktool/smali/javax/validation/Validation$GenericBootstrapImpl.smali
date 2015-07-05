.class final Ljavax/validation/Validation$GenericBootstrapImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/validation/bootstrap/GenericBootstrap;
.implements Ljavax/validation/spi/BootstrapState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/validation/Validation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GenericBootstrapImpl"
.end annotation


# instance fields
.field private defaultResolver:Ljavax/validation/ValidationProviderResolver;

.field resolver:Ljavax/validation/ValidationProviderResolver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljavax/validation/Validation$GenericBootstrapImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final configure()Ljavax/validation/Configuration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/validation/Configuration",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Ljavax/validation/Validation$GenericBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/validation/Validation$GenericBootstrapImpl;->getDefaultValidationProviderResolver()Ljavax/validation/ValidationProviderResolver;

    move-result-object v0

    .line 257
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljavax/validation/ValidationProviderResolver;->getValidationProviders()Ljava/util/List;
    :try_end_0
    .catch Ljavax/validation/ValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 268
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 269
    const-string v0, "Unable to create a Configuration, because no Bean Validation provider could be found. Add a provider like Hibernate Validator (RI) to your classpath."

    .line 271
    new-instance v1, Ljavax/validation/ValidationException;

    invoke-direct {v1, v0}, Ljavax/validation/ValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    iget-object v0, p0, Ljavax/validation/Validation$GenericBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    throw v0

    .line 264
    :catch_1
    move-exception v0

    .line 265
    new-instance v1, Ljavax/validation/ValidationException;

    const-string v2, "Unable to get available provider resolvers."

    invoke-direct {v1, v2, v0}, Ljavax/validation/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 276
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljavax/validation/ValidationProviderResolver;->getValidationProviders()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/validation/spi/ValidationProvider;

    invoke-interface {v0}, Ljavax/validation/spi/ValidationProvider;->createGenericConfiguration$6e4efa3()Ljavax/validation/Configuration;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 282
    return-object v0

    .line 278
    :catch_2
    move-exception v0

    .line 279
    new-instance v1, Ljavax/validation/ValidationException;

    const-string v2, "Unable to instantiate Configuration."

    invoke-direct {v1, v2, v0}, Ljavax/validation/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getDefaultValidationProviderResolver()Ljavax/validation/ValidationProviderResolver;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Ljavax/validation/Validation$GenericBootstrapImpl;->defaultResolver:Ljavax/validation/ValidationProviderResolver;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljavax/validation/Validation$DefaultValidationProviderResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/validation/Validation$DefaultValidationProviderResolver;-><init>(B)V

    iput-object v0, p0, Ljavax/validation/Validation$GenericBootstrapImpl;->defaultResolver:Ljavax/validation/ValidationProviderResolver;

    .line 247
    :cond_0
    iget-object v0, p0, Ljavax/validation/Validation$GenericBootstrapImpl;->defaultResolver:Ljavax/validation/ValidationProviderResolver;

    return-object v0
.end method

.method public final getValidationProviderResolver()Ljavax/validation/ValidationProviderResolver;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Ljavax/validation/Validation$GenericBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    return-object v0
.end method

.method public final providerResolver(Ljavax/validation/ValidationProviderResolver;)Ljavax/validation/bootstrap/GenericBootstrap;
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Ljavax/validation/Validation$GenericBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    .line 236
    return-object p0
.end method
