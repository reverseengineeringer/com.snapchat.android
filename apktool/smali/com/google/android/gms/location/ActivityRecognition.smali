.class public Lcom/google/android/gms/location/ActivityRecognition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/ActivityRecognition$zza;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static ActivityRecognitionApi:Lcom/google/android/gms/location/ActivityRecognitionApi; = null

.field public static final CLIENT_NAME:Ljava/lang/String; = "activity_recognition"

.field private static final zzGR:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzpf;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzGS:Lcom/google/android/gms/common/api/Api$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzpf;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/ActivityRecognition;->zzGR:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/location/ActivityRecognition$1;

    invoke-direct {v0}, Lcom/google/android/gms/location/ActivityRecognition$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/ActivityRecognition;->zzGS:Lcom/google/android/gms/common/api/Api$zzb;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/location/ActivityRecognition;->zzGS:Lcom/google/android/gms/common/api/Api$zzb;

    sget-object v2, Lcom/google/android/gms/location/ActivityRecognition;->zzGR:Lcom/google/android/gms/common/api/Api$zzc;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/common/api/Api$zzc;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/location/ActivityRecognition;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzov;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzov;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/ActivityRecognition;->ActivityRecognitionApi:Lcom/google/android/gms/location/ActivityRecognitionApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zzpo()Lcom/google/android/gms/common/api/Api$zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/ActivityRecognition;->zzGR:Lcom/google/android/gms/common/api/Api$zzc;

    return-object v0
.end method
