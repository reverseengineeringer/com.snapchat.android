.class public final Lasl;
.super Lasj;
.source "SourceFile"


# instance fields
.field final a:Laic;

.field private final b:Laru;

.field private final c:Larx;

.field private d:Lcom/snapchat/android/model/Mediabryo$SnapType;


# direct methods
.method private constructor <init>(Laic;Laru;Larx;Lcom/snapchat/android/model/Mediabryo$SnapType;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lasj;-><init>()V

    .line 54
    iput-object p1, p0, Lasl;->a:Laic;

    .line 55
    iput-object p2, p0, Lasl;->b:Laru;

    .line 56
    iput-object p3, p0, Lasl;->c:Larx;

    .line 57
    iput-object p4, p0, Lasl;->d:Lcom/snapchat/android/model/Mediabryo$SnapType;

    .line 58
    return-void
.end method

.method private constructor <init>(Laic;Laru;Lcom/snapchat/android/model/Mediabryo$SnapType;)V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Larx;

    invoke-direct {v0}, Larx;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lasl;-><init>(Laic;Laru;Larx;Lcom/snapchat/android/model/Mediabryo$SnapType;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/Mediabryo$SnapType;)V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Laid;->a()Laid;

    move-result-object v0

    new-instance v1, Lary;

    invoke-direct {v1}, Lary;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lasl;-><init>(Laic;Laru;Lcom/snapchat/android/model/Mediabryo$SnapType;)V

    .line 41
    return-void
.end method

.method static a(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laiv;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Larn;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 148
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 149
    const-string v1, "RefreshGeofilterPagesOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Have "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " geofilters returned from server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiv;

    .line 152
    new-instance v3, Lasb;

    new-instance v4, Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-direct {v4, p1, v0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;-><init>(Landroid/content/Context;Laiv;)V

    invoke-direct {v3, v0, v4}, Lasb;-><init>(Laiv;Lcom/snapchat/android/ui/smartfilters/GeofilterView;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_0
    const-string v0, "RefreshGeofilterPagesOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createFilterPagesForGeofilters has "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current geofilters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    return-object v1
.end method


# virtual methods
.method final a(Larw;Lcom/snapchat/android/ui/SwipeImageView;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Larw",
            "<",
            "Larn;",
            ">;",
            "Lcom/snapchat/android/ui/SwipeImageView;",
            "Ljava/util/List",
            "<",
            "Larn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    .line 125
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larn;

    .line 126
    instance-of v1, v0, Lasb;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lasl;->d:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v3, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v1, v3, :cond_1

    move-object v1, v0

    check-cast v1, Lasb;

    iget-object v1, v1, Lasb;->b:Laiv;

    iget-boolean v1, v1, Laiv;->mIsSponsored:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    .line 127
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Larn;

    invoke-virtual {p1, v1}, Larw;->a(Larn;)V

    .line 128
    iget-object v1, p0, Lasl;->b:Laru;

    invoke-interface {v1, v0}, Laru;->a(Larn;)V

    .line 129
    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/SwipeImageView;->a(Larn;)V

    .line 124
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 132
    :cond_2
    return-void
.end method

.method public final a(Lcom/snapchat/android/ui/SwipeImageView;Larw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/ui/SwipeImageView;",
            "Larw",
            "<",
            "Larn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lasl$1;

    invoke-direct {v0, p0, p1, p2}, Lasl$1;-><init>(Lasl;Lcom/snapchat/android/ui/SwipeImageView;Larw;)V

    invoke-static {v0}, Lbgp;->b(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
