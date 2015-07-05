.class public final Lcom/google/android/gms/internal/zzus;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzus$1;,
        Lcom/google/android/gms/internal/zzus$zza;
    }
.end annotation


# static fields
.field public static final zzawP:Lcom/google/android/gms/internal/zzus;


# instance fields
.field private final zzawQ:Z

.field private final zzawR:Z

.field private final zzawS:Ljava/lang/String;

.field private final zzawT:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzus$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzus$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzus$zza;->zzsy()Lcom/google/android/gms/internal/zzus;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzus;->zzawP:Lcom/google/android/gms/internal/zzus;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzus;->zzawQ:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzus;->zzawR:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzus;->zzawS:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzus;->zzawT:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;Lcom/google/android/gms/internal/zzus$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzus;-><init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;)V

    return-void
.end method


# virtual methods
.method public final zzrN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzus;->zzawS:Ljava/lang/String;

    return-object v0
.end method

.method public final zzsv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzus;->zzawQ:Z

    return v0
.end method

.method public final zzsw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzus;->zzawR:Z

    return v0
.end method

.method public final zzsx()Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzus;->zzawT:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    return-object v0
.end method
