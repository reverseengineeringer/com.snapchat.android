.class public interface abstract Ljavax/validation/metadata/ExecutableDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/validation/metadata/ElementDescriptor;


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

.method public abstract getCrossParameterDescriptor()Ljavax/validation/metadata/CrossParameterDescriptor;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameterDescriptors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/validation/metadata/ParameterDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReturnValueDescriptor()Ljavax/validation/metadata/ReturnValueDescriptor;
.end method

.method public abstract hasConstrainedParameters()Z
.end method

.method public abstract hasConstrainedReturnValue()Z
.end method

.method public abstract hasConstraints()Z
.end method
