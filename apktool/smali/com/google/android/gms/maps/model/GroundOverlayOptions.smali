.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zze;

.field public static final NO_DIMENSION:F = -1.0f


# instance fields
.field private final zzFG:I

.field private zzaqU:F

.field private zzarb:F

.field private zzarc:Z

.field private zzare:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private zzarf:Lcom/google/android/gms/maps/model/LatLng;

.field private zzarg:F

.field private zzarh:F

.field private zzari:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private zzarj:F

.field private zzark:F

.field private zzarl:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zze;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/zze;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarc:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarj:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzark:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarl:F

    iput v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzFG:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFF)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarc:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarj:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzark:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarl:F

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzFG:I

    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd$zza;->zzau(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/zzd;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzare:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarf:Lcom/google/android/gms/maps/model/LatLng;

    iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarg:F

    iput p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarh:F

    iput-object p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzari:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaqU:F

    iput p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarb:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarc:Z

    iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarj:F

    iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzark:F

    iput p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarl:F

    return-void
.end method

.method private zza(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarf:Lcom/google/android/gms/maps/model/LatLng;

    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarg:F

    iput p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarh:F

    return-object p0
.end method


# virtual methods
.method public final anchor(FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzark:F

    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarl:F

    return-object p0
.end method

.method public final bearing(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 2

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v0, p1, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaqU:F

    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzark:F

    return v0
.end method

.method public final getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarl:F

    return v0
.end method

.method public final getBearing()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaqU:F

    return v0
.end method

.method public final getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzari:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public final getHeight()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarh:F

    return v0
.end method

.method public final getImage()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzare:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public final getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarf:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getTransparency()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarj:F

    return v0
.end method

.method final getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzFG:I

    return v0
.end method

.method public final getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarg:F

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarb:F

    return v0
.end method

.method public final image(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzare:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarc:Z

    return v0
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzari:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Position has already been set using positionFromBounds"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Location must be specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    :goto_2
    const-string v0, "Width must be non-negative"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zza(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzari:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Position has already been set using positionFromBounds"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Location must be specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    cmpl-float v0, p2, v4

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "Width must be non-negative"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    cmpl-float v0, p3, v4

    if-ltz v0, :cond_3

    :goto_3
    const-string v0, "Height must be non-negative"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zza(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public final positionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarf:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Position has already been set using position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarf:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzari:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final transparency(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Transparency must be in the range [0..1]"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarj:F

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final visible(Z)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarc:Z

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/maps/internal/zzaa;->zzqF()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzf;->zza(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zze;->zza(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public final zIndex(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzarb:F

    return-object p0
.end method

.method final zzqH()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzare:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zzqe()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
