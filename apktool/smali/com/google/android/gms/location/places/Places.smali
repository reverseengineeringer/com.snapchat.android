.class public Lcom/google/android/gms/location/places/Places;
.super Ljava/lang/Object;


# static fields
.field public static final GEO_DATA_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/location/places/PlacesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final GeoDataApi:Lcom/google/android/gms/location/places/GeoDataApi;

.field public static final PLACE_DETECTION_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/location/places/PlacesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final PlaceDetectionApi:Lcom/google/android/gms/location/places/PlaceDetectionApi;

.field public static final zzanT:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzps;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzanU:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzpx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->zzanT:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->zzanU:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/internal/zzps$zza;

    invoke-direct {v1, v4, v4}, Lcom/google/android/gms/internal/zzps$zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/location/places/Places;->zzanT:Lcom/google/android/gms/common/api/Api$zzc;

    new-array v3, v5, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/common/api/Api$zzc;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->GEO_DATA_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/internal/zzpx$zza;

    invoke-direct {v1, v4, v4}, Lcom/google/android/gms/internal/zzpx$zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/location/places/Places;->zzanU:Lcom/google/android/gms/common/api/Api$zzc;

    new-array v3, v5, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/common/api/Api$zzc;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->PLACE_DETECTION_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzpr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpr;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->GeoDataApi:Lcom/google/android/gms/location/places/GeoDataApi;

    new-instance v0, Lcom/google/android/gms/internal/zzpw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpw;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->PlaceDetectionApi:Lcom/google/android/gms/location/places/PlaceDetectionApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
