.class public final Lajq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mId:Ljava/lang/String;

.field final mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbiz;)V
    .locals 8
    .param p1    # Lbiz;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lajq;->mPoints:Ljava/util/List;

    .line 19
    invoke-virtual {p1}, Lbiz;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajq;->mId:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lbiz;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbip;

    .line 21
    iget-object v2, p0, Lajq;->mPoints:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lbip;->a()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0}, Lbip;->b()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)Z
    .locals 12
    .param p1    # Landroid/location/Location;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 39
    const-wide/16 v2, 0x0

    .line 41
    const/4 v0, 0x0

    move-wide v4, v2

    move v2, v0

    :goto_0
    iget-object v0, p0, Lajq;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 42
    iget-object v0, p0, Lajq;->mPoints:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 43
    iget-object v1, p0, Lajq;->mPoints:Ljava/util/List;

    add-int/lit8 v3, v2, 0x1

    iget-object v6, p0, Lajq;->mPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr v3, v6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 45
    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    .line 46
    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    sub-double/2addr v8, v10

    .line 47
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 49
    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    .line 50
    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    sub-double/2addr v8, v10

    .line 51
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 53
    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v0, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double/2addr v0, v6

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr v0, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpl-double v3, v0, v6

    if-ltz v3, :cond_1

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    sub-double/2addr v0, v6

    :cond_0
    :goto_1
    add-double/2addr v4, v0

    .line 41
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 53
    :cond_1
    const-wide v6, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v3, v0, v6

    if-gez v3, :cond_0

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v6

    goto :goto_1

    .line 56
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
