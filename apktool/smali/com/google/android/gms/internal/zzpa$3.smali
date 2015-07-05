.class Lcom/google/android/gms/internal/zzpa$3;
.super Lcom/google/android/gms/internal/zzpa$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpa;->removeGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamN:Lcom/google/android/gms/internal/zzpa;

.field final synthetic zzamQ:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpa;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpa$3;->zzamN:Lcom/google/android/gms/internal/zzpa;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpa$3;->zzamQ:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzpa$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzpf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpa$3;->zza(Lcom/google/android/gms/internal/zzpf;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpf;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzpa$3$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzpa$3$1;-><init>(Lcom/google/android/gms/internal/zzpa$3;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpa$3;->zzamQ:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzpf;->zza(Ljava/util/List;Lcom/google/android/gms/location/zzf$zzb;)V

    return-void
.end method
