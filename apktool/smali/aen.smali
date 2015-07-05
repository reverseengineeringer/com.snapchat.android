.class public final Laen;
.super Laem;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Labr;)V
    .locals 8
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Labr;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-static {}, Lapd;->a()Lapd;

    move-result-object v4

    invoke-static {}, Ladf;->a()Ladf;

    move-result-object v5

    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v6

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Laen;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Labr;Lapd;Ladf;Ladj;Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Labr;Lapd;Ladf;Ladj;Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 0
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Labr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lapd;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Ladf;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Ladj;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p7    # Lcom/snapchat/android/util/debug/ReleaseManager;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct/range {p0 .. p7}, Laem;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Labr;Lapd;Ladf;Ladj;Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 129
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 8
    .param p1    # Landroid/database/Cursor;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 68
    if-eqz p1, :cond_8

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laen;->i:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laen;->j:Ljava/util/ArrayList;

    .line 75
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 76
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 78
    :cond_0
    iget-object v3, p0, Laen;->b:Ladj;

    invoke-virtual {v3, p1}, Ladj;->a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v3

    .line 79
    if-nez v3, :cond_3

    .line 80
    const-string v3, "EditionCursorPagerAdapter"

    const-string v4, "Invalid DSnapPage found in the cursor adapter!"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    .line 115
    :cond_1
    iput-boolean v7, p0, Laen;->h:Z

    .line 118
    iget-object v3, p0, Laen;->a:Ladf;

    iget-object v0, p0, Laen;->d:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v4, v0, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    if-eqz v4, :cond_2

    iget-object v6, v3, Ladf;->b:Ljava/util/Map;

    monitor-enter v6

    :try_start_0
    new-instance v7, Ladf$c$a;

    invoke-direct {v7}, Ladf$c$a;-><init>()V

    iput-object v4, v7, Ladf$c$a;->a:Ljava/lang/String;

    iget-object v0, v3, Ladf;->b:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladf$c;

    invoke-virtual {v7, v0}, Ladf$c$a;->a(Ladf$c;)Ladf$c$a;

    move-result-object v0

    iput v1, v0, Ladf$c$a;->e:I

    iput v5, v0, Ladf$c$a;->d:I

    iget-object v1, v0, Ladf$c$a;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, v0, Ladf$c$a;->f:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ladf$c$a;->a()Ladf$c;

    move-result-object v0

    iget-object v1, v3, Ladf;->b:Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_2
    iget-object v0, p0, Laen;->f:Labr;

    iget-object v0, v0, Labr;->d:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;

    iget-object v1, p0, Laen;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->a(Ljava/util/List;)V

    .line 124
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 125
    return-void

    .line 84
    :cond_3
    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 88
    :cond_4
    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 91
    const-string v4, "EditionCursorPagerAdapter"

    const-string v5, "Skipping DSnap %s because it is an ad and was not loaded."

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :goto_2
    iget-object v4, p0, Laen;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_5
    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v5, :cond_6

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->f()I

    move-result v4

    if-nez v4, :cond_6

    .line 97
    const-string v4, "EditionCursorPagerAdapter"

    const-string v5, "Skipping DSnap %s because it is successfully loaded but has no panels!"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 99
    :cond_6
    iget-object v4, v3, Lcom/snapchat/android/discover/model/DSnapPage;->l:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->CONTENT_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v5, :cond_7

    .line 102
    const-string v4, "EditionCursorPagerAdapter"

    const-string v5, "Skipping DSnap %s because there was a content error loading it!"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 107
    :cond_7
    iget-object v4, p0, Laen;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v4, v3, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 122
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laen;->i:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public final b(I)I
    .locals 1

    .prologue
    .line 134
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Laen;->h:Z

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Laen;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
