.class public final Lajo;
.super Lajg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/StoryCollection;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lajg;-><init>(Lcom/snapchat/android/model/StoryCollection;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 22
    iget-object v1, p0, Lajo;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v0, p0, Lajo;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lajo;->mUnviewedStorySnaps:Ljava/util/List;

    iget-object v2, p0, Lajo;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 26
    invoke-virtual {v0}, Lajr;->ax()Ljava/lang/String;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    monitor-exit v1

    .line 35
    :goto_0
    return-object v0

    .line 28
    :cond_0
    iget-object v0, p0, Lajo;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lajo;->mStorySnaps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 32
    invoke-virtual {v0}, Lajr;->ax()Ljava/lang/String;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 35
    :cond_1
    :try_start_1
    iget-object v0, p0, Lajo;->mUsername:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final m()Lauz;
    .locals 5

    .prologue
    .line 78
    new-instance v0, Lauz;

    sget-object v1, Lcom/snapchat/android/stories/StoriesThumbnailType;->OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY:Lcom/snapchat/android/stories/StoriesThumbnailType;

    invoke-super {p0}, Lcom/snapchat/android/model/StoryCollection;->x()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lajo;->mUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&recentStoryCollection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lauz;-><init>(Lcom/snapchat/android/stories/StoriesThumbnailType;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public final p()V
    .locals 5

    .prologue
    .line 40
    iget-object v1, p0, Lajo;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lajo;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 42
    invoke-virtual {v0}, Lajr;->ah()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v3, v4, :cond_0

    .line 43
    iget-object v3, p0, Lajo;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {v0}, Lajr;->ay()V

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 47
    :cond_1
    :try_start_1
    iget-object v0, p0, Lajo;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    iget-object v0, p0, Lajo;->mUnviewedStorySnaps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Lajr;)V

    .line 50
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final q()V
    .locals 5

    .prologue
    .line 54
    iget-object v1, p0, Lajo;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lajo;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 56
    invoke-virtual {v0}, Lajr;->ah()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v3

    .line 57
    sget-object v4, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v3, v4, :cond_0

    .line 58
    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v0, v3}, Lajr;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final r()Ljava/lang/String;
    .locals 4
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Lajo;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lajo;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 68
    invoke-virtual {v0}, Lajr;->aw()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    iget-object v0, v0, Lajr;->mSponsoredStoryMetadata:Lbje;

    invoke-virtual {v0}, Lbje;->c()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 73
    :goto_0
    return-object v0

    .line 72
    :cond_1
    monitor-exit v1

    .line 73
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
