.class abstract Lcom/google/android/gms/internal/zzum$zzb;
.super Lcom/google/android/gms/internal/zzuj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzuj",
        "<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;",
        ">;"
    }
.end annotation


# instance fields
.field protected zzawK:Lcom/google/android/gms/internal/zzuk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzuj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v0, Lcom/google/android/gms/internal/zzum$zzb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzum$zzb$1;-><init>(Lcom/google/android/gms/internal/zzum$zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzum$zzb;->zzawK:Lcom/google/android/gms/internal/zzuk;

    return-void
.end method


# virtual methods
.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzum$zzb;->zzaL(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzaL(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzum$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzum$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zza;)V

    return-object v0
.end method
