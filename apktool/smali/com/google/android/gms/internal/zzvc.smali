.class public Lcom/google/android/gms/internal/zzvc;
.super Lcom/google/android/gms/common/internal/zzk;

# interfaces
.implements Lcom/google/android/gms/internal/zzur;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzvc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/internal/zzva;",
        ">;",
        "Lcom/google/android/gms/internal/zzur;"
    }
.end annotation


# instance fields
.field private final zzPG:Lcom/google/android/gms/common/internal/zzf;

.field private final zzPr:Lcom/google/android/gms/internal/zzus;

.field private zzPs:Ljava/lang/Integer;

.field private final zzawZ:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/internal/zzus;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzvc;->zzPG:Lcom/google/android/gms/common/internal/zzf;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzvc;->zzPr:Lcom/google/android/gms/internal/zzus;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzf;->zziV()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvc;->zzPs:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzvc;->zzawZ:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzus;Ljava/lang/Integer;Ljava/util/concurrent/ExecutorService;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.signin.internal.offlineAccessRequested"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzus;->zzsv()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzus;->zzsw()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzus;->zzrN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzus;->zzsx()Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzvc$zza;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzvc$zza;-><init>(Lcom/google/android/gms/internal/zzus;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzvc$zza;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "com.google.android.gms.signin.internal.signInCallbacks"

    new-instance v3, Lcom/google/android/gms/common/internal/BinderWrapper;

    invoke-direct {v3, v1}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;Lcom/google/android/gms/internal/zzuz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/zzq;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Lcom/google/android/gms/internal/zzuz;",
            ")V"
        }
    .end annotation

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzvc;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzva;

    new-instance v1, Lcom/google/android/gms/common/internal/zzc;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/common/internal/zzc;-><init>(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;)V

    invoke-interface {v0, v1, p3}, Lcom/google/android/gms/internal/zzva;->zza(Lcom/google/android/gms/common/internal/zzc;Lcom/google/android/gms/internal/zzuz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    new-instance v1, Lcom/google/android/gms/internal/zzut;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzut;-><init>()V

    invoke-interface {p3, v0, v1}, Lcom/google/android/gms/internal/zzuz;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/internal/zzut;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "SignInClientImpl"

    const-string v1, "ISignInCallbacks#onAuthAccount should be executed from the same process, unexpected RemoteException."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzq;Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzvc;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzva;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvc;->zzPs:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/internal/zzva;->zza(Lcom/google/android/gms/common/internal/zzq;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzt;)V
    .locals 4

    const-string v0, "Expecting a valid IResolveAccountCallbacks"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvc;->zzPG:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->zziN()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzvc;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzva;

    new-instance v2, Lcom/google/android/gms/common/internal/zzy;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzvc;->zzPs:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/common/internal/zzy;-><init>(Landroid/accounts/Account;I)V

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/zzva;->zza(Lcom/google/android/gms/common/internal/zzy;Lcom/google/android/gms/common/internal/zzt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/internal/zzaa;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/zzt;->zzb(Lcom/google/android/gms/common/internal/zzaa;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "SignInClientImpl"

    const-string v1, "IResolveAccountCallbacks#onAccountResolutionComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected zzcF()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method protected zzcG(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzva;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzva$zza;->zzcF(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzva;

    move-result-object v0

    return-object v0
.end method

.method protected zzcG()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method protected zzhq()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvc;->zzPr:Lcom/google/android/gms/internal/zzus;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvc;->zzPG:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->zziV()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvc;->zzawZ:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzvc;->zza(Lcom/google/android/gms/internal/zzus;Ljava/lang/Integer;Ljava/util/concurrent/ExecutorService;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvc;->zzPG:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->zziR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzvc;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.gms.signin.internal.realClientPackageName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvc;->zzPG:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzf;->zziR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected synthetic zzp(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzvc;->zzcG(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzva;

    move-result-object v0

    return-object v0
.end method

.method public zzsu()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzvc;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzva;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvc;->zzPs:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzva;->zzhb(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
