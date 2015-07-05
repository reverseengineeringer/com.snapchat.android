.class public Lcom/google/android/gms/internal/zzpq;
.super Lcom/google/android/gms/internal/zzqj;

# interfaces
.implements Lcom/google/android/gms/location/places/AutocompletePrediction;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzqj;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpq;->zzpL()Lcom/google/android/gms/location/places/AutocompletePrediction;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    const-string v0, "ap_description"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzpq;->zzz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatchedSubstrings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzpo$zza;",
            ">;"
        }
    .end annotation

    const-string v0, "ap_matched_subscriptions"

    sget-object v1, Lcom/google/android/gms/internal/zzpo$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzpq;->zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 2

    const-string v0, "ap_place_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzpq;->zzz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    const-string v0, "ap_place_types"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzpq;->zza(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzpL()Lcom/google/android/gms/location/places/AutocompletePrediction;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpq;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpq;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpq;->getPlaceTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpq;->getMatchedSubstrings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpq;->zzpM()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzpo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    return-object v0
.end method

.method public zzpM()I
    .locals 2

    const-string v0, "ap_personalization_type"

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzpq;->zzC(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
