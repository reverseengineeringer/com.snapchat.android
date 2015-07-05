.class public Lcom/google/android/gms/internal/zzpf;
.super Lcom/google/android/gms/internal/zzow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpf$zzc;,
        Lcom/google/android/gms/internal/zzpf$zza;,
        Lcom/google/android/gms/internal/zzpf$zzd;,
        Lcom/google/android/gms/internal/zzpf$zzb;
    }
.end annotation


# instance fields
.field private final zzamX:Lcom/google/android/gms/internal/zzpe;

.field private final zzamY:Lcom/google/android/gms/internal/zzot;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzpf;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzpf;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzow;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzpe;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpf;->zzamz:Lcom/google/android/gms/internal/zzpm;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzpe;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzamX:Lcom/google/android/gms/internal/zzpe;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzamz:Lcom/google/android/gms/internal/zzpm;

    invoke-static {p1, p7, p8, v0}, Lcom/google/android/gms/internal/zzot;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzpm;)Lcom/google/android/gms/internal/zzot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzamY:Lcom/google/android/gms/internal/zzot;

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpf;->zzamX:Lcom/google/android/gms/internal/zzpe;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpf;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzamX:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpe;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzamX:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpe;->zzpy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/zzow;->disconnect()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public zzW(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzamX:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpe;->zzW(Z)V

    return-void
.end method

.method public zza(JLandroid/app/PendingIntent;)V
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpf;->zzfc()V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "detectionIntervalMillis must be >= 0"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpf;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpc;

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/google/android/gms/internal/zzpc;->zza(JZLandroid/app/PendingIntent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Landroid/app/PendingIntent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpf;->zzfc()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpf;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzpc;->zza(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public zza(Landroid/app/PendingIntent;Lcom/google/android/gms/location/zzf$zzb;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpf;->zzfc()V

    const-string v0, "PendingIntent must be specified."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OnRemoveGeofencesResultListener not provided."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpf;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpf;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzpc;->zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzpb;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzpf$zzb;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/internal/zzpf$zzb;-><init>(Lcom/google/android/gms/location/zzf$zzb;Lcom/google/android/gms/internal/zzpf;)V

    move-object v1, v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/location/zzf$zza;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpf;->zzfc()V

    const-string v0, "geofencingRequest can\'t be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PendingIntent must be specified."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OnAddGeofencesResultListener not provided."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpf;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpc;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzpc;->zza(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzpb;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzpf$zzb;

    invoke-direct {v0, p3, p0}, Lcom/google/android/gms/internal/zzpf$zzb;-><init>(Lcom/google/android/gms/location/zzf$zza;Lcom/google/android/gms/internal/zzpf;)V

    move-object v1, v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/location/LocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzamX:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpe;->zza(Lcom/google/android/gms/location/LocationListener;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpf;->zzamX:Lcom/google/android/gms/internal/zzpe;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzamX:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzpe;->zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/common/api/zza$zzb;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationSettingsRequest;",
            "Lcom/google/android/gms/common/api/zza$zzb",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpf;->zzfc()V

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "locationSettingsRequest can\'t be null nor empty."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1

    :goto_1
    const-string v0, "listener can\'t be null."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/zzpf$zzd;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzpf$zzd;-><init>(Lcom/google/android/gms/common/api/zza$zzb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpf;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpc;

    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/gms/internal/zzpc;->zza(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/internal/zzpd;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public zza(Ljava/util/List;Lcom/google/android/gms/location/zzf$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/location/zzf$zzb;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpf;->zzfc()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "geofenceRequestIds can\'t be null nor empty."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    const-string v0, "OnRemoveGeofencesResultListener not provided."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez p2, :cond_1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpf;->zzjb()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzpc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpf;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzpc;->zza([Ljava/lang/String;Lcom/google/android/gms/internal/zzpb;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzpf$zzb;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/zzpf$zzb;-><init>(Lcom/google/android/gms/location/zzf$zzb;Lcom/google/android/gms/internal/zzpf;)V

    move-object v2, v1

    goto :goto_1
.end method

.method public zzb(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzamX:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpe;->zzb(Landroid/location/Location;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzamX:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzpe;->zzb(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public zzd(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzamX:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpe;->zzd(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public zzpx()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzamX:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpe;->zzpx()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
