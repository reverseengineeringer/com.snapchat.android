.class Lcom/google/android/gms/internal/zzvc$zza;
.super Lcom/google/android/gms/internal/zzuy$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final zzPr:Lcom/google/android/gms/internal/zzus;

.field private final zzawZ:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzus;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzuy$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvc$zza;->zzPr:Lcom/google/android/gms/internal/zzus;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzvc$zza;->zzawZ:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzvc$zza;)Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzvc$zza;->zzsx()Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    move-result-object v0

    return-object v0
.end method

.method private zzsx()Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvc$zza;->zzPr:Lcom/google/android/gms/internal/zzus;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzus;->zzsx()Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzva;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvc$zza;->zzawZ:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzvc$zza$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzvc$zza$2;-><init>(Lcom/google/android/gms/internal/zzvc$zza;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzva;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/zzva;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Lcom/google/android/gms/internal/zzva;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvc$zza;->zzawZ:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzvc$zza$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/internal/zzvc$zza$1;-><init>(Lcom/google/android/gms/internal/zzvc$zza;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzva;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
