.class Lcom/google/android/gms/internal/zzgy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzgy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzxB:Lcom/google/android/gms/internal/zzgy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgy$1;->zzxB:Lcom/google/android/gms/internal/zzgy;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy$1;->zzxB:Lcom/google/android/gms/internal/zzgy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgy;->zza(Lcom/google/android/gms/internal/zzgy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy$1;->zzxB:Lcom/google/android/gms/internal/zzgy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgy;->zzb(Lcom/google/android/gms/internal/zzgy;)Lcom/google/android/gms/internal/zzhq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhq;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy$1;->zzxB:Lcom/google/android/gms/internal/zzgy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgy;->zzc(Lcom/google/android/gms/internal/zzgy;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "request_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/zzha;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p2}, Lcom/google/android/gms/internal/zzha;-><init>(ILjava/util/Map;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzha;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzha;->zzdU()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgy$1;->zzxB:Lcom/google/android/gms/internal/zzgy;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzgy;->zzb(Lcom/google/android/gms/internal/zzgy;)Lcom/google/android/gms/internal/zzhq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzhq;->zzb(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
