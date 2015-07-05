.class Lcom/google/android/gms/internal/zzra$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzase:Lcom/google/android/gms/internal/zzqx;

.field final synthetic zzasf:Lcom/google/android/gms/internal/zzra;


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->zzase:Lcom/google/android/gms/internal/zzqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqx;->zzqT()Lcom/google/android/gms/internal/zzqz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra$1;->zzase:Lcom/google/android/gms/internal/zzqx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqz;->zzb(Lcom/google/android/gms/internal/zzqx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->zzasf:Lcom/google/android/gms/internal/zzra;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzra;->zza(Lcom/google/android/gms/internal/zzra;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra$1;->zzase:Lcom/google/android/gms/internal/zzqx;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzrb;->zzb(Lcom/google/android/gms/internal/zzqx;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->zzasf:Lcom/google/android/gms/internal/zzra;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra$1;->zzase:Lcom/google/android/gms/internal/zzqx;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzra;->zza(Lcom/google/android/gms/internal/zzra;Lcom/google/android/gms/internal/zzqx;)V

    return-void
.end method
