.class Lcom/google/android/gms/internal/zzum$1;
.super Lcom/google/android/gms/internal/zzum$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzum;->attest(Lcom/google/android/gms/common/api/GoogleApiClient;[B)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzawH:[B

.field final synthetic zzawI:Lcom/google/android/gms/internal/zzum;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzum;Lcom/google/android/gms/common/api/GoogleApiClient;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzum$1;->zzawI:Lcom/google/android/gms/internal/zzum;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzum$1;->zzawH:[B

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzum$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzun;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzum$1;->zza(Lcom/google/android/gms/internal/zzun;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzun;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzum$1;->zzawK:Lcom/google/android/gms/internal/zzuk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzum$1;->zzawH:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzun;->zza(Lcom/google/android/gms/internal/zzuk;[B)V

    return-void
.end method
