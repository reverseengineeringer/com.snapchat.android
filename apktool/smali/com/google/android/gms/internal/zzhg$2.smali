.class Lcom/google/android/gms/internal/zzhg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhg;->zzen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzyY:Lcom/google/android/gms/internal/zzhg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhg$2;->zzyY:Lcom/google/android/gms/internal/zzhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzcb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcb;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhg$2;->zzyY:Lcom/google/android/gms/internal/zzhg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhg;->zza(Lcom/google/android/gms/internal/zzhg;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhg$2;->zzyY:Lcom/google/android/gms/internal/zzhg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhg;->zzb(Lcom/google/android/gms/internal/zzhg;)Lcom/google/android/gms/internal/zzhy;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzhy;->zzzH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcb;->zzb(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcb;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhg$2;->zzyY:Lcom/google/android/gms/internal/zzhg;

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaR()Lcom/google/android/gms/internal/zzcd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcd;->zza(Lcom/google/android/gms/internal/zzcb;)Lcom/google/android/gms/internal/zzcc;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhg;->zza(Lcom/google/android/gms/internal/zzhg;Lcom/google/android/gms/internal/zzcc;)Lcom/google/android/gms/internal/zzcc;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot initialize CSI reporter."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    goto :goto_0
.end method
