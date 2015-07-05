.class public final Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/zzc;


# instance fields
.field private final zzFG:I

.field private zzapK:Ljava/lang/Boolean;

.field private zzapQ:Ljava/lang/Boolean;

.field private zzaqA:Ljava/lang/Boolean;

.field private zzaqB:Ljava/lang/Boolean;

.field private zzaqv:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

.field private zzaqw:Ljava/lang/String;

.field private zzaqx:Lcom/google/android/gms/maps/model/LatLng;

.field private zzaqy:Ljava/lang/Integer;

.field private zzaqz:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/maps/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->CREATOR:Lcom/google/android/gms/maps/zzc;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqz:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzapQ:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqA:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqB:Ljava/lang/Boolean;

    iput v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzFG:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;BBBBB)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqz:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzapQ:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqA:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqB:Ljava/lang/Boolean;

    iput p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzFG:I

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqv:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    iput-object p4, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqx:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p5, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqy:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqw:Ljava/lang/String;

    invoke-static {p6}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqz:Ljava/lang/Boolean;

    invoke-static {p7}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzapQ:Ljava/lang/Boolean;

    invoke-static {p8}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqA:Ljava/lang/Boolean;

    invoke-static {p9}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqB:Ljava/lang/Boolean;

    invoke-static {p10}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzapK:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getPanningGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqA:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPanoramaId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqw:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqx:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getRadius()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqy:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStreetNamesEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqB:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getStreetViewPanoramaCamera()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqv:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    return-object v0
.end method

.method public final getUseViewLifecycleInFragment()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzapK:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUserNavigationEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqz:Ljava/lang/Boolean;

    return-object v0
.end method

.method final getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzFG:I

    return v0
.end method

.method public final getZoomGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzapQ:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final panningGesturesEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqA:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final panoramaCamera(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqv:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    return-object p0
.end method

.method public final panoramaId(Ljava/lang/String;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqw:Ljava/lang/String;

    return-object p0
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqx:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqx:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqy:Ljava/lang/Integer;

    return-object p0
.end method

.method public final streetNamesEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqB:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final useViewLifecycleInFragment(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzapK:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final userNavigationEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqz:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/zzc;->zza(Lcom/google/android/gms/maps/StreetViewPanoramaOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzapQ:Ljava/lang/Boolean;

    return-object p0
.end method

.method final zzqi()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzapK:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final zzqm()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzapQ:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final zzqw()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqz:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final zzqx()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqA:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final zzqy()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzaqB:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method
