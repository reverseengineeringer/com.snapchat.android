.class public interface abstract Ljavax/validation/ValidatorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getConstraintValidatorFactory()Ljavax/validation/ConstraintValidatorFactory;
.end method

.method public abstract getMessageInterpolator()Ljavax/validation/MessageInterpolator;
.end method

.method public abstract getParameterNameProvider()Ljavax/validation/ParameterNameProvider;
.end method

.method public abstract getTraversableResolver()Ljavax/validation/TraversableResolver;
.end method

.method public abstract getValidator()Ljavax/validation/Validator;
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

.method public abstract usingContext()Ljavax/validation/ValidatorContext;
.end method
