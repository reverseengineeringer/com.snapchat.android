.class Lcom/google/android/gms/internal/zzdf$3;
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
.field final synthetic zzrZ:Lcom/google/android/gms/internal/zzdf;

.field final synthetic zzsb:Lcom/google/android/gms/internal/zzhv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzhv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdf$3;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdf$3;->zzsb:Lcom/google/android/gms/internal/zzhv;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf$3;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdf;->zza(Lcom/google/android/gms/internal/zzdf;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf$3;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdf;->zza(Lcom/google/android/gms/internal/zzdf;I)I

    const-string v0, "Javascript is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzaa(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf$3;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdf;->zzb(Lcom/google/android/gms/internal/zzdf;)Lcom/google/android/gms/internal/zzah;

    move-result-object v2

    const-string v3, "/requestReload"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf$3;->zzsb:Lcom/google/android/gms/internal/zzhv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhv;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcv;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/zzah;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
