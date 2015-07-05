.class public final Lahs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpt$a;


# static fields
.field private static e:Lahs;


# instance fields
.field public final a:Laid;

.field public final b:Lajq;

.field public c:Landroid/location/Location;

.field public d:Ljava/lang/String;

.field private final f:Lahr;

.field private final g:Ltw;

.field private final h:Laht;

.field private i:Lcgs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lahs;

    invoke-direct {v0}, Lahs;-><init>()V

    sput-object v0, Lahs;->e:Lahs;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 42
    invoke-static {}, Lahr;->a()Lahr;

    move-result-object v1

    invoke-static {}, Laid;->a()Laid;

    move-result-object v2

    new-instance v3, Ltw;

    invoke-direct {v3}, Ltw;-><init>()V

    invoke-static {}, Laht;->a()Laht;

    move-result-object v4

    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lahs;-><init>(Lahr;Laid;Ltw;Laht;Lajq;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Lahr;Laid;Ltw;Laht;Lajq;)V
    .locals 2
    .param p1    # Lahr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laid;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ltw;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Laht;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lajq;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lahs;->c:Landroid/location/Location;

    .line 38
    new-instance v0, Lcgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcgs;-><init>(B)V

    iput-object v0, p0, Lahs;->i:Lcgs;

    .line 39
    const-string v0, "{}"

    iput-object v0, p0, Lahs;->d:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lahs;->f:Lahr;

    .line 52
    iput-object p2, p0, Lahs;->a:Laid;

    .line 53
    iput-object p3, p0, Lahs;->g:Ltw;

    .line 54
    iput-object p4, p0, Lahs;->h:Laht;

    .line 55
    iput-object p5, p0, Lahs;->b:Lajq;

    .line 56
    return-void
.end method

.method public static c()Lahs;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lahs;->e:Lahs;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lahs;->a:Laid;

    iget-object v0, v0, Laid;->a:Laie;

    invoke-static {}, Lcgs;->c()Lcgs;

    move-result-object v1

    iget-object v2, v0, Laie;->e:Lcgs;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcgs;->b(I)Lcgs;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcgs;->c(Lchb;)Z

    move-result v2

    iput-object v1, v0, Laie;->e:Lcgs;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Laie;->a()V

    .line 177
    :cond_0
    return-void
.end method

.method public final a(Laka;)V
    .locals 2
    .param p1    # Laka;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lbgp;->b()V

    .line 150
    iget-object v0, p0, Lahs;->h:Laht;

    iget-object v1, v0, Laht;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, v0, Laht;->b:Laka;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 181
    new-instance v0, Lahs$2;

    invoke-direct {v0, p0, p1}, Lahs$2;-><init>(Lahs;Ljava/lang/String;)V

    invoke-static {v0}, Lbgp;->b(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laiv;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 156
    invoke-static {}, Lbgp;->b()V

    .line 157
    const-string v0, "LocationRequestController"

    const-string v1, "onReceivedGeofiltersData"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v1, p0, Lahs;->a:Laid;

    const-string v0, "GeofilterProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceivedGeofiltersData "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Laid;->a:Laie;

    invoke-virtual {v0}, Laie;->d()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiv;

    iget-object v3, v1, Laid;->a:Laie;

    invoke-static {}, Lcgs;->c()Lcgs;

    move-result-object v4

    iput-object v4, v3, Laie;->e:Lcgs;

    iget-object v3, v3, Laie;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, v1, Laid;->a:Laie;

    invoke-virtual {v0}, Laie;->a()V

    .line 159
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lahs$1;

    invoke-direct {v0, p0}, Lahs$1;-><init>(Lahs;)V

    invoke-static {v0}, Lbgp;->b(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lbgp;->b()V

    .line 192
    iput-object p1, p0, Lahs;->d:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lahs;->f:Lahr;

    invoke-virtual {v0}, Lahr;->d()Landroid/location/Location;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    iget-object v1, p0, Lahs;->c:Landroid/location/Location;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lahs;->c:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lahs;->d()V

    .line 198
    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lahs;->b:Lajq;

    invoke-virtual {v0, p1}, Lajq;->a(Ljava/util/List;)V

    .line 164
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laiv;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-static {}, Lbgp;->b()V

    .line 170
    const-string v0, "LocationRequestController"

    const-string v1, "onReceivedCachableGeofiltersData"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v1, p0, Lahs;->a:Laid;

    const-string v0, "GeofilterProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceivedCachableGeofiltersData "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiv;

    iget-object v3, v1, Laid;->b:Laib;

    invoke-virtual {v3, v0}, Laib;->a(Laiv;)V

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method protected final declared-synchronized d()V
    .locals 9
    .annotation build Lcaq;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lbgp;->b()V

    .line 81
    iget-object v2, p0, Lahs;->f:Lahr;

    invoke-virtual {v2}, Lahr;->d()Landroid/location/Location;

    move-result-object v3

    .line 82
    const-string v2, "LocationRequestController"

    const-string v4, "App is requestion to update geofilters"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    if-nez v3, :cond_0

    .line 85
    const-string v0, "LocationRequestController"

    const-string v1, "No location to update with"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 89
    :cond_0
    :try_start_1
    iget-object v2, p0, Lahs;->i:Lcgs;

    if-nez v2, :cond_3

    move v2, v0

    :goto_1
    if-nez v2, :cond_4

    move v2, v0

    :goto_2
    const-string v4, "LocationRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "currentLocationIsValid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_a

    iget-object v2, p0, Lahs;->c:Landroid/location/Location;

    if-eqz v2, :cond_1

    if-nez v3, :cond_5

    :cond_1
    move v2, v1

    :goto_3
    if-eqz v2, :cond_a

    iget-object v2, p0, Lahs;->c:Landroid/location/Location;

    if-eqz v2, :cond_2

    if-nez v3, :cond_8

    :cond_2
    move v2, v1

    :goto_4
    if-eqz v2, :cond_a

    :goto_5
    const-string v1, "LocationRequestController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isCurrentLocationBetter "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_b

    .line 90
    const-string v0, "LocationRequestController"

    const-string v1, "Current location is better"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89
    :cond_3
    :try_start_2
    new-instance v2, Lcgs;

    invoke-direct {v2}, Lcgs;-><init>()V

    iget-object v4, p0, Lahs;->i:Lcgs;

    iget-object v5, v4, Lcgs;->b:Lcgf;

    invoke-virtual {v5}, Lcgf;->f()Lcgm;

    move-result-object v5

    iget-wide v6, v4, Lcgs;->a:J

    const/16 v8, 0x78

    invoke-virtual {v5, v6, v7, v8}, Lcgm;->a(JI)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcgs;->a(J)Lcgs;

    move-result-object v4

    const-string v5, "LocationRequestController"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Now: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " aged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcgs;->b(Lchb;)Z

    move-result v2

    goto/16 :goto_1

    :cond_4
    move v2, v1

    goto/16 :goto_2

    :cond_5
    iget-object v2, p0, Lahs;->c:Landroid/location/Location;

    invoke-virtual {v2, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    iget-object v4, p0, Lahs;->c:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    cmpg-float v4, v2, v4

    if-lez v4, :cond_6

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_7

    :cond_6
    move v2, v0

    :goto_6
    const-string v4, "LocationRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "currentLocationAndNewLocationAreClose:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_7
    move v2, v1

    goto :goto_6

    :cond_8
    iget-object v2, p0, Lahs;->c:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_9

    move v2, v0

    :goto_7
    const-string v4, "LocationRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "currentLocationHasBetterAccuracy:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_9
    move v2, v1

    goto :goto_7

    :cond_a
    move v0, v1

    goto/16 :goto_5

    .line 93
    :cond_b
    const-string v0, "LocationRequestController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating request with location: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    new-instance v0, Lcgs;

    invoke-direct {v0}, Lcgs;-><init>()V

    iput-object v0, p0, Lahs;->i:Lcgs;

    .line 95
    iput-object v3, p0, Lahs;->c:Landroid/location/Location;

    .line 97
    new-instance v0, Lpt;

    iget-object v1, p0, Lahs;->d:Ljava/lang/String;

    invoke-direct {v0, p0, v3, v1}, Lpt;-><init>(Lpt$a;Landroid/location/Location;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ltv;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
