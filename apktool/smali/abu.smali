.class public final Labu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lts$b",
        "<",
        "Lbjw;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final mDiscoverRepository:Ladj;

.field final mEditionId:Ljava/lang/String;

.field final mMediaStateTracker:Ladd;

.field protected final mSetRemoteVideoToStartedListener:Ladj$b;

.field final mTempVideoCatalog:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbjx;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUpdatePanelStateWithNetworkError:Ladj$b;

.field protected final mUpdateRemoteUrlInPanelListener:Ladj$b;

.field final mVideoCatalog:Lade;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v2

    invoke-static {}, Ladd;->a()Ladd;

    move-result-object v3

    invoke-static {}, Lade;->a()Lade;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Labu;-><init>(Ljava/lang/String;Ladj;Ladd;Lade;Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ladj;Ladd;Lade;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ladj;",
            "Ladd;",
            "Lade;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbjx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "FetchVideoCatalogOperation"

    iput-object v0, p0, Labu;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Labu$1;

    invoke-direct {v0, p0}, Labu$1;-><init>(Labu;)V

    iput-object v0, p0, Labu;->mSetRemoteVideoToStartedListener:Ladj$b;

    .line 108
    new-instance v0, Labu$2;

    invoke-direct {v0, p0}, Labu$2;-><init>(Labu;)V

    iput-object v0, p0, Labu;->mUpdateRemoteUrlInPanelListener:Ladj$b;

    .line 155
    new-instance v0, Labu$3;

    invoke-direct {v0, p0}, Labu$3;-><init>(Labu;)V

    iput-object v0, p0, Labu;->mUpdatePanelStateWithNetworkError:Ladj$b;

    .line 51
    iput-object p2, p0, Labu;->mDiscoverRepository:Ladj;

    .line 52
    iput-object p3, p0, Labu;->mMediaStateTracker:Ladd;

    .line 53
    iput-object p4, p0, Labu;->mVideoCatalog:Lade;

    .line 54
    iput-object p1, p0, Labu;->mEditionId:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Labu;->mTempVideoCatalog:Ljava/util/Map;

    .line 56
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Labu;->mMediaStateTracker:Ladd;

    iget-object v0, v0, Ladd;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    iget-object v0, p0, Labu;->mVideoCatalog:Lade;

    iget-object v0, v0, Lade;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 64
    iget-object v0, p0, Labu;->mDiscoverRepository:Ladj;

    const/4 v1, 0x1

    new-array v1, v1, [Ladj$b;

    const/4 v2, 0x0

    iget-object v3, p0, Labu;->mSetRemoteVideoToStartedListener:Ladj$b;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ladj;->a([Ladj$b;)V

    .line 65
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    check-cast p1, Lbjw;

    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "FetchVideoCatalogOperation"

    const-string v1, "DISCOVER-MEDIA: Successfully loaded long-form URLs for edition %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Labu;->mEditionId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lbjw;->a()Ljava/util/List;

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

    check-cast v0, Lbjx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbjx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Labu;->mTempVideoCatalog:Ljava/util/Map;

    invoke-virtual {v0}, Lbjx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labu;->mDiscoverRepository:Ladj;

    new-array v1, v5, [Ladj$b;

    iget-object v2, p0, Labu;->mUpdateRemoteUrlInPanelListener:Ladj$b;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ladj;->a([Ladj$b;)V

    :goto_1
    return-void

    :cond_2
    const-string v0, "FetchVideoCatalogOperation"

    const-string v1, "DISCOVER-MEDIA: Failed to load long-form URLs for edition %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Labu;->mEditionId:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Labu;->mDiscoverRepository:Ladj;

    new-array v1, v5, [Ladj$b;

    iget-object v2, p0, Labu;->mUpdatePanelStateWithNetworkError:Ladj$b;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ladj;->a([Ladj$b;)V

    goto :goto_1
.end method
