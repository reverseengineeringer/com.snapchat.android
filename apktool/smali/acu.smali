.class public final Lacu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lui$b",
        "<",
        "Lbkx;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final mDiscoverRepository:Laej;

.field final mEditionId:Ljava/lang/String;

.field final mMediaStateTracker:Laed;

.field protected final mSetRemoteVideoToStartedListener:Laej$b;

.field final mTempVideoCatalog:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbky;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUpdatePanelStateWithNetworkError:Laej$b;

.field protected final mUpdateRemoteUrlInPanelListener:Laej$b;

.field final mVideoCatalog:Laee;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-static {}, Laej;->a()Laej;

    move-result-object v2

    invoke-static {}, Laed;->a()Laed;

    move-result-object v3

    invoke-static {}, Laee;->a()Laee;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lacu;-><init>(Ljava/lang/String;Laej;Laed;Laee;Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Laej;Laed;Laee;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Laej;",
            "Laed;",
            "Laee;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbky;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "FetchVideoCatalogOperation"

    iput-object v0, p0, Lacu;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Lacu$1;

    invoke-direct {v0, p0}, Lacu$1;-><init>(Lacu;)V

    iput-object v0, p0, Lacu;->mSetRemoteVideoToStartedListener:Laej$b;

    .line 108
    new-instance v0, Lacu$2;

    invoke-direct {v0, p0}, Lacu$2;-><init>(Lacu;)V

    iput-object v0, p0, Lacu;->mUpdateRemoteUrlInPanelListener:Laej$b;

    .line 155
    new-instance v0, Lacu$3;

    invoke-direct {v0, p0}, Lacu$3;-><init>(Lacu;)V

    iput-object v0, p0, Lacu;->mUpdatePanelStateWithNetworkError:Laej$b;

    .line 51
    iput-object p2, p0, Lacu;->mDiscoverRepository:Laej;

    .line 52
    iput-object p3, p0, Lacu;->mMediaStateTracker:Laed;

    .line 53
    iput-object p4, p0, Lacu;->mVideoCatalog:Laee;

    .line 54
    iput-object p1, p0, Lacu;->mEditionId:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lacu;->mTempVideoCatalog:Ljava/util/Map;

    .line 56
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lacu;->mMediaStateTracker:Laed;

    iget-object v0, v0, Laed;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    iget-object v0, p0, Lacu;->mVideoCatalog:Laee;

    iget-object v0, v0, Laee;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 64
    iget-object v0, p0, Lacu;->mDiscoverRepository:Laej;

    const/4 v1, 0x1

    new-array v1, v1, [Laej$b;

    const/4 v2, 0x0

    iget-object v3, p0, Lacu;->mSetRemoteVideoToStartedListener:Laej$b;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Laej;->a([Laej$b;)V

    .line 65
    return-void
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    check-cast p1, Lbkx;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lacu;->mEditionId:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-virtual {p1}, Lbkx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbky;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbky;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lacu;->mTempVideoCatalog:Ljava/util/Map;

    invoke-virtual {v0}, Lbky;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lacu;->mDiscoverRepository:Laej;

    new-array v1, v5, [Laej$b;

    iget-object v2, p0, Lacu;->mUpdateRemoteUrlInPanelListener:Laej$b;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Laej;->a([Laej$b;)V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lacu;->mEditionId:Ljava/lang/String;

    aput-object v1, v0, v4

    aput-object p2, v0, v5

    iget-object v0, p0, Lacu;->mDiscoverRepository:Laej;

    new-array v1, v5, [Laej$b;

    iget-object v2, p0, Lacu;->mUpdatePanelStateWithNetworkError:Laej$b;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Laej;->a([Laej$b;)V

    goto :goto_1
.end method
