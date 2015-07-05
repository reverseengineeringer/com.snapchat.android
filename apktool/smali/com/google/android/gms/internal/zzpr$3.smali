.class Lcom/google/android/gms/internal/zzpr$3;
.super Lcom/google/android/gms/location/places/zzi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpr;->getAutocompletePredictions(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzi$zza",
        "<",
        "Lcom/google/android/gms/internal/zzps;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzafV:Ljava/lang/String;

.field final synthetic zzaol:Lcom/google/android/gms/internal/zzpr;

.field final synthetic zzaon:Lcom/google/android/gms/maps/model/LatLngBounds;

.field final synthetic zzaoo:Lcom/google/android/gms/location/places/AutocompleteFilter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr;Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpr$3;->zzaol:Lcom/google/android/gms/internal/zzpr;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpr$3;->zzafV:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzpr$3;->zzaon:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzpr$3;->zzaoo:Lcom/google/android/gms/location/places/AutocompleteFilter;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzi$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzps;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpr$3;->zza(Lcom/google/android/gms/internal/zzps;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzps;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/location/places/zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/zzi;-><init>(Lcom/google/android/gms/location/places/zzi$zza;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpr$3;->zzafV:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpr$3;->zzaon:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpr$3;->zzaoo:Lcom/google/android/gms/location/places/AutocompleteFilter;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzps;->zza(Lcom/google/android/gms/location/places/zzi;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V

    return-void
.end method
