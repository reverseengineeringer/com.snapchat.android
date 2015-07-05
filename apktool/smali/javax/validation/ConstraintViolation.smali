.class public interface abstract Ljavax/validation/ConstraintViolation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getConstraintDescriptor()Ljavax/validation/metadata/ConstraintDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/validation/metadata/ConstraintDescriptor",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getExecutableParameters()[Ljava/lang/Object;
.end method

.method public abstract getExecutableReturnValue()Ljava/lang/Object;
.end method

.method public abstract getInvalidValue()Ljava/lang/Object;
.end method

.method public abstract getLeafBean()Ljava/lang/Object;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getMessageTemplate()Ljava/lang/String;
.end method

.method public abstract getPropertyPath()Ljavax/validation/Path;
.end method

.method public abstract getRootBean()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getRootBeanClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract unwrap$659effca()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()TU;"
        }
    .end annotation
.end method
