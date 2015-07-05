.class public interface abstract Ljavax/validation/spi/ValidationProvider;
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
.method public abstract buildValidatorFactory$1f14e60d()Ljavax/validation/ValidatorFactory;
.end method

.method public abstract createGenericConfiguration$6e4efa3()Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/validation/Configuration",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract createSpecializedConfiguration$6e4efa3()Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
