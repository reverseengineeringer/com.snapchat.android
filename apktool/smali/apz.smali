.class public final Lapz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lapz;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lapz;

    invoke-direct {v0}, Lapz;-><init>()V

    sput-object v0, Lapz;->a:Lapz;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lapz;->b:Ljava/util/Map;

    .line 41
    return-void
.end method

.method public static a()Lapz;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lapz;->a:Lapz;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 5
    .annotation build Lcdn;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-static {}, Lbhp;->a()V

    iget-object v0, p0, Lapz;->d:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lapz;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v3

    iget-object v0, p0, Lapz;->c:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(ILandroid/view/View;)V
    .locals 4
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lbhp;->a()V

    .line 119
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lapz;->d:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    iget-object v0, p0, Lapz;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 130
    if-nez v0, :cond_1

    .line 131
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 132
    iget-object v2, p0, Lapz;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 136
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 138
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lbhp;->a()V

    .line 51
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lapz;->c:Landroid/view/LayoutInflater;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lapz;->d:Landroid/content/res/Resources;

    .line 53
    return-void
.end method

.method public final b()V
    .locals 2
    .annotation build Lcdn;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-static {}, Lbhp;->a()V

    .line 61
    iget-object v0, p0, Lapz;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    iput-object v1, p0, Lapz;->c:Landroid/view/LayoutInflater;

    .line 64
    iput-object v1, p0, Lapz;->d:Landroid/content/res/Resources;

    .line 65
    return-void
.end method
