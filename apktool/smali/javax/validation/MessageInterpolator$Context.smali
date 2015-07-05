.class public interface abstract Ljavax/validation/MessageInterpolator$Context;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/validation/MessageInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Context"
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

.method public abstract getValidatedValue()Ljava/lang/Object;
.end method

.method public abstract unwrap$659effca()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation
.end method
