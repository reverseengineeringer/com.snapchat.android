.class public final Laek;
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
    .line 30
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

    invoke-direct/range {v0 .. v7}, Laek;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Labr;Lapd;Ladf;Ladj;Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 33
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
    .line 43
    invoke-direct/range {p0 .. p7}, Laem;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Labr;Lapd;Ladf;Ladj;Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    .prologue
    .line 84
    return p1
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 5
    .param p1    # Landroid/database/Cursor;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 57
    if-eqz p1, :cond_2

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laek;->i:Ljava/util/ArrayList;

    .line 61
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Laek;->b:Ladj;

    invoke-virtual {v0, p1}, Ladj;->a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v0

    .line 64
    iget-object v1, p0, Laek;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    :cond_1
    iget-object v0, p0, Laek;->a:Ladf;

    iget-object v1, p0, Laek;->e:Ljava/lang/String;

    iget-object v2, p0, Laek;->i:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, Ladf;->e:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Laek;->f:Labr;

    iget-object v0, v0, Labr;->d:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;

    iget-object v1, p0, Laek;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->a(Ljava/util/List;)V

    .line 79
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 80
    return-void

    .line 77
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laek;->i:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final b(I)I
    .locals 0

    .prologue
    .line 89
    return p1
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Laek;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
