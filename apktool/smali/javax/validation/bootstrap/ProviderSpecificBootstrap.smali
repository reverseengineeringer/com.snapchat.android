.class public interface abstract Ljavax/validation/bootstrap/ProviderSpecificBootstrap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljavax/validation/Configuration",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract configure()Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract providerResolver(Ljavax/validation/ValidationProviderResolver;)Ljavax/validation/bootstrap/ProviderSpecificBootstrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/ValidationProviderResolver;",
            ")",
            "Ljavax/validation/bootstrap/ProviderSpecificBootstrap",
            "<TT;>;"
        }
    .end annotation
.end method
