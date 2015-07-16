.class public final Laah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laah$b;,
        Laah$a;
    }
.end annotation


# instance fields
.field private final a:Lalw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lalw;->a()Lalw;

    move-result-object v0

    invoke-direct {p0, v0}, Laah;-><init>(Lalw;)V

    .line 41
    return-void
.end method

.method private constructor <init>(Lalw;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Laah;->a:Lalw;

    .line 46
    return-void
.end method

.method private a(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Object;Laah$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lakl;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Laah$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 82
    new-array v0, v8, [Ljava/lang/Object;

    aput-object p1, v0, v7

    .line 83
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 84
    invoke-virtual {v0}, Lakl;->au()Z

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Ldu;->c()Ljava/util/TreeMap;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Thumbnails-["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 90
    const-string v4, "%s-%s;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lakl;->mUsername:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v0}, Lakl;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v4, v0, Lakl;->mMediaId:Ljava/lang/String;

    invoke-virtual {v0}, Lakl;->at()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 93
    :cond_1
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Laah;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Laah$a;)V

    .line 95
    return-void
.end method


# virtual methods
.method public final a(Lakl;Laah$a;)V
    .locals 3
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 72
    iget-boolean v0, p1, Lakl;->mNeedsAuth:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Laah;->a(Ljava/util/Collection;Laah$a;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lakl;->ax()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Laah;->a(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Object;Laah$a;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;Laah$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lakl;",
            ">;",
            "Laah$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lakl;->as()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    iget-object v0, v0, Lakl;->mMediaId:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Laah$b;

    invoke-direct {v0, p0}, Laah$b;-><init>(Laah;)V

    invoke-virtual {v0, v2}, Laah$b;->a(Ljava/util/List;)Lbkp;

    move-result-object v0

    invoke-static {v0}, Lui;->buildAuthPayload(Lbhy;)Lbhy;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, p2}, Laah;->a(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Object;Laah$a;)V

    .line 66
    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Laah$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Laah$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lco;->a(Z)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-static {v3}, Lck;->a(Ljava/lang/String;)Lck;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5, v4}, Lck;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v3, Laly$a;

    invoke-direct {v3}, Laly$a;-><init>()V

    sget-object v4, Lcom/snapchat/android/networkmanager/DownloadPriority;->HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v4, v3, Laly$a;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v4, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v4, v3, Laly$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object p2, v3, Laly$a;->d:Ljava/lang/String;

    iput-object v0, v3, Laly$a;->e:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "STORIES"

    aput-object v1, v0, v2

    iput-object v0, v3, Laly$a;->h:[Ljava/lang/String;

    iput-object p4, v3, Laly$a;->g:Ljava/lang/String;

    iput-object p3, v3, Laly$a;->i:Ljava/lang/Object;

    invoke-virtual {v3}, Laly$a;->a()Laly;

    move-result-object v0

    .line 116
    iget-object v1, p0, Laah;->a:Lalw;

    new-instance v2, Laah$1;

    invoke-direct {v2, p0, p1, p5}, Laah$1;-><init>(Laah;Ljava/util/Map;Laah$a;)V

    invoke-virtual {v1, v0, v2}, Lalw;->a(Laly;Lalw$a;)V

    .line 122
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0
.end method
