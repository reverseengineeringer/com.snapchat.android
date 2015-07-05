.class public interface abstract Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/validation/ConstraintValidatorContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConstraintViolationBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder$NodeContextBuilder;,
        Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder$NodeBuilderCustomizableContext;,
        Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder$NodeBuilderDefinedContext;,
        Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder$LeafNodeContextBuilder;,
        Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder$LeafNodeBuilderCustomizableContext;,
        Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder$LeafNodeBuilderDefinedContext;
    }
.end annotation


# virtual methods
.method public abstract addBeanNode()Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder$LeafNodeBuilderCustomizableContext;
.end method

.method public abstract addConstraintViolation()Ljavax/validation/ConstraintValidatorContext;
.end method

.method public abstract addNode$572f8a2b()Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder$NodeBuilderDefinedContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addParameterNode$47816fdc()Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder$NodeBuilderDefinedContext;
.end method

.method public abstract addPropertyNode$1cba0a72()Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder$NodeBuilderCustomizableContext;
.end method
