.class Lcom/google/android/gms/internal/zzga$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzga;->zzg(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzvJ:Lcom/google/android/gms/internal/zzfz;

.field final synthetic zzvK:Lcom/google/android/gms/internal/zzga;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/internal/zzfz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzga$1;->zzvK:Lcom/google/android/gms/internal/zzga;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzga$1;->zzvJ:Lcom/google/android/gms/internal/zzfz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzga$1;->zzvK:Lcom/google/android/gms/internal/zzga;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzga;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzga$1;->zzvK:Lcom/google/android/gms/internal/zzga;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzga;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget v0, v0, Lcom/google/android/gms/internal/zzgq;->errorCode:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzga$1;->zzvK:Lcom/google/android/gms/internal/zzga;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzga;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzga$1;->zzvK:Lcom/google/android/gms/internal/zzga;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/internal/zzid$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzga$1;->zzvJ:Lcom/google/android/gms/internal/zzfz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzga$1;->zzvK:Lcom/google/android/gms/internal/zzga;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzga;->zzvO:Lcom/google/android/gms/internal/zzgq;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzfz;->zza(Lcom/google/android/gms/internal/zzgq;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
