.class public final Lwm;
.super Lwq;
.source "SourceFile"


# instance fields
.field private final a:Lxg;


# direct methods
.method public constructor <init>(Lxg;)V
    .locals 0
    .param p1    # Lxg;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0}, Lwq;-><init>()V

    .line 41
    iput-object p1, p0, Lwm;->a:Lxg;

    .line 42
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laue;",
            ">;",
            "Ljava/util/List",
            "<",
            "Laue;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Laue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    invoke-static {p1}, Lwm;->c(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 114
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laue;

    .line 116
    invoke-virtual {v0}, Laue;->c()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 120
    :cond_1
    return-object v1
.end method

.method private static b(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;
    .locals 3
    .param p0    # Landroid/hardware/Camera$Parameters;
        .annotation build Lcgb;
        .end annotation
    .end param
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
    .line 133
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lwm;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 135
    if-eqz p1, :cond_2

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laue;

    invoke-virtual {v0}, Laue;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 138
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lxg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 139
    return-object v1
.end method

.method private static c(Ljava/util/List;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laue;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 125
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laue;

    .line 126
    invoke-virtual {v0}, Laue;->c()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_0
    return-object v1
.end method

.method private static d(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laue;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Laue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    invoke-static {v0}, Lwm;->a(Ljava/util/List;)V

    .line 194
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/hardware/Camera$Parameters;D)Laue;
    .locals 4
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 89
    const-string v0, "CameraPreviewSizeFinder"

    const-string v1, "Preview Size Finding: finding best HQ preview"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-static {p1, v3}, Lwm;->a(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-static {p1, v3}, Lwm;->b(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v1

    .line 94
    invoke-static {v1, v0}, Lwm;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lwm;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0, p2, p3, v3}, Lwm;->a(Ljava/util/List;DZ)Laue;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/hardware/Camera$Parameters;IDZ)Laue;
    .locals 7
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 58
    const-string v0, "CameraPreviewSizeFinder"

    const-string v1, "Preview Size Finding: finding best fit preview size for AspectRatio[%f]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-super/range {p0 .. p5}, Lwq;->a(Landroid/hardware/Camera$Parameters;IDZ)Laue;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Laue;->c()D

    move-result-wide v2

    invoke-static {p1, v5}, Lwm;->a(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v5}, Lwm;->b(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lwm;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lwm;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    const-string v1, "CameraPreviewSizeFinder"

    const-string v4, "Preview Size Finding: finding best preview size from list of supported preview sizes"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v2, v3, p5}, Lwm;->a(Ljava/util/List;DZ)Laue;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
