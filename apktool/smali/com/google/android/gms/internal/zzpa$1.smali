.class Lcom/google/android/gms/internal/zzpa$1;
.super Lcom/google/android/gms/internal/zzpa$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpa;->addGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaaA:Landroid/app/PendingIntent;

.field final synthetic zzamM:Lcom/google/android/gms/location/GeofencingRequest;

.field final synthetic zzamN:Lcom/google/android/gms/internal/zzpa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpa;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpa$1;->zzamN:Lcom/google/android/gms/internal/zzpa;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpa$1;->zzamM:Lcom/google/android/gms/location/GeofencingRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpa$1;->zzaaA:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzpa$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzpf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpa$1;->zza(Lcom/google/android/gms/internal/zzpf;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpf;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzpa$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzpa$1$1;-><init>(Lcom/google/android/gms/internal/zzpa$1;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpa$1;->zzamM:Lcom/google/android/gms/location/GeofencingRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpa$1;->zzaaA:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/zzpf;->zza(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/location/zzf$zza;)V

    return-void
.end method
