.class Lcom/google/android/gms/common/api/zzd$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/zzd;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzNb:Lcom/google/android/gms/common/api/zzd;

.field final synthetic zzNi:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNb:Lcom/google/android/gms/common/api/zzd;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNi:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/zzd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNb:Lcom/google/android/gms/common/api/zzd;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNi:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/zzd;->zzd(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNb:Lcom/google/android/gms/common/api/zzd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/zzd;->zze(Lcom/google/android/gms/common/api/zzd;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/api/zzd;->zzp(Lcom/google/android/gms/common/api/zzd;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v1}, Lcom/google/android/gms/common/api/zzd;->zzq(Lcom/google/android/gms/common/api/zzd;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zza;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zza;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zza;->disconnect()V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v1}, Lcom/google/android/gms/common/api/zzd;->zzm(Lcom/google/android/gms/common/api/zzd;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v1}, Lcom/google/android/gms/common/api/zzd;->zzm(Lcom/google/android/gms/common/api/zzd;)Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v1}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/zzd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNb:Lcom/google/android/gms/common/api/zzd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/zzd;->zze(Lcom/google/android/gms/common/api/zzd;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/api/zzd;->zzr(Lcom/google/android/gms/common/api/zzd;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/zzd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNb:Lcom/google/android/gms/common/api/zzd;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd$13;->zzNi:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/zzd;->zze(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
