.class public final Lcom/google/android/gms/internal/zzko;
.super Ljava/lang/Object;


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

.field public static final zzGR:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzks;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzGS:Lcom/google/android/gms/common/api/Api$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzks;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzQy:Lcom/google/android/gms/internal/zzkp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzko;->zzGR:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzko$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzko$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzko;->zzGS:Lcom/google/android/gms/common/api/Api$zzb;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/internal/zzko;->zzGS:Lcom/google/android/gms/common/api/Api$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzko;->zzGR:Lcom/google/android/gms/common/api/Api$zzc;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/common/api/Api$zzc;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/internal/zzko;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzkq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzko;->zzQy:Lcom/google/android/gms/internal/zzkp;

    return-void
.end method
