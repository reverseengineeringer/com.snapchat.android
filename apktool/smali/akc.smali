.class public final Lakc;
.super Lcom/snapchat/android/model/StoryCollection;
.source "SourceFile"

# interfaces
.implements Lahy;


# instance fields
.field private final mWrappedStoryCollection:Lcom/snapchat/android/model/StoryCollection;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/StoryCollection;)V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, p1, v0}, Lakc;-><init>(Lcom/snapchat/android/model/StoryCollection;Ljavax/inject/Provider;)V

    .line 21
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/model/StoryCollection;Ljavax/inject/Provider;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/StoryCollection;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v1, p1, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    iget-object v2, p1, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    iget-object v3, p1, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->k()Lbks;

    move-result-object v5

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->j()Lbkn;

    move-result-object v6

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/model/StoryCollection;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Ljavax/inject/Provider;Lbks;Lbkn;)V

    .line 27
    iput-object p1, p0, Lakc;->mWrappedStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    .line 28
    iget-object v0, p1, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Lakc;->mUsername:Ljava/lang/String;

    .line 29
    iget-boolean v0, p1, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    iput-boolean v0, p0, Lakc;->mUserHasSeenInFeed:Z

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/snapchat/android/stories/StoriesSection;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lakc;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->LIVE:Lcom/snapchat/android/stories/StoriesSection;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->RECENT_UPDATES:Lcom/snapchat/android/stories/StoriesSection;

    goto :goto_0
.end method

.method public final a(ILakl;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lakl;",
            ")",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lakc;->t()Ljava/util/List;

    move-result-object v0

    .line 88
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
    .line 49
    iget-object v0, p0, Lakc;->mWrappedStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/StoryCollection;->a(I)V

    .line 50
    return-void
.end method

.method public final a(Lakl;)Z
    .locals 2
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 108
    iget-object v1, p0, Lakc;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lakc;->mUnviewedStorySnaps:Ljava/util/List;

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

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lakc;->mWrappedStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->b()I

    move-result v0

    return v0
.end method

.method public final b(Lakl;)I
    .locals 2
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 115
    iget-object v1, p0, Lakc;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lakc;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Lakl;)Lakl;
    .locals 3
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 125
    iget-object v1, p0, Lakc;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lakc;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 127
    if-ltz v0, :cond_0

    .line 128
    iget-object v2, p0, Lakc;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    monitor-exit v1

    .line 132
    :goto_0
    return-object v0

    .line 130
    :cond_0
    monitor-exit v1

    .line 132
    const/4 v0, 0x0

    goto :goto_0

    .line 130
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
    .line 147
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DEFAULT:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    return-object v0
.end method

.method public final d()Lakl;
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lakc;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lakc;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    iget-object v0, p0, Lakc;->mUnviewedStorySnaps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    monitor-exit v1

    .line 59
    :goto_0
    return-object v0

    .line 58
    :cond_0
    monitor-exit v1

    .line 59
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d(Lakl;)Lakl;
    .locals 1
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 137
    invoke-virtual {p0}, Lakc;->x()Lakl;

    move-result-object v0

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lakc;->s()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 164
    instance-of v0, p1, Lakc;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lakc;->mUsername:Ljava/lang/String;

    check-cast p1, Lakc;

    invoke-virtual {p1}, Lakc;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 167
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
            "Lakl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lakc;->t()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/snapchat/android/model/StoryCollection;->g()Z

    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-object v1, p0, Lakc;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lakc;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lakc;->z()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lakc;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 174
    mul-int/lit8 v0, v0, 0x1f

    const-string v1, "recentStoryCollection"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lakc;->y()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public final p()Lavx;
    .locals 5

    .prologue
    .line 152
    invoke-virtual {p0}, Lakc;->D()Lavx;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lakc;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY:Lcom/snapchat/android/stories/StoriesThumbnailType;

    .line 159
    :goto_1
    new-instance v1, Lavx;

    invoke-virtual {p0}, Lakc;->t()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lakc;->mUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&recentStoryCollection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lavx;-><init>(Lcom/snapchat/android/stories/StoriesThumbnailType;Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 157
    :cond_1
    sget-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->SOME_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

    goto :goto_1
.end method
