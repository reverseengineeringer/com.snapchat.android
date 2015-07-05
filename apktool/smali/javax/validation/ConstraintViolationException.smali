.class public final Ljavax/validation/ConstraintViolationException;
.super Ljavax/validation/ValidationException;
.source "SourceFile"


# instance fields
.field private final constraintViolations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/ConstraintViolation",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/validation/ConstraintViolation",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Ljavax/validation/ValidationException;-><init>(Ljava/lang/String;)V

    .line 41
    if-nez p1, :cond_0

    .line 42
    iput-object v0, p0, Ljavax/validation/ConstraintViolationException;->constraintViolations:Ljava/util/Set;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljavax/validation/ConstraintViolationException;->constraintViolations:Ljava/util/Set;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/Set;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/validation/ConstraintViolation",
            "<*>;>;B)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljavax/validation/ConstraintViolationException;-><init>(Ljava/util/Set;)V

    .line 56
    return-void
.end method

.method private getConstraintViolations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/ConstraintViolation",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Ljavax/validation/ConstraintViolationException;->constraintViolations:Ljava/util/Set;

    return-object v0
.end method
