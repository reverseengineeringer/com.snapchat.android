.class public interface abstract Ljavax/validation/BootstrapConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getConstraintMappingResourcePaths()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConstraintValidatorFactoryClassName()Ljava/lang/String;
.end method

.method public abstract getDefaultProviderClassName()Ljava/lang/String;
.end method

.method public abstract getDefaultValidatedExecutableTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/executable/ExecutableType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessageInterpolatorClassName()Ljava/lang/String;
.end method

.method public abstract getParameterNameProviderClassName()Ljava/lang/String;
.end method

.method public abstract getProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTraversableResolverClassName()Ljava/lang/String;
.end method

.method public abstract isExecutableValidationEnabled()Z
.end method
