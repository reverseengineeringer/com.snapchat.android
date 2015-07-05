.class Lcom/google/android/gms/internal/zzdn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdn;->zzb(JJ)Lcom/google/android/gms/internal/zzdo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzsI:Lcom/google/android/gms/internal/zzdm;

.field final synthetic zzsJ:Lcom/google/android/gms/internal/zzdn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdn;Lcom/google/android/gms/internal/zzdm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdn$1;->zzsJ:Lcom/google/android/gms/internal/zzdn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdn$1;->zzsI:Lcom/google/android/gms/internal/zzdm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn$1;->zzsJ:Lcom/google/android/gms/internal/zzdn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdn;->zza(Lcom/google/android/gms/internal/zzdn;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn$1;->zzsJ:Lcom/google/android/gms/internal/zzdn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdn;->zzb(Lcom/google/android/gms/internal/zzdn;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn$1;->zzsJ:Lcom/google/android/gms/internal/zzdn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdn$1;->zzsJ:Lcom/google/android/gms/internal/zzdn;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdn;->zzc(Lcom/google/android/gms/internal/zzdn;)Lcom/google/android/gms/internal/zzds;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdn;->zza(Lcom/google/android/gms/internal/zzdn;Lcom/google/android/gms/internal/zzds;)Lcom/google/android/gms/internal/zzds;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn$1;->zzsJ:Lcom/google/android/gms/internal/zzdn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdn;->zzd(Lcom/google/android/gms/internal/zzdn;)Lcom/google/android/gms/internal/zzds;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn$1;->zzsJ:Lcom/google/android/gms/internal/zzdn;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzdn;->zzm(I)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn$1;->zzsI:Lcom/google/android/gms/internal/zzdm;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdn$1;->zzsJ:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzdm;->zza(Lcom/google/android/gms/internal/zzdo$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn$1;->zzsJ:Lcom/google/android/gms/internal/zzdn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdn$1;->zzsI:Lcom/google/android/gms/internal/zzdm;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdn;->zza(Lcom/google/android/gms/internal/zzdn;Lcom/google/android/gms/internal/zzdm;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
