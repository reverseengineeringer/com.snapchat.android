.class public final Lafg;
.super Lafe;
.source "SourceFile"


# instance fields
.field private a:Latx;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Latx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Latx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lafe;-><init>()V

    .line 21
    iput-object p2, p0, Lafg;->a:Latx;

    .line 22
    iput-object p1, p0, Lafg;->b:Ljava/util/Set;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/Friend;Z)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const v3, 0x7f0c002f

    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lafg;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 34
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v1}, Latx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    if-eqz v0, :cond_2

    .line 39
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, v0}, Latx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
