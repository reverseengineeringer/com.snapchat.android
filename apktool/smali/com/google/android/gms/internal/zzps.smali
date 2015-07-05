.class public Lcom/google/android/gms/internal/zzps;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzps$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/internal/zzpu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaop:Lcom/google/android/gms/internal/zzqh;

.field private final zzaoq:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;)V
    .locals 7

    const/16 v3, 0x41

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzps;->zzaoq:Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzf;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzf;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzqh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzps;->zzaoq:Ljava/util/Locale;

    iget-object v4, p8, Lcom/google/android/gms/location/places/PlacesOptions;->zzaob:Ljava/lang/String;

    move-object v1, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzqh;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzps;->zzaop:Lcom/google/android/gms/internal/zzqh;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/location/places/zzi;Lcom/google/android/gms/location/places/AddPlaceRequest;)V
    .locals 2

    const-string v0, "userAddedPlace == null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzps;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzps;->zzaop:Lcom/google/android/gms/internal/zzqh;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/internal/zzpu;->zza(Lcom/google/android/gms/location/places/AddPlaceRequest;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzpv;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/places/zzi;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V
    .locals 6

    const-string v0, "query == null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bounds == null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/location/places/AutocompleteFilter;->create(Ljava/util/Collection;)Lcom/google/android/gms/location/places/AutocompleteFilter;

    move-result-object v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzps;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpu;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzps;->zzaop:Lcom/google/android/gms/internal/zzqh;

    move-object v1, p2

    move-object v2, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzpu;->zza(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzpv;)V

    return-void

    :cond_0
    move-object v3, p4

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/location/places/zzi;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/places/zzi;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzps;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzps;->zzaop:Lcom/google/android/gms/internal/zzqh;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/internal/zzpu;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzpv;)V

    return-void
.end method

.method protected zzbm(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpu;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpu$zza;->zzbo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpu;

    move-result-object v0

    return-object v0
.end method

.method protected zzcF()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.GeoDataApi"

    return-object v0
.end method

.method protected zzcG()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    return-object v0
.end method

.method protected synthetic zzp(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzps;->zzbm(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpu;

    move-result-object v0

    return-object v0
.end method
