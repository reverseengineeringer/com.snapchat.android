.class public final Lafn;
.super Lafm;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Lacr;)V
    .locals 8
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lacr;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-static {}, Lapz;->a()Lapz;

    move-result-object v4

    invoke-static {}, Laef;->a()Laef;

    move-result-object v5

    invoke-static {}, Laej;->a()Laej;

    move-result-object v6

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lafn;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Lacr;Lapz;Laef;Laej;Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Lacr;Lapz;Laef;Laej;Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 0
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lacr;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lapz;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Laef;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Laej;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p7    # Lcom/snapchat/android/util/debug/ReleaseManager;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct/range {p0 .. p7}, Lafm;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Lacr;Lapz;Laef;Laej;Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 119
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 62
    .line 65
    iget-object v0, p0, Lafn;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    iget-object v0, p0, Lafn;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    move v1, v2

    move v3, v2

    .line 69
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 70
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 71
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v2

    .line 104
    :goto_1
    iget-object v5, p0, Lafn;->j:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v5, v6, :cond_3

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->f()I

    move-result v5

    if-nez v5, :cond_3

    .line 89
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v2

    goto :goto_1

    .line 91
    :cond_3
    iget-object v5, v0, Lcom/snapchat/android/discover/model/DSnapPage;->l:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v6, Lcom/snapchat/android/discover/model/MediaState;->CONTENT_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v5, v6, :cond_4

    .line 94
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v2

    goto :goto_1

    .line 99
    :cond_4
    iget-object v5, p0, Lafn;->i:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v5, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_5
    iput-boolean v7, p0, Lafn;->h:Z

    .line 110
    iget-object v1, p0, Lafn;->a:Laef;

    iget-object v0, p0, Lafn;->d:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, v0, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    iget-object v0, p0, Lafn;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    if-eqz v2, :cond_6

    iget-object v6, v1, Laef;->b:Ljava/util/Map;

    monitor-enter v6

    :try_start_0
    new-instance v7, Laef$c$a;

    invoke-direct {v7}, Laef$c$a;-><init>()V

    iput-object v2, v7, Laef$c$a;->a:Ljava/lang/String;

    iget-object v0, v1, Laef;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laef$c;

    invoke-virtual {v7, v0}, Laef$c$a;->a(Laef$c;)Laef$c$a;

    move-result-object v0

    iput v3, v0, Laef$c$a;->e:I

    iput v5, v0, Laef$c$a;->d:I

    iget-object v3, v0, Laef$c$a;->f:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget-object v3, v0, Laef$c$a;->f:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Laef$c$a;->a()Laef$c;

    move-result-object v0

    iget-object v1, v1, Laef;->b:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_6
    iget-object v0, p0, Lafn;->f:Lacr;

    iget-object v0, v0, Lacr;->d:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;

    iget-object v1, p0, Lafn;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->a(Ljava/util/List;)V

    .line 114
    iget-object v0, p0, Landroid/support/v4/view/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 115
    return-void

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(I)I
    .locals 1

    .prologue
    .line 124
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lafn;->h:Z

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lafn;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
