.class public final Laak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzq;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laaj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Laaj;

    const/4 v1, 0x0

    new-instance v2, Laam;

    invoke-direct {v2}, Laam;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Laal;

    invoke-direct {v2}, Laal;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ldt;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Laak;-><init>(Ljava/util/List;)V

    .line 22
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laaj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Laak;->a:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lajk;)V
    .locals 2
    .param p1    # Lajk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 53
    iget-object v0, p0, Laak;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laaj;

    .line 54
    invoke-interface {v0, p1}, Laaj;->a(Lajk;)V

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public final a(Laka;Lajk;)V
    .locals 2
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lajk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 31
    iget-object v0, p0, Laak;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laaj;

    .line 32
    invoke-interface {v0, p1, p2}, Laaj;->a(Laka;Lajk;)V

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public final a(Laka;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 2
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 46
    iget-object v0, p0, Laak;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laaj;

    .line 47
    invoke-interface {v0, p1, p2, p3}, Laaj;->a(Laka;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method public final d(Laka;)V
    .locals 2
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 38
    iget-object v0, p0, Laak;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laaj;

    .line 39
    invoke-interface {v0, p1}, Laaj;->d(Laka;)V

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method
