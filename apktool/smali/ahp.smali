.class public final Lahp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation runtime Lbwr;
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/location/LocationManager;

.field c:Ljava/lang/Object;

.field d:Z

.field volatile e:Z

.field private final f:Lcom/squareup/otto/Bus;

.field private final g:Landroid/os/Looper;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/LocationManager;Landroid/os/Looper;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/location/LocationManager;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lahp;-><init>(Ljava/lang/String;Landroid/location/LocationManager;Lcom/squareup/otto/Bus;Landroid/os/Looper;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/location/LocationManager;Lcom/squareup/otto/Bus;Landroid/os/Looper;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/location/LocationManager;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lahp;->c:Ljava/lang/Object;

    .line 41
    iput-boolean v1, p0, Lahp;->d:Z

    .line 43
    iput-boolean v1, p0, Lahp;->e:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lahp;->h:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lahp;->a:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lahp;->b:Landroid/location/LocationManager;

    .line 53
    iput-object p3, p0, Lahp;->f:Lcom/squareup/otto/Bus;

    .line 54
    iput-object p4, p0, Lahp;->g:Landroid/os/Looper;

    .line 55
    return-void
.end method

.method private c()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 163
    .line 165
    :try_start_0
    iget-object v1, p0, Lahp;->b:Landroid/location/LocationManager;

    iget-object v2, p0, Lahp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 169
    :goto_0
    return v0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    const-string v2, "LocationListener"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 11
    .annotation build Lcaq;
    .end annotation

    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 63
    invoke-static {}, Lbgp;->b()V

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 66
    iget-object v4, p0, Lahp;->h:Ljava/util/List;

    monitor-enter v4

    .line 67
    :try_start_0
    iget-object v0, p0, Lahp;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 69
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, 0xea60

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 70
    const-string v6, "LocationListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lahp;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " removing location because it is stale "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v0, v7}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 72
    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 74
    :cond_1
    const-string v1, "LocationListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lahp;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " new best location "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move-object v1, v0

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    const-string v2, "LocationListener"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lahp;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " has best location of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_3

    const-string v0, "null"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-object v1

    .line 78
    :cond_3
    invoke-virtual {v1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final b()V
    .locals 8
    .annotation build Lcaq;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 121
    invoke-static {}, Lbgp;->b()V

    .line 122
    iput-boolean v0, p0, Lahp;->e:Z

    .line 123
    iget-object v7, p0, Lahp;->c:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-boolean v0, p0, Lahp;->d:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lahp;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lahp;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lahp;->a:Ljava/lang/String;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v6, p0, Lahp;->g:Landroid/os/Looper;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lahp;->d:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v7

    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationListener"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "LocationListener"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lahp;->h:Ljava/util/List;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lahp;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lahp;->f:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdu;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-direct {v1, v2}, Lbdu;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 138
    :cond_0
    const-string v0, "LocationListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New location on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lahp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    return-void

    .line 134
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lahp;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lahp;->d:Z

    .line 159
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lahp;->e:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lahp;->b()V

    .line 153
    :cond_0
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method
