.class abstract Ldo;
.super Ldr;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ldr",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ldr;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 46
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 47
    check-cast p1, Ljava/util/Map$Entry;

    .line 48
    invoke-virtual {p0}, Ldo;->e()Ldm;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldm;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 51
    :cond_0
    return v0
.end method

.method abstract e()Ldm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldm",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public size()I
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Ldo;->e()Ldm;

    move-result-object v0

    invoke-virtual {v0}, Ldm;->size()I

    move-result v0

    return v0
.end method
