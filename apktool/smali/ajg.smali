.class public Lajg;
.super Lcom/snapchat/android/model/StoryCollection;
.source "SourceFile"

# interfaces
.implements Lahb;


# instance fields
.field private final mWrappedStoryCollection:Lcom/snapchat/android/model/StoryCollection;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/StoryCollection;)V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, p1, v0}, Lajg;-><init>(Lcom/snapchat/android/model/StoryCollection;Ljavax/inject/Provider;)V

    .line 22
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/model/StoryCollection;Ljavax/inject/Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/StoryCollection;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->w()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->s()Lbjr;

    move-result-object v2

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/snapchat/android/model/StoryCollection;-><init>(Ljava/util/List;Ljava/util/List;Ljavax/inject/Provider;Lbjr;)V

    .line 30
    iput-object p1, p0, Lajg;->mWrappedStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    .line 31
    iget-object v0, p1, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Lajg;->mUsername:Ljava/lang/String;

    .line 32
    iget-boolean v0, p1, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    iput-boolean v0, p0, Lajg;->mUserHasSeenInFeed:Z

    .line 33
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lajg;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    invoke-static {v0, v1}, Latm;->e(Ljava/lang/String;Lajv;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILajr;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lajr;",
            ")",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-super {p0}, Lcom/snapchat/android/model/StoryCollection;->x()Ljava/util/List;

    move-result-object v0

    .line 89
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lajg;->mWrappedStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/StoryCollection;->a(I)V

    .line 63
    return-void
.end method

.method public final a(Lajr;)Z
    .locals 2
    .param p1    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 124
    iget-object v1, p0, Lajg;->mUnviewedStorySnaps:Ljava/util/List;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lajg;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lajr;)I
    .locals 2
    .param p1    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 131
    iget-object v1, p0, Lajg;->mUnviewedStorySnaps:Ljava/util/List;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lajg;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-object v2, p0, Lajg;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v0, p0, Lajg;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lajg;->mStorySnaps:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    invoke-virtual {v0}, Lajr;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    monitor-exit v2

    .line 40
    :goto_0
    return v0

    :cond_0
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Lajr;)Lajr;
    .locals 3
    .param p1    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 141
    iget-object v1, p0, Lajg;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lajg;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 143
    if-ltz v0, :cond_0

    .line 144
    iget-object v2, p0, Lajg;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    monitor-exit v1

    .line 148
    :goto_0
    return-object v0

    .line 146
    :cond_0
    monitor-exit v1

    .line 148
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DEFAULT:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lajg;->mWrappedStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->d()I

    move-result v0

    return v0
.end method

.method public final d(Lajr;)Lajr;
    .locals 1
    .param p1    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 153
    invoke-virtual {p0}, Lajg;->A()Lajr;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lajg;->w()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 176
    instance-of v0, p1, Lajg;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lajg;->mUsername:Ljava/lang/String;

    check-cast p1, Lajg;

    invoke-virtual {p1}, Lajg;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0}, Lcom/snapchat/android/model/StoryCollection;->x()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/snapchat/android/model/StoryCollection;->g()Z

    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lajg;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lajg;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 186
    mul-int/lit8 v0, v0, 0x1f

    const-string v1, "recentStoryCollection"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    return v0
.end method

.method public final i()Lcom/snapchat/android/stories/StoriesSection;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lajg;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->LIVE:Lcom/snapchat/android/stories/StoriesSection;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->RECENT_UPDATES:Lcom/snapchat/android/stories/StoriesSection;

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lajg;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    invoke-static {v0, v1}, Latm;->d(Ljava/lang/String;Lajv;)Z

    move-result v0

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lajg;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    invoke-static {v0, v1}, Latm;->e(Ljava/lang/String;Lajv;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public m()Lauz;
    .locals 5

    .prologue
    .line 168
    invoke-virtual {p0}, Lajg;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY:Lcom/snapchat/android/stories/StoriesThumbnailType;

    .line 171
    :goto_0
    new-instance v1, Lauz;

    invoke-super {p0}, Lcom/snapchat/android/model/StoryCollection;->x()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lajg;->mUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&recentStoryCollection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lauz;-><init>(Lcom/snapchat/android/stories/StoriesThumbnailType;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    .line 168
    :cond_0
    sget-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->SOME_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lajg;->C()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lajg;->B()Z

    move-result v0

    return v0
.end method
