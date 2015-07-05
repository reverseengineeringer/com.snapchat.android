.class Lcom/google/android/gms/internal/zzum$zzb$1;
.super Lcom/google/android/gms/internal/zzui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzum$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzawL:Lcom/google/android/gms/internal/zzum$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzum$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzum$zzb$1;->zzawL:Lcom/google/android/gms/internal/zzum$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzui;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zza;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzum$zzb$1;->zzawL:Lcom/google/android/gms/internal/zzum$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzum$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzum$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zza;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzum$zzb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
