.class Lcom/google/android/gms/internal/zzdf$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdf;->zza(Lcom/google/android/gms/internal/zzia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzrY:Lcom/google/android/gms/internal/zzia;

.field final synthetic zzrZ:Lcom/google/android/gms/internal/zzdf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzia;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrY:Lcom/google/android/gms/internal/zzia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzic;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzic;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdf;->zza(Lcom/google/android/gms/internal/zzdf;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrY:Lcom/google/android/gms/internal/zzia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzia;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrY:Lcom/google/android/gms/internal/zzia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzia;->getStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrY:Lcom/google/android/gms/internal/zzia;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdf;->zzb(Lcom/google/android/gms/internal/zzdf;)Lcom/google/android/gms/internal/zzah;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzia;->zzc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrY:Lcom/google/android/gms/internal/zzia;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdf;->zzc(Lcom/google/android/gms/internal/zzdf;)Lcom/google/android/gms/internal/zzia$zzd;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzia$zzb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzia$zzb;-><init>()V

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzia;->zza(Lcom/google/android/gms/internal/zzia$zzd;Lcom/google/android/gms/internal/zzia$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdf;->zza(Lcom/google/android/gms/internal/zzdf;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrY:Lcom/google/android/gms/internal/zzia;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdf;->zzd(Lcom/google/android/gms/internal/zzdf;)Lcom/google/android/gms/internal/zzia;

    move-result-object v2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdf;->zzd(Lcom/google/android/gms/internal/zzdf;)Lcom/google/android/gms/internal/zzia;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzdf;->zzd(Lcom/google/android/gms/internal/zzia;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrY:Lcom/google/android/gms/internal/zzia;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdf;->zza(Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzia;)Lcom/google/android/gms/internal/zzia;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdf$2;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdf;->zzd(Lcom/google/android/gms/internal/zzdf;)Lcom/google/android/gms/internal/zzia;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzdf;->zzc(Lcom/google/android/gms/internal/zzia;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
