.class public final Ladv;
.super Lady;
.source "SourceFile"

# interfaces
.implements Lado$a;


# instance fields
.field final a:Landroid/widget/MediaController;

.field final b:Labq;

.field final c:Labp;

.field d:Landroid/widget/FrameLayout;

.field e:Lcom/snapchat/android/discover/model/DSnapPage;

.field f:Z

.field g:Ljava/lang/String;

.field h:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

.field protected final i:Lcom/brightcove/player/event/EventListener;

.field private final k:Landroid/view/LayoutInflater;

.field private final l:Laes;

.field private final m:Laby;

.field private final n:Lalb;

.field private final o:Laei;

.field private final p:Lado;

.field private final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lauv;

.field private s:Landroid/view/View;

.field private t:Landroid/view/ViewGroup;

.field private u:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

.field private v:Lcom/snapchat/android/discover/model/MediaState;

.field private w:Z

.field private final x:Laeq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 80
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    new-instance v2, Landroid/widget/MediaController;

    const/4 v0, 0x0

    invoke-direct {v2, p1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    new-instance v3, Laes;

    invoke-direct {v3}, Laes;-><init>()V

    new-instance v4, Laei;

    invoke-direct {v4}, Laei;-><init>()V

    invoke-static {}, Laby;->a()Laby;

    move-result-object v5

    invoke-static {}, Labq;->a()Labq;

    move-result-object v6

    new-instance v7, Labp;

    invoke-direct {v7}, Labp;-><init>()V

    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v8

    new-instance v9, Lauv;

    invoke-direct {v9, p1}, Lauv;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Ladv;-><init>(Landroid/view/LayoutInflater;Landroid/widget/MediaController;Laes;Laei;Laby;Labq;Labp;Lalb;Lauv;)V

    .line 89
    return-void
.end method

.method private constructor <init>(Landroid/view/LayoutInflater;Landroid/widget/MediaController;Laes;Laei;Laby;Labq;Labp;Lalb;Lauv;)V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lady;-><init>()V

    .line 62
    new-instance v0, Lado;

    invoke-direct {v0, p0}, Lado;-><init>(Lado$a;)V

    iput-object v0, p0, Ladv;->p:Lado;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ladv;->q:Ljava/util/Map;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 73
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Ladv;->v:Lcom/snapchat/android/discover/model/MediaState;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Ladv;->f:Z

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Ladv;->w:Z

    .line 338
    new-instance v0, Ladv$2;

    invoke-direct {v0, p0}, Ladv$2;-><init>(Ladv;)V

    iput-object v0, p0, Ladv;->i:Lcom/brightcove/player/event/EventListener;

    .line 421
    new-instance v0, Ladv$3;

    invoke-direct {v0, p0}, Ladv$3;-><init>(Ladv;)V

    iput-object v0, p0, Ladv;->x:Laeq;

    .line 101
    iput-object p9, p0, Ladv;->r:Lauv;

    .line 102
    iput-object p1, p0, Ladv;->k:Landroid/view/LayoutInflater;

    .line 103
    iput-object p3, p0, Ladv;->l:Laes;

    .line 104
    iput-object p2, p0, Ladv;->a:Landroid/widget/MediaController;

    .line 105
    iput-object p4, p0, Ladv;->o:Laei;

    .line 106
    iput-object p5, p0, Ladv;->m:Laby;

    .line 107
    iput-object p6, p0, Ladv;->b:Labq;

    .line 108
    iput-object p7, p0, Ladv;->c:Labp;

    .line 109
    iput-object p8, p0, Ladv;->n:Lalb;

    .line 110
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Ladv;->a:Landroid/widget/MediaController;

    iget-object v1, p0, Ladv;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 322
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Ladv;->a:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->requestLayout()V

    .line 326
    iget-object v0, p0, Ladv;->a:Landroid/widget/MediaController;

    new-instance v1, Ladv$1;

    invoke-direct {v1, p0}, Ladv$1;-><init>(Ladv;)V

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->post(Ljava/lang/Runnable;)Z

    .line 336
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ladb;Ljava/util/List;)Laim;
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ladb;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Laim;"
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(J)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Ladv;->h:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    return-object v0
.end method

.method public final a()V
    .locals 8

    .prologue
    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Ladv;->f:Z

    .line 407
    invoke-virtual {p0}, Ladv;->i()V

    .line 408
    iget-object v0, p0, Ladv;->b:Labq;

    iget-object v1, p0, Ladv;->g:Ljava/lang/String;

    iget-object v2, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    iget-object v3, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v4, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v4, v4, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v5, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v5

    iget-object v5, v5, Lcom/snapchat/android/discover/model/DSnapPanel;->b:Ljava/lang/String;

    const-string v6, "DISCOVER_REMOTE_VIDEO_BUFFER_TIME"

    invoke-static {v6}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    const-string v7, "video_session_id"

    invoke-virtual {v6, v7, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    const-string v7, "publisher_name"

    invoke-virtual {v6, v7, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v6, "edition_id"

    invoke-virtual {v2, v6, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "dsnap_id"

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "video_id"

    invoke-virtual {v2, v3, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "DISCOVER_REMOTE_VIDEO_BUFFER_TIME"

    invoke-virtual {v0, v3, v1, v2}, Labq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 411
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 279
    const-string v0, "DSnapItemRemoteVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRotate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Ladv;->a:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 282
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V
    .locals 6

    .prologue
    .line 126
    iput-object p1, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 129
    iget-object v0, p2, Lcom/snapchat/android/discover/model/DSnapPanel;->e:Lbjx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladv;->v:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v0, v1, :cond_0

    iget-object v0, p2, Lcom/snapchat/android/discover/model/DSnapPanel;->j:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Ladv;->l:Laes;

    iget-object v1, p2, Lcom/snapchat/android/discover/model/DSnapPanel;->e:Lbjx;

    const-string v2, "RemoteVideoViewController"

    const-string v3, "Assigning video properties: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v1, v0, Laes;->e:Lbjx;

    invoke-virtual {v0}, Laes;->b()V

    .line 135
    :cond_0
    iget-object v0, p2, Lcom/snapchat/android/discover/model/DSnapPanel;->j:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Ladv;->v:Lcom/snapchat/android/discover/model/MediaState;

    .line 136
    invoke-virtual {p0}, Ladv;->i()V

    .line 137
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 3
    .param p2    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/discover/model/DSnapPanel;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 114
    iget-object v0, p0, Ladv;->k:Landroid/view/LayoutInflater;

    const v1, 0x7f040059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ladv;->s:Landroid/view/View;

    .line 115
    iget-object v0, p0, Ladv;->s:Landroid/view/View;

    const v1, 0x7f0a020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ladv;->t:Landroid/view/ViewGroup;

    .line 116
    iget-object v0, p0, Ladv;->s:Landroid/view/View;

    const v1, 0x7f0a020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ladv;->d:Landroid/widget/FrameLayout;

    .line 117
    invoke-direct {p0}, Ladv;->j()V

    .line 118
    iget-object v1, p0, Ladv;->o:Laei;

    iget-object v0, p0, Ladv;->s:Landroid/view/View;

    const v2, 0x7f0a020b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Laei;->a:Landroid/widget/ProgressBar;

    .line 119
    iput-object p2, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 120
    invoke-virtual {p0}, Ladv;->i()V

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 415
    iput-boolean v3, p0, Ladv;->f:Z

    .line 416
    invoke-virtual {p0}, Ladv;->i()V

    .line 417
    iget-object v0, p0, Ladv;->b:Labq;

    iget-object v1, p0, Ladv;->g:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Labq;->b(Ljava/lang/String;ZZ)V

    .line 419
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ladv;->s:Landroid/view/View;

    return-object v0
.end method

.method public final e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->REMOTE_VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-object v0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 219
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v1, "Remote video scrolled - hiding controller."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Ladv;->a:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 224
    return-void
.end method

.method final g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 288
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v1, "Showing media controller indefinitely for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iget-boolean v0, p0, Ladv;->w:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Ladv;->a:Landroid/widget/MediaController;

    invoke-virtual {v0, v4}, Landroid/widget/MediaController;->show(I)V

    .line 292
    :cond_0
    return-void
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method final i()V
    .locals 4

    .prologue
    .line 314
    iget-object v0, p0, Ladv;->o:Laei;

    iget-object v1, p0, Ladv;->v:Lcom/snapchat/android/discover/model/MediaState;

    iget-boolean v2, p0, Ladv;->f:Z

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    iget-object v0, v0, Laei;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 315
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, v0, Laei;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public final o_()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 156
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v1, "Entering view for %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-boolean v0, p0, Ladv;->w:Z

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v1, "View already entered for %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View for %s is already entered!"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    iput-boolean v8, p0, Ladv;->w:Z

    .line 169
    iget-object v0, p0, Ladv;->v:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ladv;->v:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_2

    .line 170
    :cond_1
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v1, "User entered view for a failed long form video - attempting to acquire urls again."

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-static {v0}, Laby;->a(Ljava/lang/String;)V

    .line 177
    :cond_2
    iget-object v0, p0, Ladv;->k:Landroid/view/LayoutInflater;

    const v1, 0x7f04000e

    iget-object v2, p0, Ladv;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 178
    iget-object v0, p0, Ladv;->t:Landroid/view/ViewGroup;

    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    iput-object v0, p0, Ladv;->u:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    .line 182
    iget-object v0, p0, Ladv;->a:Landroid/widget/MediaController;

    iget-object v1, p0, Ladv;->u:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 185
    invoke-direct {p0}, Ladv;->j()V

    .line 186
    iget-object v0, p0, Ladv;->u:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    iget-object v1, p0, Ladv;->a:Landroid/widget/MediaController;

    iget-object v2, p0, Ladv;->d:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->setMediaController(Landroid/widget/MediaController;Landroid/view/View;Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 188
    iget-object v0, p0, Ladv;->u:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    .line 189
    iget-object v1, p0, Ladv;->q:Ljava/util/Map;

    const-string v2, "*"

    iget-object v3, p0, Ladv;->i:Lcom/brightcove/player/event/EventListener;

    invoke-interface {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "*"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Ladv;->q:Ljava/util/Map;

    const-string v2, "progress"

    iget-object v3, p0, Ladv;->p:Lado;

    invoke-interface {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "progress"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Ladv;->l:Laes;

    iget-object v1, p0, Ladv;->u:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    iput-object v1, v0, Laes;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Laes;->b()V

    .line 192
    iget-object v0, p0, Ladv;->l:Laes;

    iget-object v1, p0, Ladv;->x:Laeq;

    iput-object v1, v0, Laes;->d:Laeq;

    .line 194
    iput-boolean v8, p0, Ladv;->f:Z

    .line 195
    iget-object v0, p0, Ladv;->l:Laes;

    iget-object v1, v0, Laes;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v1}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    iget-object v2, v0, Laes;->b:Ljava/util/Map;

    const-string v3, "*"

    iget-object v4, v0, Laes;->a:Laer;

    invoke-interface {v1, v3, v4}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "*"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Laes;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v1}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->start()V

    iput-boolean v8, v0, Laes;->f:Z

    .line 197
    invoke-virtual {p0}, Ladv;->i()V

    .line 202
    iget-object v0, p0, Ladv;->r:Lauv;

    invoke-virtual {v0}, Lauv;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 203
    invoke-virtual {p0}, Ladv;->g()V

    .line 207
    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ladv;->g:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Ladv;->b:Labq;

    iget-object v1, p0, Ladv;->g:Ljava/lang/String;

    iget-object v2, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v4, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v4, v4, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v5, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v5

    iget-object v5, v5, Lcom/snapchat/android/discover/model/DSnapPanel;->b:Ljava/lang/String;

    const-string v6, "DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME"

    invoke-static {v6}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    const-string v7, "video_session_id"

    invoke-virtual {v6, v7, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    const-string v7, "publisher_name"

    invoke-virtual {v6, v7, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v6, "dsnap_id"

    invoke-virtual {v2, v6, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "edition_id"

    invoke-virtual {v2, v3, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "video_id"

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME"

    invoke-virtual {v0, v3, v1, v2}, Labq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 213
    iget-object v0, p0, Ladv;->n:Lalb;

    const-string v1, "DownloadManager"

    const-string v2, "DOWNLOAD-MANAGER: Pausing background downloads"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v8, v0, Lalb;->b:Z

    .line 214
    invoke-super {p0}, Lady;->o_()V

    .line 215
    :cond_4
    return-void
.end method

.method public final p_()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 228
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v1, "Leaving view for %s"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-boolean v0, p0, Ladv;->w:Z

    if-nez v0, :cond_0

    .line 230
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v1, "View was entered for %s"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View for %s not entered."

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    iget-object v0, p0, Ladv;->l:Laes;

    invoke-virtual {v0}, Laes;->a()V

    .line 240
    iget-object v0, p0, Ladv;->a:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 241
    iget-object v0, p0, Ladv;->b:Labq;

    iget-object v1, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    iget-object v2, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v3, p0, Ladv;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v3

    iget-object v3, v3, Lcom/snapchat/android/discover/model/DSnapPanel;->b:Ljava/lang/String;

    iget-object v4, p0, Ladv;->l:Laes;

    iget-object v4, v4, Laes;->a:Laer;

    iget-wide v6, v4, Laer;->b:J

    invoke-virtual {v4}, Laer;->a()J

    move-result-wide v4

    add-long/2addr v4, v6

    const-string v6, "DISCOVER_EDITION_STREAMING_DOWNLOADED_BYTES"

    invoke-static {v6}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    const-string v7, "publisher_name"

    invoke-virtual {v6, v7, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v6, "edition_id"

    invoke-virtual {v1, v6, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "reachability"

    iget-object v0, v0, Labq;->a:Lale;

    invoke-virtual {v0}, Lale;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "video_id"

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "return_size_bytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 245
    iget-object v0, p0, Ladv;->u:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Ladv;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 247
    iget-object v0, p0, Ladv;->u:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v3

    iget-object v0, p0, Ladv;->q:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Lcom/brightcove/player/event/EventEmitter;->off(Ljava/lang/String;I)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Ladv;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 251
    iget-object v0, p0, Ladv;->u:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0, v10}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 252
    iput-object v10, p0, Ladv;->u:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    .line 254
    :cond_2
    iget-object v0, p0, Ladv;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 257
    iget-object v0, p0, Ladv;->n:Lalb;

    const-string v1, "DownloadManager"

    const-string v2, "DOWNLOAD-MANAGER: Resuming background downloads"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v8, v0, Lalb;->b:Z

    invoke-virtual {v0}, Lalb;->c()V

    .line 259
    iget-boolean v0, p0, Ladv;->f:Z

    if-eqz v0, :cond_3

    .line 260
    iget-object v0, p0, Ladv;->b:Labq;

    iget-object v1, p0, Ladv;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v9, v8}, Labq;->a(Ljava/lang/String;ZZ)V

    .line 262
    iget-object v0, p0, Ladv;->b:Labq;

    iget-object v1, p0, Ladv;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v9, v8}, Labq;->b(Ljava/lang/String;ZZ)V

    .line 265
    :cond_3
    iput-object v10, p0, Ladv;->g:Ljava/lang/String;

    .line 267
    iput-boolean v8, p0, Ladv;->w:Z

    .line 268
    invoke-super {p0}, Lady;->p_()V

    .line 269
    :cond_4
    return-void
.end method
