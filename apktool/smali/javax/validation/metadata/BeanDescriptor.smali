.class public interface abstract Ljavax/validation/metadata/BeanDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/validation/metadata/ElementDescriptor;


# virtual methods
.method public abstract getConstrainedConstructors()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/metadata/ConstructorDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract getConstrainedMethods$4182084f$7cf224ab()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/validation/metadata/MethodType",
            "<",
            "Ljavax/validation/metadata/MethodType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConstrainedProperties()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/metadata/PropertyDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract getConstraintsForConstructor$21227bb8()Ljavax/validation/metadata/ConstructorDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/validation/metadata/ConstructorDescriptor;"
        }
    .end annotation
.end method

.method public varargs abstract getConstraintsForMethod$30b1c50b()Ljavax/validation/metadata/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/validation/metadata/MethodDescriptor;"
        }
    .end annotation
.end method

.method public abstract getConstraintsForProperty$7987561f()Ljavax/validation/metadata/PropertyDescriptor;
.end method

.method public abstract isBeanConstrained()Z
.end method
