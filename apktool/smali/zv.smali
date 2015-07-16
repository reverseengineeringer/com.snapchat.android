.class public final Lzv;
.super Lzy;
.source "SourceFile"

# interfaces
.implements Lnl;


# instance fields
.field private final a:Lnm;

.field private final e:Lakj$a;

.field private final f:Laad;

.field private final g:Lni;

.field private final h:Lakl;


# direct methods
.method public constructor <init>(Lakl;Lcom/snapchat/android/model/StoryCollection;)V
    .locals 7
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/StoryCollection;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-static {}, Lzz;->a()Lzz;

    move-result-object v1

    invoke-static {}, Lnm;->a()Lnm;

    move-result-object v2

    new-instance v3, Lakj$a;

    invoke-direct {v3}, Lakj$a;-><init>()V

    new-instance v4, Laad;

    invoke-direct {v4, p1, p2}, Laad;-><init>(Lakl;Lcom/snapchat/android/model/StoryCollection;)V

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lzv;-><init>(Lzz;Lnm;Lakj$a;Laad;Lakl;Lcom/snapchat/android/model/StoryCollection;)V

    .line 46
    return-void
.end method

.method private constructor <init>(Lzz;Lnm;Lakj$a;Laad;Lakl;Lcom/snapchat/android/model/StoryCollection;)V
    .locals 7
    .param p1    # Lzz;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lnm;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lakj$a;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Laad;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Lcom/snapchat/android/model/StoryCollection;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0, p1, p5, p6}, Lzy;-><init>(Lzz;Lakl;Lcom/snapchat/android/model/StoryCollection;)V

    .line 56
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnm;

    iput-object v0, p0, Lzv;->a:Lnm;

    .line 57
    invoke-static {p3}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakj$a;

    iput-object v0, p0, Lzv;->e:Lakj$a;

    .line 58
    invoke-static {p4}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laad;

    iput-object v0, p0, Lzv;->f:Laad;

    .line 59
    invoke-static {p5}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    iput-object v0, p0, Lzv;->h:Lakl;

    .line 61
    invoke-virtual {p6}, Lcom/snapchat/android/model/StoryCollection;->k()Lbks;

    move-result-object v0

    .line 62
    new-instance v5, Lnn$a;

    invoke-direct {v5}, Lnn$a;-><init>()V

    invoke-virtual {v0}, Lbks;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lnn$a;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0}, Lbks;->b()Lbkt;

    move-result-object v1

    invoke-virtual {v1}, Lbkt;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v5, Lnn$a;->mTimeoutSeconds:I

    invoke-virtual {v0}, Lbks;->b()Lbkt;

    move-result-object v1

    invoke-virtual {v1}, Lbkt;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v5, Lnn$a;->mFirstPosition:I

    invoke-virtual {v0}, Lbks;->b()Lbkt;

    move-result-object v1

    invoke-virtual {v1}, Lbkt;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v5, Lnn$a;->mMinimumRemaining:I

    invoke-virtual {v0}, Lbks;->d()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v5, Lnn$a;->mTargetingParams:Landroid/os/Bundle;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v3, v5, Lnn$a;->mTargetingParams:Landroid/os/Bundle;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnn;

    iget v1, v5, Lnn$a;->mTimeoutSeconds:I

    iget v2, v5, Lnn$a;->mFirstPosition:I

    iget v3, v5, Lnn$a;->mMinimumRemaining:I

    iget-object v4, v5, Lnn$a;->mAdUnitId:Ljava/lang/String;

    iget-object v5, v5, Lnn$a;->mTargetingParams:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lnn;-><init>(IIILjava/lang/String;Landroid/os/Bundle;B)V

    .line 69
    iget-object v1, p0, Lzv;->a:Lnm;

    invoke-virtual {v1, v0, p0}, Lnm;->a(Lnn;Lnl;)Lni;

    move-result-object v0

    iput-object v0, p0, Lzv;->g:Lni;

    .line 70
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 74
    iget-object v0, p0, Lzv;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, p0, Lzv;->d:Lakl;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->b(Lakl;)I

    move-result v0

    .line 75
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lzv;->b:Lcom/snapchat/android/model/StoryCollection;

    aput-object v3, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 76
    iget-object v1, p0, Lzv;->g:Lni;

    invoke-virtual {p0}, Lzv;->f()Z

    move-result v2

    iget-object v3, v1, Lni;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lni;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v1, Lni;->mNextUnviewedPosition:I

    iput v4, v1, Lni;->mNextPosition:I

    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, v1, Lni;->mInPlayback:Z

    iput-boolean v2, v1, Lni;->mInLiveSection:Z

    invoke-virtual {v1, v0}, Lni;->c(I)V

    monitor-exit v3

    return-void

    :cond_0
    iget-object v4, v1, Lni;->mStoryAdStreamRequestInfo:Lnn;

    iget v4, v4, Lnn;->mFirstPosition:I

    iput v4, v1, Lni;->mNextPosition:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Laka;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 6
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    iget-object v0, p0, Lzv;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, p0, Lzv;->d:Lakl;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->b(Lakl;)I

    move-result v1

    .line 88
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    .line 91
    invoke-virtual {p1}, Laka;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 92
    check-cast v0, Lakj;

    .line 93
    iget-object v0, v0, Lakj;->mResponse:Lnf;

    .line 94
    invoke-virtual {p2}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->isErrorReason()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 98
    iget-object v2, p0, Lzv;->g:Lni;

    iget-object v3, v2, Lni;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v2, v0}, Lni;->b(Lnf;)V

    invoke-virtual {v2, v1}, Lni;->c(I)V

    monitor-exit v3

    .line 110
    :goto_0
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 101
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 103
    iget-object v2, p0, Lzv;->g:Lni;

    int-to-long v4, p3

    invoke-virtual {v2, v0, v4, v5, v1}, Lni;->a(Lnf;JI)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lzv;->g:Lni;

    invoke-virtual {v0, v1}, Lni;->b(I)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/ads/AdRequestError;)V
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lzv;->b:Lcom/snapchat/android/model/StoryCollection;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 144
    return-void
.end method

.method public final a(Lnf;)V
    .locals 1
    .param p1    # Lnf;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 132
    new-instance v0, Lzv$1;

    invoke-direct {v0, p0, p1}, Lzv$1;-><init>(Lzv;Lnf;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lzv;->g:Lni;

    iget-object v1, v0, Lni;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lni;->mInPlayback:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final b(Lnf;)V
    .locals 13
    .param p1    # Lnf;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 149
    iget-object v2, p0, Lzv;->e:Lakj$a;

    iget-object v1, p0, Lzv;->h:Lakl;

    invoke-virtual {p1}, Lnf;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/snapchat/android/ads/AdResolutionState;->NO_FILL:Lcom/snapchat/android/ads/AdResolutionState;

    :goto_0
    sget-object v0, Lcom/snapchat/android/ads/AdResolutionState;->SUCCESS:Lcom/snapchat/android/ads/AdResolutionState;

    if-ne v3, v0, :cond_4

    iget-object v0, p1, Lnf;->mAdResponseFieldBundle:Landroid/os/Bundle;

    const-string v4, "type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v4, "media_zipped_with_overlay"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v4, "duration"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v10, v4

    iget-object v4, p1, Lnf;->mTransformedUrl:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v2, Lakj$a;->mEndpointProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "only_download_raw_media"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lakj$a;->mDiscoverConfiguration:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lakj$a;->mDiscoverConfiguration:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lauo;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lnf;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p1, Lnf;->mTransformedUrl:Ljava/lang/String;

    iget v7, p1, Lnf;->mAdStreamPosition:I

    new-instance v0, Lakj;

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lakj;-><init>(Lakl;Lnf;Lcom/snapchat/android/ads/AdResolutionState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZI)V

    .line 150
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lzv;->b:Lcom/snapchat/android/model/StoryCollection;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    .line 155
    iget-object v1, p0, Lzv;->c:Lzz;

    sget-object v2, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->LOAD_FROM_VIEWING:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual {v1, v0, v2}, Lzz;->a(Lakl;Lcom/snapchat/android/controller/stories/StoryLoadingContext;)Z

    .line 158
    iget-object v1, p0, Lzv;->f:Laad;

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Lakj;->Y()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    iput-object v0, v1, Laad;->f:Lakj;

    .line 159
    return-void

    .line 149
    :cond_0
    iget-object v0, p1, Lnf;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    if-eqz v0, :cond_1

    sget-object v3, Lcom/snapchat/android/ads/AdResolutionState;->ERROR:Lcom/snapchat/android/ads/AdResolutionState;

    goto/16 :goto_0

    :cond_1
    iget-object v0, v2, Lakj$a;->mDiscoverConfiguration:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v2, Lakj$a;->mDiscoverConfiguration:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v3, Lcom/snapchat/android/ads/AdResolutionState;->ERROR:Lcom/snapchat/android/ads/AdResolutionState;

    goto/16 :goto_0

    :cond_3
    sget-object v3, Lcom/snapchat/android/ads/AdResolutionState;->SUCCESS:Lcom/snapchat/android/ads/AdResolutionState;

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lakj;

    invoke-direct {v0, v1, p1, v3}, Lakj;-><init>(Lakl;Lnf;Lcom/snapchat/android/ads/AdResolutionState;)V

    goto :goto_1
.end method

.method public final c()Laka;
    .locals 7
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 115
    iget-object v2, p0, Lzv;->f:Laad;

    invoke-virtual {v2}, Laad;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v2, Laad;->f:Lakj;

    if-nez v1, :cond_3

    iget-object v1, v2, Laad;->a:Lapl;

    iget-object v3, v2, Laad;->b:Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryCollection;->l()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lfz;->AD_NOT_READY_RESOLVING:Lfz;

    invoke-virtual {v1, v3, v4}, Lapl;->a(Ljava/lang/String;Lfz;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    iput-object v0, v2, Laad;->d:Lakl;

    iput v5, v2, Laad;->h:I

    :goto_1
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, v2, Laad;->d:Lakl;

    aput-object v1, v0, v5

    iget-object v1, v2, Laad;->c:Laac;

    aput-object v1, v0, v6

    const/4 v1, 0x2

    iget-object v3, v2, Laad;->d:Lakl;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    iget-object v3, v2, Laad;->f:Lakj;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    iget v3, v2, Laad;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x5

    iget v3, v2, Laad;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    iget-object v3, v2, Laad;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v4, v2, Laad;->d:Lakl;

    invoke-virtual {v3, v4}, Lcom/snapchat/android/model/StoryCollection;->b(Lakl;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    iget v0, v2, Laad;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Laad;->g:I

    iget-object v0, v2, Laad;->b:Lcom/snapchat/android/model/StoryCollection;

    instance-of v0, v0, Lakc;

    if-eqz v0, :cond_1

    iget-object v0, v2, Laad;->b:Lcom/snapchat/android/model/StoryCollection;

    iget v1, v2, Laad;->h:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->a(I)V

    :cond_1
    iget-object v0, v2, Laad;->d:Lakl;

    .line 116
    invoke-virtual {v0}, Lakl;->W()Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    iput-object v0, p0, Lzv;->d:Lakl;

    .line 121
    :cond_2
    return-object v0

    .line 115
    :cond_3
    iget-object v1, v2, Laad;->f:Lakj;

    invoke-virtual {v1}, Lakj;->S()Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v3, v2, Laad;->f:Lakj;

    aput-object v3, v1, v5

    iget-object v1, v2, Laad;->a:Lapl;

    iget-object v3, v2, Laad;->b:Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryCollection;->l()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lfz;->AD_NOT_READY_DOWNLOADING:Lfz;

    invoke-virtual {v1, v3, v4}, Lapl;->a(Ljava/lang/String;Lfz;)V

    goto :goto_0

    :cond_4
    new-array v1, v6, [Ljava/lang/Object;

    iget-object v3, v2, Laad;->f:Lakj;

    aput-object v3, v1, v5

    iget-object v1, v2, Laad;->f:Lakj;

    iput-object v0, v2, Laad;->f:Lakj;

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    iget-object v0, v2, Laad;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, v2, Laad;->e:Lakl;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->d(Lakl;)Lakl;

    move-result-object v0

    iput-object v0, v2, Laad;->d:Lakl;

    iget-object v0, v2, Laad;->d:Lakl;

    iput-object v0, v2, Laad;->e:Lakl;

    iget v0, v2, Laad;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Laad;->h:I

    goto/16 :goto_1
.end method

.method public final d()Laka;
    .locals 5
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 127
    iget-object v1, p0, Lzv;->f:Laad;

    const/4 v0, 0x0

    invoke-virtual {v1}, Laad;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Laad;->f:Lakj;

    if-eqz v2, :cond_0

    iget-object v2, v1, Laad;->f:Lakj;

    invoke-virtual {v2}, Lakj;->S()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v1, Laad;->f:Lakj;

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, v1, Laad;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v2, v1, Laad;->e:Lakl;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/StoryCollection;->c(Lakl;)Lakl;

    move-result-object v0

    :cond_1
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, v1, Laad;->c:Laac;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v1, Laad;->d:Lakl;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, v1, Laad;->f:Lakj;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, v1, Laad;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, v1, Laad;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, v1, Laad;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, v1, Laad;->d:Lakl;

    invoke-virtual {v4, v1}, Lcom/snapchat/android/model/StoryCollection;->b(Lakl;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    return-object v0
.end method
