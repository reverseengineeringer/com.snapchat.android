.class public Lcom/google/android/gms/internal/zzqg;
.super Lcom/google/android/gms/internal/zzqj;

# interfaces
.implements Lcom/google/android/gms/location/places/Place;


# instance fields
.field private final zzanM:Ljava/lang/String;

.field private zzaoI:Z

.field private final zzaoL:Lcom/google/android/gms/internal/zzqf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzqj;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/google/android/gms/internal/zzqf;->zzab(Landroid/content/Context;)Lcom/google/android/gms/internal/zzqf;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzqg;->zzaoL:Lcom/google/android/gms/internal/zzqf;

    const-string v0, "place_is_logging_enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqg;->zzj(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqg;->zzaoI:Z

    const-string v0, "place_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqg;->zzz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqg;->zzanM:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzcn(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqg;->zzaoI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqg;->zzaoL:Lcom/google/android/gms/internal/zzqf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqg;->zzaoL:Lcom/google/android/gms/internal/zzqf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqg;->zzanM:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzqf;->zzy(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqg;->zzpV()Lcom/google/android/gms/location/places/Place;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "getAddress"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqg;->zzcn(Ljava/lang/String;)V

    const-string v0, "place_address"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqg;->zzz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "getId"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqg;->zzcn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqg;->zzanM:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 2

    const-string v0, "getLatLng"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqg;->zzcn(Ljava/lang/String;)V

    const-string v0, "place_lat_lng"

    sget-object v1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/zzi;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqg;->zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    const-string v0, "getLocale"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqg;->zzcn(Ljava/lang/String;)V

    const-string v0, "place_locale"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqg;->zzz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "getName"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqg;->zzcn(Ljava/lang/String;)V

    const-string v0, "place_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqg;->zzz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "getPhoneNumber"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqg;->zzcn(Ljava/lang/String;)V

    const-string v0, "place_phone_number"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqg;->zzz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "getPlaceTypes"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqg;->zzcn(Ljava/lang/String;)V

    const-string v0, "place_types"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqg;->zza(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPriceLevel()I
    .locals 2

    const-string v0, "getPriceLevel"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqg;->zzcn(Ljava/lang/String;)V

    const-string v0, "place_price_level"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqg;->zzC(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRating()F
    .locals 2

    const-string v0, "getRating"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqg;->zzcn(Ljava/lang/String;)V

    const-string v0, "place_rating"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqg;->zza(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 2

    const-string v0, "getViewport"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqg;->zzcn(Ljava/lang/String;)V

    const-string v0, "place_viewport"

    sget-object v1, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/zzg;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqg;->zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getWebsiteUri()Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "getWebsiteUri"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzqg;->zzcn(Ljava/lang/String;)V

    const-string v1, "place_website_uri"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzqg;->zzz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public zzpI()Z
    .locals 2

    const-string v0, "isPermanentlyClosed"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqg;->zzcn(Ljava/lang/String;)V

    const-string v0, "place_is_permanently_closed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqg;->zzj(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public zzpO()F
    .locals 2

    const-string v0, "getLevelNumber"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqg;->zzcn(Ljava/lang/String;)V

    const-string v0, "place_level_number"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqg;->zza(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public zzpV()Lcom/google/android/gms/location/places/Place;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzpy$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpy$zza;-><init>()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzqg;->zzaoI:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy$zza;->zzY(Z)Lcom/google/android/gms/internal/zzpy$zza;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzqg;->zzaoI:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqg;->getAddress()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy$zza;->zzcq(Ljava/lang/String;)Lcom/google/android/gms/internal/zzpy$zza;

    move-result-object v0

    const-string v1, "place_attributions"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzqg;->zzb(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy$zza;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/zzpy$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy$zza;->zzco(Ljava/lang/String;)Lcom/google/android/gms/internal/zzpy$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqg;->zzpI()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy$zza;->zzX(Z)Lcom/google/android/gms/internal/zzpy$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqg;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy$zza;->zza(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/internal/zzpy$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqg;->zzpO()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy$zza;->zzc(F)Lcom/google/android/gms/internal/zzpy$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqg;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy$zza;->zzcp(Ljava/lang/String;)Lcom/google/android/gms/internal/zzpy$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqg;->getPhoneNumber()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy$zza;->zzcr(Ljava/lang/String;)Lcom/google/android/gms/internal/zzpy$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqg;->getPriceLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy$zza;->zzfH(I)Lcom/google/android/gms/internal/zzpy$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqg;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy$zza;->zzd(F)Lcom/google/android/gms/internal/zzpy$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqg;->getPlaceTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy$zza;->zzo(Ljava/util/List;)Lcom/google/android/gms/internal/zzpy$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqg;->getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy$zza;->zza(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/internal/zzpy$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqg;->getWebsiteUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy$zza;->zzk(Landroid/net/Uri;)Lcom/google/android/gms/internal/zzpy$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpy$zza;->zzpW()Lcom/google/android/gms/internal/zzpy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqg;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy;->setLocale(Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqg;->zzaoL:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy;->zza(Lcom/google/android/gms/internal/zzqf;)V

    return-object v0
.end method
