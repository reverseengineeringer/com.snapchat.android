.class public Lxm;
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

.method public static a(Landroid/hardware/Camera$Parameters;)Lavc;
    .locals 4

    .prologue
    .line 200
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lxm;->a(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

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

    check-cast v0, Lavc;

    .line 202
    invoke-virtual {v0}, Lavc;->b()I

    move-result v2

    const/16 v3, 0x1e0

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lavc;->a()I

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lavc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 87
    :cond_0
    if-nez v0, :cond_2

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    :cond_1
    :goto_0
    return-object v0

    .line 92
    :cond_2
    invoke-static {v0}, Lxm;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 94
    if-eqz p1, :cond_1

    .line 95
    invoke-static {v0}, Lxm;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected static a(Ljava/util/List;)V
    .locals 6
    .param p0    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lavc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 108
    new-instance v0, Lyd;

    invoke-direct {v0}, Lyd;-><init>()V

    new-instance v2, Lavc;

    iget v3, v0, Lyd;->widthPixels:I

    iget v0, v0, Lyd;->heightPixels:I

    invoke-direct {v2, v3, v0}, Lavc;-><init>(II)V

    .line 109
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavc;

    .line 111
    invoke-virtual {v0, v2}, Lavc;->a(Lavc;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lavc;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lavc;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

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
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
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
            "Lavc;",
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
    new-instance v3, Lavc;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v0}, Lavc;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Landroid/hardware/Camera$Parameters;IDZ)Lavc;
    .locals 5
    .annotation build Lchc;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 50
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    .line 51
    invoke-static {p1, v3}, Lxm;->a(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-virtual {p0, v0, p3, p4, p5}, Lxm;->a(Ljava/util/List;DZ)Lavc;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/util/List;DZ)Lavc;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lavc;",
            ">;DZ)",
            "Lavc;"
        }
    .end annotation

    .prologue
    .line 137
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 138
    const/4 v1, 0x0

    .line 140
    new-instance v0, Lxm$1;

    invoke-direct {v0, p0}, Lxm$1;-><init>(Lxm;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v0, v4

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavc;

    .line 144
    invoke-virtual {v0}, Lavc;->c()D

    move-result-wide v4

    sub-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 145
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lavc;->a()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Lavc;->b()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x2

    invoke-virtual {v0}, Lavc;->c()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v8

    .line 148
    cmpg-double v6, v4, v2

    if-ltz v6, :cond_0

    if-nez p4, :cond_4

    if-eqz v0, :cond_1

    cmpl-double v6, v4, v2

    if-gtz v6, :cond_1

    invoke-virtual {v0}, Lavc;->b()I

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
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lavc;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Lavc;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 162
    :cond_3
    return-object v1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
