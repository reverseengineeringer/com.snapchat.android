.class Lcom/google/android/gms/internal/zzkq$1;
.super Lcom/google/android/gms/internal/zzkr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkq;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQz:Lcom/google/android/gms/internal/zzkq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkq;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkq$1;->zzQz:Lcom/google/android/gms/internal/zzkq;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzkr$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzks;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzkq$1;->zza(Lcom/google/android/gms/internal/zzks;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzks;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzks;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzku;

    new-instance v1, Lcom/google/android/gms/internal/zzkq$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzkq$zza;-><init>(Lcom/google/android/gms/common/api/zza$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzku;->zza(Lcom/google/android/gms/internal/zzkt;)V

    return-void
.end method
