.class public final Lyz;
.super Lzc;
.source "SourceFile"

# interfaces
.implements Lmu;


# instance fields
.field private final a:Lmv;

.field private final e:Lajp$a;

.field private final f:Lzg;

.field private final g:Lmr;

.field private final h:Lajr;


# direct methods
.method public constructor <init>(Lajr;Lcom/snapchat/android/model/StoryCollection;)V
    .locals 7
    .param p1    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/StoryCollection;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-static {}, Lzd;->a()Lzd;

    move-result-object v1

    invoke-static {}, Lmv;->a()Lmv;

    move-result-object v2

    new-instance v3, Lajp$a;

    invoke-direct {v3}, Lajp$a;-><init>()V

    new-instance v4, Lzg;

    invoke-direct {v4, p1, p2}, Lzg;-><init>(Lajr;Lcom/snapchat/android/model/StoryCollection;)V

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lyz;-><init>(Lzd;Lmv;Lajp$a;Lzg;Lajr;Lcom/snapchat/android/model/StoryCollection;)V

    .line 46
    return-void
.end method

.method private constructor <init>(Lzd;Lmv;Lajp$a;Lzg;Lajr;Lcom/snapchat/android/model/StoryCollection;)V
    .locals 7
    .param p1    # Lzd;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lmv;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lajp$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lzg;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Lcom/snapchat/android/model/StoryCollection;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0, p1, p5, p6}, Lzc;-><init>(Lzd;Lajr;Lcom/snapchat/android/model/StoryCollection;)V

    .line 56
    invoke-static {p2}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmv;

    iput-object v0, p0, Lyz;->a:Lmv;

    .line 57
    invoke-static {p3}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajp$a;

    iput-object v0, p0, Lyz;->e:Lajp$a;

    .line 58
    invoke-static {p4}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzg;

    iput-object v0, p0, Lyz;->f:Lzg;

    .line 59
    invoke-static {p5}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    iput-object v0, p0, Lyz;->h:Lajr;

    .line 61
    invoke-virtual {p6}, Lcom/snapchat/android/model/StoryCollection;->s()Lbjr;

    move-result-object v0

    .line 62
    new-instance v5, Lmw$a;

    invoke-direct {v5}, Lmw$a;-><init>()V

    invoke-virtual {v0}, Lbjr;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lmw$a;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0}, Lbjr;->b()Lbjs;

    move-result-object v1

    invoke-virtual {v1}, Lbjs;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v5, Lmw$a;->mTimeoutSeconds:I

    invoke-virtual {v0}, Lbjr;->b()Lbjs;

    move-result-object v1

    invoke-virtual {v1}, Lbjs;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v5, Lmw$a;->mFirstPosition:I

    invoke-virtual {v0}, Lbjr;->b()Lbjs;

    move-result-object v1

    invoke-virtual {v1}, Lbjs;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v5, Lmw$a;->mMinimumRemaining:I

    invoke-virtual {v0}, Lbjr;->d()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v5, Lmw$a;->mTargetingParams:Landroid/os/Bundle;

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

    iget-object v3, v5, Lmw$a;->mTargetingParams:Landroid/os/Bundle;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lmw;

    iget v1, v5, Lmw$a;->mTimeoutSeconds:I

    iget v2, v5, Lmw$a;->mFirstPosition:I

    iget v3, v5, Lmw$a;->mMinimumRemaining:I

    iget-object v4, v5, Lmw$a;->mAdUnitId:Ljava/lang/String;

    iget-object v5, v5, Lmw$a;->mTargetingParams:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmw;-><init>(IIILjava/lang/String;Landroid/os/Bundle;B)V

    .line 69
    iget-object v1, p0, Lyz;->a:Lmv;

    invoke-virtual {v1, v0, p0}, Lmv;->a(Lmw;Lmu;)Lmr;

    move-result-object v0

    iput-object v0, p0, Lyz;->g:Lmr;

    .line 70
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 74
    iget-object v0, p0, Lyz;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, p0, Lyz;->d:Lajr;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->b(Lajr;)I

    move-result v0

    .line 75
    const-string v1, "AdAwareStoryChronologicalSnapProvider"

    const-string v2, "STORY-ADS: Starting ad stream for %s with %d remaining snaps."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lyz;->b:Lcom/snapchat/android/model/StoryCollection;

    aput-object v5, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v1, p0, Lyz;->g:Lmr;

    invoke-virtual {p0}, Lyz;->f()Z

    move-result v2

    iget-object v3, v1, Lmr;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lmr;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v1, Lmr;->mNextUnviewedPosition:I

    iput v4, v1, Lmr;->mNextPosition:I

    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, v1, Lmr;->mInPlayback:Z

    iput-boolean v2, v1, Lmr;->mInLiveSection:Z

    invoke-virtual {v1, v0}, Lmr;->c(I)V

    monitor-exit v3

    return-void

    :cond_0
    iget-object v4, v1, Lmr;->mStoryAdStreamRequestInfo:Lmw;

    iget v4, v4, Lmw;->mFirstPosition:I

    iput v4, v1, Lmr;->mNextPosition:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Laje;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 8
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    iget-object v0, p0, Lyz;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, p0, Lyz;->d:Lajr;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->b(Lajr;)I

    move-result v1

    .line 88
    const-string v0, "AdAwareStoryChronologicalSnapProvider"

    const-string v2, "STORY-ADS: Snap viewed %s, %d remaining."

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p1}, Laje;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 92
    check-cast v0, Lajp;

    .line 93
    iget-object v0, v0, Lajp;->mResponse:Lmo;

    .line 94
    invoke-virtual {p2}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->isErrorReason()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const-string v2, "AdAwareStoryChronologicalSnapProvider"

    const-string v3, "STORY-ADS: Error displaying ad snap %s, with %d remaining snaps. Reporting error."

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v2, p0, Lyz;->g:Lmr;

    iget-object v3, v2, Lmr;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v2, v0}, Lmr;->b(Lmo;)V

    invoke-virtual {v2, v1}, Lmr;->c(I)V

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
    const-string v2, "AdAwareStoryChronologicalSnapProvider"

    const-string v3, "STORY-ADS: Ad snap viewed %s, %dms with %d remaining snaps. Reporting tracking."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v2, p0, Lyz;->g:Lmr;

    int-to-long v4, p3

    invoke-virtual {v2, v0, v4, v5, v1}, Lmr;->a(Lmo;JI)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lyz;->g:Lmr;

    invoke-virtual {v0, v1}, Lmr;->b(I)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/ads/AdRequestError;)V
    .locals 5

    .prologue
    .line 142
    const-string v0, "AdAwareStoryChronologicalSnapProvider"

    const-string v1, "STORY-ADS: onAdResolutionError for %s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lyz;->b:Lcom/snapchat/android/model/StoryCollection;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public final a(Lmo;)V
    .locals 1
    .param p1    # Lmo;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 132
    new-instance v0, Lyz$1;

    invoke-direct {v0, p0, p1}, Lyz$1;-><init>(Lyz;Lmo;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lyz;->g:Lmr;

    iget-object v1, v0, Lmr;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lmr;->mInPlayback:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final b(Lmo;)V
    .locals 13
    .param p1    # Lmo;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 149
    iget-object v2, p0, Lyz;->e:Lajp$a;

    iget-object v1, p0, Lyz;->h:Lajr;

    invoke-virtual {p1}, Lmo;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/snapchat/android/ads/AdResolutionState;->NO_FILL:Lcom/snapchat/android/ads/AdResolutionState;

    :goto_0
    sget-object v0, Lcom/snapchat/android/ads/AdResolutionState;->SUCCESS:Lcom/snapchat/android/ads/AdResolutionState;

    if-ne v3, v0, :cond_4

    iget-object v0, p1, Lmo;->mAdResponseFieldBundle:Landroid/os/Bundle;

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

    iget-object v4, p1, Lmo;->mTransformedUrl:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v2, Lajp$a;->mEndpointProvider:Ljavax/inject/Provider;

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

    iget-object v5, v2, Lajp$a;->mDiscoverConfiguration:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lajp$a;->mDiscoverConfiguration:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v4}, Latq;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lmo;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p1, Lmo;->mTransformedUrl:Ljava/lang/String;

    iget v7, p1, Lmo;->mAdStreamPosition:I

    new-instance v0, Lajp;

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lajp;-><init>(Lajr;Lmo;Lcom/snapchat/android/ads/AdResolutionState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZI)V

    .line 150
    :goto_1
    const-string v1, "AdAwareStoryChronologicalSnapProvider"

    const-string v2, "STORY-ADS: handleAdTransformResponse for %s, created: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lyz;->b:Lcom/snapchat/android/model/StoryCollection;

    aput-object v4, v3, v11

    aput-object v0, v3, v12

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v1, p0, Lyz;->c:Lzd;

    sget-object v2, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->LOAD_FROM_VIEWING:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual {v1, v0, v2}, Lzd;->a(Lajr;Lcom/snapchat/android/controller/stories/StoryLoadingContext;)Z

    .line 158
    iget-object v1, p0, Lyz;->f:Lzg;

    const-string v2, "StoryAdSequencer"

    const-string v3, "STORY-ADS: New ad available for insertion in the story sequence: %s"

    new-array v4, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Lajp;->aa()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, v1, Lzg;->f:Lajp;

    .line 159
    return-void

    .line 149
    :cond_0
    iget-object v0, p1, Lmo;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    if-eqz v0, :cond_1

    sget-object v3, Lcom/snapchat/android/ads/AdResolutionState;->ERROR:Lcom/snapchat/android/ads/AdResolutionState;

    goto/16 :goto_0

    :cond_1
    iget-object v0, v2, Lajp$a;->mDiscoverConfiguration:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v2, Lajp$a;->mDiscoverConfiguration:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

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
    new-instance v0, Lajp;

    invoke-direct {v0, v1, p1, v3}, Lajp;-><init>(Lajr;Lmo;Lcom/snapchat/android/ads/AdResolutionState;)V

    goto :goto_1
.end method

.method public final c()Laje;
    .locals 8
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 115
    iget-object v2, p0, Lyz;->f:Lzg;

    invoke-virtual {v2}, Lzg;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v2, Lzg;->f:Lajp;

    if-nez v1, :cond_3

    const-string v1, "StoryAdSequencer"

    const-string v3, "STORY-ADS: Skipped potential ad slot since ad is not resolved."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v2, Lzg;->a:Laop;

    iget-object v3, v2, Lzg;->b:Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryCollection;->h()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lfq;->AD_NOT_READY_RESOLVING:Lfq;

    invoke-virtual {v1, v3, v4}, Laop;->a(Ljava/lang/String;Lfq;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    iput-object v0, v2, Lzg;->d:Lajr;

    iput v6, v2, Lzg;->h:I

    :goto_1
    const-string v0, "StoryAdSequencer"

    const-string v1, "STORY-ADS: Selected next snap %s from: [config: %s, current: %s, ad: %s, index: %d, interval: %d, remaining: %d]"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v2, Lzg;->d:Lajr;

    aput-object v4, v3, v6

    iget-object v4, v2, Lzg;->c:Lzf;

    aput-object v4, v3, v7

    const/4 v4, 0x2

    iget-object v5, v2, Lzg;->d:Lajr;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v2, Lzg;->f:Lajp;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, v2, Lzg;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, v2, Lzg;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, v2, Lzg;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v6, v2, Lzg;->d:Lajr;

    invoke-virtual {v5, v6}, Lcom/snapchat/android/model/StoryCollection;->b(Lajr;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, v2, Lzg;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lzg;->g:I

    iget-object v0, v2, Lzg;->b:Lcom/snapchat/android/model/StoryCollection;

    instance-of v0, v0, Lajg;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lzg;->b:Lcom/snapchat/android/model/StoryCollection;

    iget v1, v2, Lzg;->h:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->a(I)V

    :cond_1
    iget-object v0, v2, Lzg;->d:Lajr;

    .line 116
    invoke-virtual {v0}, Lajr;->Y()Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    iput-object v0, p0, Lyz;->d:Lajr;

    .line 121
    :cond_2
    return-object v0

    .line 115
    :cond_3
    iget-object v1, v2, Lzg;->f:Lajp;

    invoke-virtual {v1}, Lajp;->R()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "StoryAdSequencer"

    const-string v3, "STORY-ADS: Skipped potential ad slot for %s since ad is loading."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v2, Lzg;->f:Lajp;

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v2, Lzg;->a:Laop;

    iget-object v3, v2, Lzg;->b:Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryCollection;->h()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lfq;->AD_NOT_READY_DOWNLOADING:Lfq;

    invoke-virtual {v1, v3, v4}, Laop;->a(Ljava/lang/String;Lfq;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "StoryAdSequencer"

    const-string v3, "STORY-ADS: Selected ad %s as the next snap."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v2, Lzg;->f:Lajp;

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v2, Lzg;->f:Lajp;

    iput-object v0, v2, Lzg;->f:Lajp;

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    iget-object v0, v2, Lzg;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, v2, Lzg;->e:Lajr;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->d(Lajr;)Lajr;

    move-result-object v0

    iput-object v0, v2, Lzg;->d:Lajr;

    iget-object v0, v2, Lzg;->d:Lajr;

    iput-object v0, v2, Lzg;->e:Lajr;

    iget v0, v2, Lzg;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lzg;->h:I

    goto/16 :goto_1
.end method

.method public final d()Laje;
    .locals 7
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 127
    iget-object v1, p0, Lyz;->f:Lzg;

    const/4 v0, 0x0

    invoke-virtual {v1}, Lzg;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lzg;->f:Lajp;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lzg;->f:Lajp;

    invoke-virtual {v2}, Lajp;->R()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v1, Lzg;->f:Lajp;

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, v1, Lzg;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v2, v1, Lzg;->e:Lajr;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/StoryCollection;->c(Lajr;)Lajr;

    move-result-object v0

    :cond_1
    const-string v2, "StoryAdSequencer"

    const-string v3, "STORY-ADS: Selected preview snap %s from: [config: %s, current: %s, ad: %s, index: %d, interval: %d, remaining: %d]"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Lzg;->c:Lzf;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, v1, Lzg;->d:Lajr;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v1, Lzg;->f:Lajp;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget v6, v1, Lzg;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, v1, Lzg;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-object v6, v1, Lzg;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, v1, Lzg;->d:Lajr;

    invoke-virtual {v6, v1}, Lcom/snapchat/android/model/StoryCollection;->b(Lajr;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
