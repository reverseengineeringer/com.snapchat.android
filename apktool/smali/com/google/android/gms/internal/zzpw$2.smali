.class Lcom/google/android/gms/internal/zzpw$2;
.super Lcom/google/android/gms/location/places/zzi$zzg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpw;->reportDeviceAtPlace(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/PlaceReport;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzi$zzg",
        "<",
        "Lcom/google/android/gms/internal/zzpx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaou:Lcom/google/android/gms/internal/zzpw;

.field final synthetic zzaov:Lcom/google/android/gms/location/places/PlaceReport;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpw;Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/PlaceReport;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpw$2;->zzaou:Lcom/google/android/gms/internal/zzpw;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpw$2;->zzaov:Lcom/google/android/gms/location/places/PlaceReport;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzi$zzg;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzpx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpw$2;->zza(Lcom/google/android/gms/internal/zzpx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpx;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/zzi;-><init>(Lcom/google/android/gms/location/places/zzi$zzg;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpw$2;->zzaov:Lcom/google/android/gms/location/places/PlaceReport;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzpx;->zza(Lcom/google/android/gms/location/places/zzi;Lcom/google/android/gms/location/places/PlaceReport;)V

    return-void
.end method
