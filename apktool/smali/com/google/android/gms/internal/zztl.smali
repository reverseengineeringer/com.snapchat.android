.class public Lcom/google/android/gms/internal/zztl;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/internal/zzte;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzFO:Ljava/lang/String;

.field private final zzauc:Lcom/google/android/gms/internal/zzti;

.field private final zzaud:Lcom/google/android/gms/internal/zztg;

.field private zzaue:Z

.field private final zznh:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/zzti;Lcom/google/android/gms/common/internal/zzf;)V
    .locals 7

    const/16 v3, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzFO:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzti;

    iput-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzauc:Lcom/google/android/gms/internal/zzti;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzauc:Lcom/google/android/gms/internal/zzti;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzti;->zza(Lcom/google/android/gms/internal/zztl;)V

    new-instance v0, Lcom/google/android/gms/internal/zztg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzaud:Lcom/google/android/gms/internal/zztg;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztl;->zznh:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zztl;->zzaue:Z

    return-void
.end method

.method private zzc(Lcom/google/android/gms/internal/zztj;Lcom/google/android/gms/internal/zztf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzaud:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zztg;->zza(Lcom/google/android/gms/internal/zztj;Lcom/google/android/gms/internal/zztf;)V

    return-void
.end method

.method private zzd(Lcom/google/android/gms/internal/zztj;Lcom/google/android/gms/internal/zztf;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zztl;->zzrI()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztl;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzte;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztl;->zzFO:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzte;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zztj;Lcom/google/android/gms/internal/zztf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zztl;->zzc(Lcom/google/android/gms/internal/zztj;Lcom/google/android/gms/internal/zztf;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zztl;->zzc(Lcom/google/android/gms/internal/zztj;Lcom/google/android/gms/internal/zztf;)V

    goto :goto_0
.end method

.method private zzrI()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztl;->zzaue:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzN(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzaud:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zztl;->zzaud:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zztg;->zzrG()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztg$zza;

    iget-object v1, v0, Lcom/google/android/gms/internal/zztg$zza;->zzatT:Lcom/google/android/gms/internal/zzxf$zzd;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztl;->zzjb()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzte;

    iget-object v5, p0, Lcom/google/android/gms/internal/zztl;->zzFO:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/zztg$zza;->zzatR:Lcom/google/android/gms/internal/zztj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zztg$zza;->zzatT:Lcom/google/android/gms/internal/zzxf$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzwy;->zzf(Lcom/google/android/gms/internal/zzwy;)[B

    move-result-object v0

    invoke-interface {v1, v5, v6, v0}, Lcom/google/android/gms/internal/zzte;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zztj;[B)V

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/zztg$zza;->zzatR:Lcom/google/android/gms/internal/zztj;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zztj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/zztg$zza;->zzatS:Lcom/google/android/gms/internal/zztf;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztl;->zzjb()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzte;

    iget-object v5, p0, Lcom/google/android/gms/internal/zztl;->zzFO:Ljava/lang/String;

    invoke-interface {v1, v5, v2, v3}, Lcom/google/android/gms/internal/zzte;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zztj;Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/zztg$zza;->zzatR:Lcom/google/android/gms/internal/zztj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zztg$zza;->zzatS:Lcom/google/android/gms/internal/zztf;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztl;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzte;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztl;->zzFO:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzte;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zztj;Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzaud:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztg;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public start()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zztl;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztl;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzauc:Lcom/google/android/gms/internal/zzti;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzti;->zzad(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztl;->connect()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zztl;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzauc:Lcom/google/android/gms/internal/zzti;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzti;->zzad(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztl;->disconnect()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method zzae(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zztl;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztl;->zzaue:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zztl;->zzaue:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztl;->zzaue:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztl;->zzrI()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zztj;Lcom/google/android/gms/internal/zztf;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zztl;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztl;->zzaue:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zztl;->zzc(Lcom/google/android/gms/internal/zztj;Lcom/google/android/gms/internal/zztf;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zztl;->zzd(Lcom/google/android/gms/internal/zztj;Lcom/google/android/gms/internal/zztf;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzcF()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.playlog.service.START"

    return-object v0
.end method

.method protected zzcG()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    return-object v0
.end method

.method protected zzcv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzte;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzte$zza;->zzcu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzte;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzp(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zztl;->zzcv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzte;

    move-result-object v0

    return-object v0
.end method
