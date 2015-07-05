.class public Lcom/google/android/gms/internal/zzdd;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/internal/zzde;",
        ">;"
    }
.end annotation


# instance fields
.field final zzrQ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/16 v3, 0x2e

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput p4, p0, Lcom/google/android/gms/internal/zzdd;->zzrQ:I

    return-void
.end method


# virtual methods
.method protected zzcF()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.gservice.START"

    return-object v0
.end method

.method protected zzcG()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.gservice.IGservicesValueService"

    return-object v0
.end method

.method public zzcH()Lcom/google/android/gms/internal/zzde;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzk;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzde;

    return-object v0
.end method

.method protected zzo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzde;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzde$zza;->zzq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzde;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzp(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdd;->zzo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzde;

    move-result-object v0

    return-object v0
.end method
