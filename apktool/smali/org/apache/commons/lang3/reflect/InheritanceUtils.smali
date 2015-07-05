.class public Lorg/apache/commons/lang3/reflect/InheritanceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static distance(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 50
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 65
    :cond_1
    :goto_0
    return v0

    .line 54
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/BooleanUtils;->toInteger(Z)I

    move-result v0

    .line 61
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 64
    invoke-static {v2, p1}, Lorg/apache/commons/lang3/reflect/InheritanceUtils;->distance(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v2

    add-int/2addr v0, v2

    .line 65
    if-lez v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
