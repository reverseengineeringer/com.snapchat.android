.class Lcom/google/android/gms/internal/zzpr$1;
.super Lcom/google/android/gms/location/places/zzi$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpr;->addPlace(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/AddPlaceRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzi$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzps;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaok:Lcom/google/android/gms/location/places/AddPlaceRequest;

.field final synthetic zzaol:Lcom/google/android/gms/internal/zzpr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr;Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/AddPlaceRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpr$1;->zzaol:Lcom/google/android/gms/internal/zzpr;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpr$1;->zzaok:Lcom/google/android/gms/location/places/AddPlaceRequest;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzi$zzc;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzps;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpr$1;->zza(Lcom/google/android/gms/internal/zzps;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzps;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/zzi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzps;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/location/places/zzi;-><init>(Lcom/google/android/gms/location/places/zzi$zzc;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpr$1;->zzaok:Lcom/google/android/gms/location/places/AddPlaceRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzps;->zza(Lcom/google/android/gms/location/places/zzi;Lcom/google/android/gms/location/places/AddPlaceRequest;)V

    return-void
.end method
