.class Lcom/google/android/gms/internal/zzoz$4;
.super Lcom/google/android/gms/internal/zzoz$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzoz;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamG:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic zzamH:Lcom/google/android/gms/location/LocationListener;

.field final synthetic zzamI:Lcom/google/android/gms/internal/zzoz;

.field final synthetic zzamL:Landroid/os/Looper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoz;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoz$4;->zzamI:Lcom/google/android/gms/internal/zzoz;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzoz$4;->zzamG:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzoz$4;->zzamH:Lcom/google/android/gms/location/LocationListener;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzoz$4;->zzamL:Landroid/os/Looper;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzoz$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzpf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzoz$4;->zza(Lcom/google/android/gms/internal/zzpf;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpf;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoz$4;->zzamG:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoz$4;->zzamH:Lcom/google/android/gms/location/LocationListener;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoz$4;->zzamL:Landroid/os/Looper;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzpf;->zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzNo:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzoz$4;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
