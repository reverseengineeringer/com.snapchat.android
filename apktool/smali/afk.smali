.class public final Lafk;
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
    .line 26
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

    invoke-direct/range {v0 .. v7}, Lafk;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Lacr;Lapz;Laef;Laej;Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 29
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
    .line 39
    invoke-direct/range {p0 .. p7}, Lafm;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Lacr;Lapz;Laef;Laej;Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    .prologue
    .line 58
    return p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
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
    .line 49
    iget-object v0, p0, Lafk;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    iget-object v0, p0, Lafk;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    iget-object v0, p0, Lafk;->a:Laef;

    iget-object v1, p0, Lafk;->e:Ljava/lang/String;

    iget-object v2, p0, Lafk;->i:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, Laef;->e:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lafk;->f:Lacr;

    iget-object v0, v0, Lacr;->d:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;

    iget-object v1, p0, Lafk;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->a(Ljava/util/List;)V

    .line 53
    iget-object v0, p0, Landroid/support/v4/view/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 54
    return-void
.end method

.method public final b(I)I
    .locals 0

    .prologue
    .line 63
    return p1
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lafk;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
