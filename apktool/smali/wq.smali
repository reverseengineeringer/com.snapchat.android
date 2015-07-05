.class public Lwq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/hardware/Camera$Parameters;)Laue;
    .locals 4

    .prologue
    .line 200
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lwq;->a(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laue;

    .line 202
    invoke-virtual {v0}, Laue;->b()I

    move-result v2

    const/16 v3, 0x1e0

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Laue;->a()I

    move-result v2

    const/16 v3, 0x280

    if-ne v2, v3, :cond_0

    .line 206
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Laue;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 83
    const-string v0, "VideoRecordingSizeFinder"

    const-string v1, "Preview Size Finding: preview output is the same as video output"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 87
    :cond_0
    if-nez v0, :cond_2

    .line 88
    const-string v0, "VideoRecordingSizeFinder"

    const-string v1, "Can not get sizes from hardware returning empty list"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    :cond_1
    :goto_0
    return-object v0

    .line 92
    :cond_2
    invoke-static {v0}, Lwq;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 94
    if-eqz p1, :cond_1

    .line 95
    invoke-static {v0}, Lwq;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected static a(Ljava/util/List;)V
    .locals 8
    .param p0    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 108
    new-instance v0, Lxh;

    invoke-direct {v0}, Lxh;-><init>()V

    new-instance v2, Laue;

    iget v3, v0, Lxh;->widthPixels:I

    iget v0, v0, Lxh;->heightPixels:I

    invoke-direct {v2, v3, v0}, Laue;-><init>(II)V

    .line 109
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laue;

    .line 111
    invoke-virtual {v0, v2}, Laue;->a(Laue;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const-string v3, "VideoRecordingSizeFinder"

    const-string v4, "Preview Size Finder: Removing [%d, %d]. TOO LARGE!"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Laue;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Laue;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 116
    :cond_1
    return-void
.end method

.method protected static b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Laue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 123
    if-eqz v0, :cond_0

    .line 124
    new-instance v3, Laue;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v0}, Laue;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Landroid/hardware/Camera$Parameters;IDZ)Laue;
    .locals 7
    .annotation build Lcgb;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 50
    const-string v0, "VideoRecordingSizeFinder"

    const-string v1, "Preview Size Finding: finding best fit video size for AspectRatio[%f]"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {p1, v5}, Lwq;->a(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-virtual {p0, v0, p3, p4, p5}, Lwq;->a(Ljava/util/List;DZ)Laue;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/util/List;DZ)Laue;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laue;",
            ">;DZ)",
            "Laue;"
        }
    .end annotation

    .prologue
    .line 137
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 138
    const/4 v1, 0x0

    .line 140
    new-instance v0, Lwq$1;

    invoke-direct {v0, p0}, Lwq$1;-><init>(Lwq;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 141
    const-string v0, "VideoRecordingSizeFinder"

    const-string v4, "Preview Size Finding: Target aspect ratio %f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laue;

    .line 144
    invoke-virtual {v0}, Laue;->c()D

    move-result-wide v4

    sub-double v4, v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 145
    const-string v6, "VideoRecordingSizeFinder"

    const-string v8, "Preview Size Finding: [%d x %d] AR [%f] difference [%f] pickhighest [%b]"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Laue;->a()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v0}, Laue;->b()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v0}, Laue;->c()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    cmpg-double v6, v4, v2

    if-ltz v6, :cond_0

    if-nez p4, :cond_4

    if-eqz v0, :cond_1

    cmpl-double v6, v4, v2

    if-gtz v6, :cond_1

    invoke-virtual {v0}, Laue;->b()I

    move-result v6

    const/16 v8, 0x2d0

    if-lt v6, v8, :cond_1

    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_4

    :cond_0
    move-wide v2, v4

    :goto_2
    move-object v1, v0

    .line 156
    goto :goto_0

    .line 148
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 158
    :cond_2
    if-eqz v1, :cond_3

    .line 159
    const-string v0, "VideoRecordingSizeFinder"

    const-string v2, "Preview Size Finding: Determined best size as [%d x %d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Laue;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Laue;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :goto_3
    return-object v1

    .line 162
    :cond_3
    const-string v0, "VideoRecordingSizeFinder"

    const-string v2, "Preview Size Finding: no good preview size found"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
