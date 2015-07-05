.class Lcom/google/android/gms/internal/zzoz$3;
.super Lcom/google/android/gms/internal/zzoz$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzoz;->setMockLocation(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/location/Location;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamI:Lcom/google/android/gms/internal/zzoz;

.field final synthetic zzamK:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoz;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoz$3;->zzamI:Lcom/google/android/gms/internal/zzoz;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzoz$3;->zzamK:Landroid/location/Location;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzoz$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzpf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzoz$3;->zza(Lcom/google/android/gms/internal/zzpf;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoz$3;->zzamK:Landroid/location/Location;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpf;->zzb(Landroid/location/Location;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzNo:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzoz$3;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
