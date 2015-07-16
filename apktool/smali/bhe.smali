.class public final Lbhe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_ASPECT_RATIO_ERROR:D = 0.1

.field private static final TAG:Ljava/lang/String; = "SaveStoryToGalleryResolutionProvider"


# instance fields
.field private final mDeviceVideoEncodingResolutionSet:Lxv;

.field private final mTranscodingResolutionProviderFactory:Lxx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lxx;->a()Lxx;

    move-result-object v0

    invoke-static {}, Lxv;->a()Lxv;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbhe;-><init>(Lxx;Lxv;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Lxx;Lxv;)V
    .locals 0
    .param p1    # Lxx;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lxv;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lbhe;->mTranscodingResolutionProviderFactory:Lxx;

    .line 49
    iput-object p2, p0, Lbhe;->mDeviceVideoEncodingResolutionSet:Lxv;

    .line 50
    return-void
.end method

.method private a(Lavc;)Lavc;
    .locals 18
    .param p1    # Lavc;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lbhe;->mDeviceVideoEncodingResolutionSet:Lxv;

    iget-object v2, v2, Lxv;->a:Ljava/util/Set;

    .line 118
    invoke-virtual/range {p1 .. p1}, Lavc;->c()D

    move-result-wide v10

    .line 120
    const/4 v9, 0x0

    .line 121
    const-wide/16 v4, 0x0

    .line 122
    const/4 v3, 0x0

    .line 124
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lavc;

    .line 125
    invoke-virtual {v2}, Lavc;->c()D

    move-result-wide v6

    .line 126
    sub-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 127
    div-double/2addr v6, v10

    .line 129
    const-wide v14, 0x3fb999999999999aL    # 0.1

    cmpl-double v8, v6, v14

    if-gtz v8, :cond_0

    .line 130
    invoke-virtual {v2}, Lavc;->d()I

    move-result v8

    .line 135
    if-eqz v9, :cond_1

    cmpg-double v13, v6, v4

    if-ltz v13, :cond_1

    cmpl-double v13, v6, v4

    if-nez v13, :cond_3

    if-le v8, v3, :cond_3

    :cond_1
    move v4, v8

    move-object v5, v2

    move-wide v2, v6

    :goto_1
    move-object v9, v5

    move/from16 v16, v4

    move-wide v4, v2

    move/from16 v3, v16

    .line 141
    goto :goto_0

    .line 143
    :cond_2
    return-object v9

    :cond_3
    move-wide/from16 v16, v4

    move v4, v3

    move-object v5, v9

    move-wide/from16 v2, v16

    goto :goto_1
.end method

.method private static a(Ljava/util/Map;)Lavc;
    .locals 14
    .param p0    # Ljava/util/Map;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lavc;",
            "Lavc;",
            ">;)",
            "Lavc;"
        }
    .end annotation

    .prologue
    .line 149
    const/4 v7, 0x0

    .line 150
    const/4 v6, 0x0

    .line 151
    const-wide/16 v4, 0x0

    .line 152
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavc;

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lavc;->d()I

    move-result v1

    .line 159
    invoke-virtual {v0}, Lavc;->c()D

    move-result-wide v2

    .line 161
    const-wide/16 v10, 0x0

    cmpl-double v9, v4, v10

    if-eqz v9, :cond_1

    sub-double v10, v2, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    .line 166
    :cond_1
    if-le v1, v6, :cond_3

    move-wide v12, v2

    move v2, v1

    move-object v3, v0

    move-wide v0, v12

    :goto_1
    move-wide v4, v0

    move v6, v2

    move-object v7, v3

    .line 175
    goto :goto_0

    .line 177
    :cond_2
    return-object v7

    :cond_3
    move-wide v0, v4

    move v2, v6

    move-object v3, v7

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Lavc;
    .locals 5
    .param p1    # Ljava/util/Collection;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lavc;",
            ">;)",
            "Lavc;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No media source resolutions to compare"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 71
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavc;

    .line 72
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    invoke-static {v0}, Lxx;->a(Lavc;)Lxw;

    move-result-object v1

    const v4, 0x3d0900

    invoke-virtual {v1, v4}, Lxw;->a(I)Lavc;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 74
    :goto_1
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_2
    invoke-direct {p0, v0}, Lbhe;->a(Lavc;)Lavc;

    move-result-object v1

    goto :goto_1

    .line 78
    :cond_3
    invoke-static {v2}, Lbhe;->a(Ljava/util/Map;)Lavc;

    move-result-object v0

    .line 79
    return-object v0
.end method
