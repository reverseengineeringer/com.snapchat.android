.class public Lcom/google/android/gms/internal/zzun;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/internal/zzul;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 6

    const/16 v3, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzuk;[B)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzul;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzul;->zza(Lcom/google/android/gms/internal/zzuk;[B)V

    return-void
.end method

.method protected zzcD(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzul;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzul$zza;->zzcC(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzul;

    move-result-object v0

    return-object v0
.end method

.method protected zzcF()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.safetynet.service.START"

    return-object v0
.end method

.method protected zzcG()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetService"

    return-object v0
.end method

.method protected synthetic zzp(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzun;->zzcD(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzul;

    move-result-object v0

    return-object v0
.end method
