.class public interface abstract Ljavax/validation/Validator;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract forExecutables()Ljavax/validation/executable/ExecutableValidator;
.end method

.method public abstract getConstraintsForClass$2044451b()Ljavax/validation/metadata/BeanDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/validation/metadata/BeanDescriptor;"
        }
    .end annotation
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

.method public varargs abstract validate$622610b8()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/ConstraintViolation",
            "<TT;>;>;"
        }
    .end annotation
.end method

.method public varargs abstract validateProperty$13cf112e()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/ConstraintViolation",
            "<TT;>;>;"
        }
    .end annotation
.end method

.method public varargs abstract validateValue$66b5613b()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/ConstraintViolation",
            "<TT;>;>;"
        }
    .end annotation
.end method
