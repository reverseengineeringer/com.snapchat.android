.class public Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zzq;


# instance fields
.field public final bearing:F

.field public final tilt:F

.field public final zoom:F

.field private final zzFG:I

.field private zzarF:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->CREATOR:Lcom/google/android/gms/maps/model/zzq;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;-><init>(IFFF)V

    return-void
.end method

.method constructor <init>(IFFF)V
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Tilt needs to be between -90 and 90 inclusive"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zzFG:I

    float-to-double v2, p2

    cmpg-double v0, v2, v6

    if-gtz v0, :cond_0

    move p2, v1

    :cond_0
    iput p2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F

    add-float v0, p3, v1

    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F

    float-to-double v0, p4

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_2

    rem-float v0, p4, v4

    add-float/2addr v0, v4

    :goto_1
    rem-float/2addr v0, v4

    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F

    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;-><init>()V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;->tilt(F)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;->bearing(F)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;->build()Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zzarF:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, p4

    goto :goto_1
.end method

.method public static builder()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;-><init>(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getOrientation()Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zzarF:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zzFG:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzk(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "zoom"

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "tilt"

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "bearing"

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzq;->zza(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Landroid/os/Parcel;I)V

    return-void
.end method
