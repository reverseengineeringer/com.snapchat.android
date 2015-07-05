.class Lcom/google/android/gms/internal/zzoz$6;
.super Lcom/google/android/gms/internal/zzoz$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzoz;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamH:Lcom/google/android/gms/location/LocationListener;

.field final synthetic zzamI:Lcom/google/android/gms/internal/zzoz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoz;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoz$6;->zzamI:Lcom/google/android/gms/internal/zzoz;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzoz$6;->zzamH:Lcom/google/android/gms/location/LocationListener;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzoz$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzpf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzoz$6;->zza(Lcom/google/android/gms/internal/zzpf;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoz$6;->zzamH:Lcom/google/android/gms/location/LocationListener;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpf;->zza(Lcom/google/android/gms/location/LocationListener;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzNo:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzoz$6;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
