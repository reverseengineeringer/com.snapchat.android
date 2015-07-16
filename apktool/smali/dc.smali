.class public final Ldc;
.super Ldf;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcc;
.end annotation

.annotation build Lce;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ldf",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:I
    .annotation build Lcf;
    .end annotation
.end field

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x5

    .line 53
    invoke-direct {p0}, Ldf;-><init>()V

    .line 54
    const-string v0, "maxSize (%s) must >= 0"

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v5, v0, v1}, Lco;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v4}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Ldc;->b:Ljava/util/Queue;

    .line 56
    iput v4, p0, Ldc;->a:I

    .line 57
    return-void
.end method

.method public static a()Ldc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ldc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ldc;

    invoke-direct {v0}, Ldc;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 100
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget v0, p0, Ldc;->a:I

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return v2

    .line 104
    :cond_0
    invoke-virtual {p0}, Ldc;->size()I

    move-result v0

    iget v1, p0, Ldc;->a:I

    if-ne v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Ldc;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 107
    :cond_1
    iget-object v0, p0, Ldc;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 112
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lds;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method protected final b()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Ldc;->b:Ljava/util/Queue;

    return-object v0
.end method

.method protected final bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ldc;->b:Ljava/util/Queue;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Ldc;->b:Ljava/util/Queue;

    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ldc;->b:Ljava/util/Queue;

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Ldc;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Ldc;->b:Ljava/util/Queue;

    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
