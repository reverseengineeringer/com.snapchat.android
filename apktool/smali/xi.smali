.class public final Lxi;
.super Lxm;
.source "SourceFile"


# instance fields
.field private final a:Lyc;


# direct methods
.method public constructor <init>(Lyc;)V
    .locals 0
    .param p1    # Lyc;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0}, Lxm;-><init>()V

    .line 41
    iput-object p1, p0, Lxi;->a:Lyc;

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
            "Lavc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lavc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lavc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    invoke-static {p1}, Lxi;->c(Ljava/util/List;)Ljava/util/Set;

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

    check-cast v0, Lavc;

    .line 116
    invoke-virtual {v0}, Lavc;->c()D

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
        .annotation build Lchc;
        .end annotation
    .end param
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
    .line 133
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lxi;->b(Ljava/util/List;)Ljava/util/List;

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

    check-cast v0, Lavc;

    invoke-virtual {v0}, Lavc;->e()Z

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

    invoke-static {}, Lyc;->b()Ljava/util/Collection;

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
            "Lavc;",
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

    check-cast v0, Lavc;

    .line 126
    invoke-virtual {v0}, Lavc;->c()D

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
            "Lavc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lavc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    invoke-static {v0}, Lxi;->a(Ljava/util/List;)V

    .line 194
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/hardware/Camera$Parameters;D)Lavc;
    .locals 4
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 89
    invoke-static {p1, v2}, Lxi;->a(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-static {p1, v2}, Lxi;->b(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v1

    .line 94
    invoke-static {v1, v0}, Lxi;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lxi;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0, p2, p3, v2}, Lxi;->a(Ljava/util/List;DZ)Lavc;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/hardware/Camera$Parameters;IDZ)Lavc;
    .locals 5
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v4

    .line 59
    invoke-super/range {p0 .. p5}, Lxm;->a(Landroid/hardware/Camera$Parameters;IDZ)Lavc;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lavc;->c()D

    move-result-wide v2

    invoke-static {p1, v4}, Lxi;->a(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v4}, Lxi;->b(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lxi;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lxi;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    invoke-virtual {p0, v0, v2, v3, p5}, Lxi;->a(Ljava/util/List;DZ)Lavc;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
