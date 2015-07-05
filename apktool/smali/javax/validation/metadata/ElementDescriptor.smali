.class public interface abstract Ljavax/validation/metadata/ElementDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/validation/metadata/ElementDescriptor$ConstraintFinder;
    }
.end annotation


# virtual methods
.method public abstract findConstraints()Ljavax/validation/metadata/ElementDescriptor$ConstraintFinder;
.end method

.method public abstract getConstraintDescriptors()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/metadata/ConstraintDescriptor",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract getElementClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract hasConstraints()Z
.end method
