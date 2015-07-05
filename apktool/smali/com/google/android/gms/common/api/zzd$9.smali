.class Lcom/google/android/gms/common/api/zzd$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/Api;I)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzNb:Lcom/google/android/gms/common/api/zzd;

.field final synthetic zzNf:I

.field final synthetic zzNg:Lcom/google/android/gms/common/api/Api;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/zzd;ILcom/google/android/gms/common/api/Api;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNb:Lcom/google/android/gms/common/api/zzd;

    iput p2, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNf:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNg:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/zzd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzd;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/zzd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNf:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNg:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzhT()Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzb;->getPriority()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNb:Lcom/google/android/gms/common/api/zzd;

    iget v2, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNf:I

    invoke-static {v1, v0, v2, p1}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/zzd;IILcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/api/zzd;->zzb(Lcom/google/android/gms/common/api/zzd;I)I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/api/zzd;->zzm(Lcom/google/android/gms/common/api/zzd;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNg:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Api;->zzhV()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/api/zzd;->zzc(Lcom/google/android/gms/common/api/zzd;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/zzd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd$9;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v1}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/zzd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
