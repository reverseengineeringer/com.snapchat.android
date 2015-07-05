.class Lcom/google/android/gms/internal/zzgd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgd;->zzg(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzvS:Lcom/google/android/gms/internal/zzgd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgd$1;->zzvS:Lcom/google/android/gms/internal/zzgd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd$1;->zzvS:Lcom/google/android/gms/internal/zzgd;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgd;->zznh:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd$1;->zzvS:Lcom/google/android/gms/internal/zzgd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgd;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget v0, v0, Lcom/google/android/gms/internal/zzgq;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd$1;->zzvS:Lcom/google/android/gms/internal/zzgd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgd;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgd$1;->zzvS:Lcom/google/android/gms/internal/zzgd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/internal/zzid$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd$1;->zzvS:Lcom/google/android/gms/internal/zzgd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgd;->zzdG()V

    const-string v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd$1;->zzvS:Lcom/google/android/gms/internal/zzgd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgd;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaM()Lcom/google/android/gms/internal/zzho;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgd$1;->zzvS:Lcom/google/android/gms/internal/zzgd;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzgd;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzgq;->zzus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzho;->zzS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgd$1;->zzvS:Lcom/google/android/gms/internal/zzgd;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzgd;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzgq;->zzwG:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzic;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
