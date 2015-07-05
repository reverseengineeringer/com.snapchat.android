.class public final Lcom/google/android/gms/common/internal/zzk$zzf;
.super Lcom/google/android/gms/common/internal/zzk$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<TT;>.zza;"
    }
.end annotation


# instance fields
.field final synthetic zzPT:Lcom/google/android/gms/common/internal/zzk;

.field public final zzPW:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzk;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzk$zzf;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/common/internal/zzk$zza;-><init>(Lcom/google/android/gms/common/internal/zzk;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzk$zzf;->zzPW:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected final zzje()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk$zzf;->zzPW:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzk$zzf;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzk;->zzcG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk$zzf;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzk$zzf;->zzPW:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/zzk;->zzp(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzk$zzf;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, v1}, Lcom/google/android/gms/common/internal/zzk;->zza(Lcom/google/android/gms/common/internal/zzk;IILandroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzf;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzk;->zza(Lcom/google/android/gms/common/internal/zzk;)Lcom/google/android/gms/common/internal/zzl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzl;->zzfe()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzf;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzk;->zze(Lcom/google/android/gms/common/internal/zzk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzL(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
