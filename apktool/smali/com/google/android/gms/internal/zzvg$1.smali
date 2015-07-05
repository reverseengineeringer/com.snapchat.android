.class Lcom/google/android/gms/internal/zzvg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzvm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzvg;->zza(Lcom/google/android/gms/internal/zzve;Lcom/google/android/gms/internal/zzvg$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaBS:Lcom/google/android/gms/internal/zzve;

.field final synthetic zzaBT:Lcom/google/android/gms/internal/zzvg$zza;

.field final synthetic zzaBU:Lcom/google/android/gms/internal/zzvg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzvg;Lcom/google/android/gms/internal/zzve;Lcom/google/android/gms/internal/zzvg$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvg$1;->zzaBU:Lcom/google/android/gms/internal/zzvg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzvg$1;->zzaBS:Lcom/google/android/gms/internal/zzve;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzvg$1;->zzaBT:Lcom/google/android/gms/internal/zzvg$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Ljava/lang/Integer;J)V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzvn;->zzaCx:Ljava/lang/Integer;

    if-ne p3, v0, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/zzvk$zza$zza;->zzaCh:Lcom/google/android/gms/internal/zzvk$zza$zza;

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzvk$zza;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzNo:Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvg$1;->zzaBS:Lcom/google/android/gms/internal/zzve;

    move-object v4, p2

    check-cast v4, Lcom/google/android/gms/internal/zzvl$zzc;

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzvk$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzve;[BLcom/google/android/gms/internal/zzvl$zzc;Lcom/google/android/gms/internal/zzvk$zza$zza;J)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzvg$1;->zzaBT:Lcom/google/android/gms/internal/zzvg$zza;

    new-instance v2, Lcom/google/android/gms/internal/zzvk;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzvk;-><init>(Lcom/google/android/gms/internal/zzvk$zza;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzvg$zza;->zza(Lcom/google/android/gms/internal/zzvk;)V

    return-void

    :cond_0
    sget-object v5, Lcom/google/android/gms/internal/zzvk$zza$zza;->zzaCg:Lcom/google/android/gms/internal/zzvk$zza$zza;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "There is no valid resource for the container: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvg$1;->zzaBS:Lcom/google/android/gms/internal/zzve;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzve;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzvk$zza;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v4, 0x10

    invoke-direct {v2, v4, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/zzvk$zza$zza;->zzaCg:Lcom/google/android/gms/internal/zzvk$zza$zza;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzvk$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzve;Lcom/google/android/gms/internal/zzvk$zza$zza;)V

    goto :goto_1
.end method
