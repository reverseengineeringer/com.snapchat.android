.class public final Lcom/google/android/gms/location/places/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/zzd;


# instance fields
.field private final zzFG:I

.field private final zzalN:I

.field private final zzanA:I

.field private final zzanB:Lcom/google/android/gms/location/places/PlaceFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/zzc;->CREATOR:Lcom/google/android/gms/location/places/zzd;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/location/places/PlaceFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/zzc;->zzFG:I

    iput p2, p0, Lcom/google/android/gms/location/places/zzc;->zzalN:I

    iput p3, p0, Lcom/google/android/gms/location/places/zzc;->zzanA:I

    iput-object p4, p0, Lcom/google/android/gms/location/places/zzc;->zzanB:Lcom/google/android/gms/location/places/PlaceFilter;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/zzc;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/zzc;

    iget v2, p0, Lcom/google/android/gms/location/places/zzc;->zzalN:I

    iget v3, p1, Lcom/google/android/gms/location/places/zzc;->zzalN:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/zzc;->zzanA:I

    iget v3, p1, Lcom/google/android/gms/location/places/zzc;->zzanA:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/zzc;->zzanB:Lcom/google/android/gms/location/places/PlaceFilter;

    iget-object v3, p1, Lcom/google/android/gms/location/places/zzc;->zzanB:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/places/PlaceFilter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/zzc;->zzFG:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/places/zzc;->zzalN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/places/zzc;->zzanA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzk(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "transitionTypes"

    iget v2, p0, Lcom/google/android/gms/location/places/zzc;->zzalN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "loiteringTimeMillis"

    iget v2, p0, Lcom/google/android/gms/location/places/zzc;->zzanA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "placeFilter"

    iget-object v2, p0, Lcom/google/android/gms/location/places/zzc;->zzanB:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/zzd;->zza(Lcom/google/android/gms/location/places/zzc;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzpD()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/zzc;->zzalN:I

    return v0
.end method

.method public final zzpG()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/zzc;->zzanA:I

    return v0
.end method

.method public final zzpH()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzc;->zzanB:Lcom/google/android/gms/location/places/PlaceFilter;

    return-object v0
.end method
