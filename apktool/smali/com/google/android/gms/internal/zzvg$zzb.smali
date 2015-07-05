.class Lcom/google/android/gms/internal/zzvg$zzb;
.super Lcom/google/android/gms/internal/zzvt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzvg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzaBU:Lcom/google/android/gms/internal/zzvg;

.field private final zzaBV:Lcom/google/android/gms/internal/zzvg$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzvg;Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzvh;Lcom/google/android/gms/internal/zzvg$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvg$zzb;->zzaBU:Lcom/google/android/gms/internal/zzvg;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzvt;-><init>(Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzvh;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzvg$zzb;->zzaBV:Lcom/google/android/gms/internal/zzvg$zza;

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/internal/zzve;)Lcom/google/android/gms/internal/zzvt$zzb;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzvk;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvk;->zzuo()Lcom/google/android/gms/internal/zzvk$zza;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvg$zzb;->zzaBU:Lcom/google/android/gms/internal/zzvg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzvg;->zza(Lcom/google/android/gms/internal/zzvk$zza;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzvk$zza;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzNo:Lcom/google/android/gms/common/api/Status;

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzvk$zza;->zzup()Lcom/google/android/gms/internal/zzvk$zza$zza;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/zzvk$zza$zza;->zzaCf:Lcom/google/android/gms/internal/zzvk$zza$zza;

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzvk$zza;->zzuq()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzvk$zza;->zzuq()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvg$zzb;->zzaBU:Lcom/google/android/gms/internal/zzvg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzvg;->zza(Lcom/google/android/gms/internal/zzvg;)Lcom/google/android/gms/internal/zzvn;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzvk$zza;->zzur()Lcom/google/android/gms/internal/zzve;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzve;->zzuj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzvk$zza;->zzuq()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzvn;->zzf(Ljava/lang/String;[B)V

    const-string v0, "Resource successfully load from Network."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvg$zzb;->zzaBV:Lcom/google/android/gms/internal/zzvg$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzvg$zza;->zza(Lcom/google/android/gms/internal/zzvk;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Response status: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzvk$zza;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SUCCESS"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzab(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzvk$zza;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Response source: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzvk$zza;->zzup()Lcom/google/android/gms/internal/zzvk$zza$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzvk$zza$zza;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzab(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Response size: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzvk$zza;->zzuq()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzab(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvg$zzb;->zzaBU:Lcom/google/android/gms/internal/zzvg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzvk$zza;->zzur()Lcom/google/android/gms/internal/zzve;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvg$zzb;->zzaBV:Lcom/google/android/gms/internal/zzvg$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzvg;->zza(Lcom/google/android/gms/internal/zzve;Lcom/google/android/gms/internal/zzvg$zza;)V

    goto :goto_0

    :cond_2
    const-string v0, "FAILURE"

    goto :goto_1
.end method
