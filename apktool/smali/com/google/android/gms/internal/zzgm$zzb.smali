.class public Lcom/google/android/gms/internal/zzgm$zzb;
.super Lcom/google/android/gms/internal/zzgm;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private final zznh:Ljava/lang/Object;

.field private final zzwk:Lcom/google/android/gms/internal/zzgl$zza;

.field protected zzwl:Lcom/google/android/gms/internal/zzgn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgl$zza;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzgm;-><init>(Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgl$zza;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgm$zzb;->zznh:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgm$zzb;->zzwk:Lcom/google/android/gms/internal/zzgl$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzgn;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzgo;->zzlP:Lcom/google/android/gms/internal/zzhy;

    iget v1, v1, Lcom/google/android/gms/internal/zzhy;->zzzJ:I

    invoke-direct {v0, p1, p0, p0, v1}, Lcom/google/android/gms/internal/zzgn;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgm$zzb;->zzwl:Lcom/google/android/gms/internal/zzgn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgm$zzb;->connect()V

    return-void
.end method


# virtual methods
.method protected connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm$zzb;->zzwl:Lcom/google/android/gms/internal/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgn;->connect()V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgm$zzb;->start()V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm$zzb;->zzwk:Lcom/google/android/gms/internal/zzgl$zza;

    new-instance v1, Lcom/google/android/gms/internal/zzgq;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzgq;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgl$zza;->zzb(Lcom/google/android/gms/internal/zzgq;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    const-string v0, "Disconnected from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    return-void
.end method

.method public zzdJ()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgm$zzb;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm$zzb;->zzwl:Lcom/google/android/gms/internal/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgn;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm$zzb;->zzwl:Lcom/google/android/gms/internal/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgn;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm$zzb;->zzwl:Lcom/google/android/gms/internal/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgn;->disconnect()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzdK()Lcom/google/android/gms/internal/zzgs;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgm$zzb;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm$zzb;->zzwl:Lcom/google/android/gms/internal/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgn;->zzdL()Lcom/google/android/gms/internal/zzgs;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
