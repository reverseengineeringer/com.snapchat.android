.class public final Latk;
.super Lati;
.source "SourceFile"


# instance fields
.field final a:Laiy;

.field private final b:Last;

.field private final c:Lasw;

.field private d:Lcom/snapchat/android/model/Mediabryo$SnapType;


# direct methods
.method private constructor <init>(Laiy;Last;Lasw;Lcom/snapchat/android/model/Mediabryo$SnapType;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lati;-><init>()V

    .line 54
    iput-object p1, p0, Latk;->a:Laiy;

    .line 55
    iput-object p2, p0, Latk;->b:Last;

    .line 56
    iput-object p3, p0, Latk;->c:Lasw;

    .line 57
    iput-object p4, p0, Latk;->d:Lcom/snapchat/android/model/Mediabryo$SnapType;

    .line 58
    return-void
.end method

.method private constructor <init>(Laiy;Last;Lcom/snapchat/android/model/Mediabryo$SnapType;)V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lasw;

    invoke-direct {v0}, Lasw;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Latk;-><init>(Laiy;Last;Lasw;Lcom/snapchat/android/model/Mediabryo$SnapType;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/Mediabryo$SnapType;)V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Laiz;->a()Laiz;

    move-result-object v0

    new-instance v1, Lasx;

    invoke-direct {v1}, Lasx;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Latk;-><init>(Laiy;Last;Lcom/snapchat/android/model/Mediabryo$SnapType;)V

    .line 41
    return-void
.end method

.method static a(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lasm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Have "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " geofilters returned from server"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    check-cast v0, Lajr;

    .line 152
    new-instance v3, Lata;

    new-instance v4, Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-direct {v4, p1, v0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;-><init>(Landroid/content/Context;Lajr;)V

    invoke-direct {v3, v0, v4}, Lata;-><init>(Lajr;Lcom/snapchat/android/ui/smartfilters/GeofilterView;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "createFilterPagesForGeofilters has "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " current geofilters"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    return-object v1
.end method


# virtual methods
.method final a(Lasv;Lcom/snapchat/android/ui/SwipeImageView;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lasv",
            "<",
            "Lasm;",
            ">;",
            "Lcom/snapchat/android/ui/SwipeImageView;",
            "Ljava/util/List",
            "<",
            "Lasm;",
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

    check-cast v0, Lasm;

    .line 126
    instance-of v1, v0, Lata;

    if-eqz v1, :cond_1

    iget-object v1, p0, Latk;->d:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v3, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v1, v3, :cond_1

    move-object v1, v0

    check-cast v1, Lata;

    iget-object v1, v1, Lata;->b:Lajr;

    iget-boolean v1, v1, Lajr;->mIsSponsored:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    .line 127
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasm;

    invoke-virtual {p1, v1}, Lasv;->a(Lasm;)V

    .line 128
    iget-object v1, p0, Latk;->b:Last;

    invoke-interface {v1, v0}, Last;->a(Lasm;)V

    .line 129
    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/SwipeImageView;->a(Lasm;)V

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

.method public final a(Lcom/snapchat/android/ui/SwipeImageView;Lasv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/ui/SwipeImageView;",
            "Lasv",
            "<",
            "Lasm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Latk$1;

    invoke-direct {v0, p0, p1, p2}, Latk$1;-><init>(Latk;Lcom/snapchat/android/ui/SwipeImageView;Lasv;)V

    invoke-static {v0}, Lbhp;->b(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
