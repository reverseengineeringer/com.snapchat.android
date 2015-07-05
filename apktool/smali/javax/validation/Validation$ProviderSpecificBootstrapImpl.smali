.class final Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/validation/bootstrap/ProviderSpecificBootstrap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/validation/Validation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProviderSpecificBootstrapImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljavax/validation/Configuration",
        "<TT;>;U::",
        "Ljavax/validation/spi/ValidationProvider",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljavax/validation/bootstrap/ProviderSpecificBootstrap",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private resolver:Ljavax/validation/ValidationProviderResolver;

.field private final validationProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->validationProviderClass:Ljava/lang/Class;

    .line 171
    return-void
.end method


# virtual methods
.method public final configure()Ljavax/validation/Configuration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->validationProviderClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljavax/validation/ValidationException;

    const-string v1, "builder is mandatory. Use Validation.byDefaultProvider() to use the generic provider discovery mechanism"

    invoke-direct {v0, v1}, Ljavax/validation/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    new-instance v0, Ljavax/validation/Validation$GenericBootstrapImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/validation/Validation$GenericBootstrapImpl;-><init>(B)V

    .line 201
    iget-object v1, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    if-nez v1, :cond_2

    .line 202
    invoke-virtual {v0}, Ljavax/validation/Validation$GenericBootstrapImpl;->getDefaultValidationProviderResolver()Ljavax/validation/ValidationProviderResolver;

    move-result-object v0

    iput-object v0, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    .line 211
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    invoke-interface {v0}, Ljavax/validation/ValidationProviderResolver;->getValidationProviders()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/validation/spi/ValidationProvider;

    .line 218
    iget-object v2, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->validationProviderClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    iget-object v1, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->validationProviderClass:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/validation/spi/ValidationProvider;

    .line 220
    invoke-interface {v0}, Ljavax/validation/spi/ValidationProvider;->createSpecializedConfiguration$6e4efa3()Ljavax/validation/Configuration;

    move-result-object v0

    return-object v0

    .line 206
    :cond_2
    iget-object v1, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    iput-object v1, v0, Ljavax/validation/Validation$GenericBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    new-instance v1, Ljavax/validation/ValidationException;

    const-string v2, "Unable to get available provider resolvers."

    invoke-direct {v1, v2, v0}, Ljavax/validation/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 224
    :cond_3
    new-instance v0, Ljavax/validation/ValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find provider: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->validationProviderClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/validation/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final providerResolver(Ljavax/validation/ValidationProviderResolver;)Ljavax/validation/bootstrap/ProviderSpecificBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/ValidationProviderResolver;",
            ")",
            "Ljavax/validation/bootstrap/ProviderSpecificBootstrap",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 182
    iput-object p1, p0, Ljavax/validation/Validation$ProviderSpecificBootstrapImpl;->resolver:Ljavax/validation/ValidationProviderResolver;

    .line 183
    return-object p0
.end method
