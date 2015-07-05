.class public Lcom/google/android/gms/internal/zzpx;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpx$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/internal/zzpt;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaop:Lcom/google/android/gms/internal/zzqh;

.field private final zzaoq:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;)V
    .locals 7

    const/16 v3, 0x43

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpx;->zzaoq:Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzf;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzf;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzqh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpx;->zzaoq:Ljava/util/Locale;

    iget-object v4, p8, Lcom/google/android/gms/location/places/PlacesOptions;->zzaob:Ljava/lang/String;

    move-object v1, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzqh;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpx;->zzaop:Lcom/google/android/gms/internal/zzqh;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/location/places/zzi;Lcom/google/android/gms/location/places/PlaceFilter;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/location/places/PlaceFilter;->zzpJ()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object p2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpx;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpx;->zzaop:Lcom/google/android/gms/internal/zzqh;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/internal/zzpt;->zza(Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzpv;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/places/zzi;Lcom/google/android/gms/location/places/PlaceReport;)V
    .locals 2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpx;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpx;->zzaop:Lcom/google/android/gms/internal/zzqh;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/internal/zzpt;->zza(Lcom/google/android/gms/location/places/PlaceReport;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzpv;)V

    return-void
.end method

.method protected zzbq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpt;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpt$zza;->zzbn(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpt;

    move-result-object v0

    return-object v0
.end method

.method protected zzcF()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.PlaceDetectionApi"

    return-object v0
.end method

.method protected zzcG()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService"

    return-object v0
.end method

.method protected synthetic zzp(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpx;->zzbq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpt;

    move-result-object v0

    return-object v0
.end method
