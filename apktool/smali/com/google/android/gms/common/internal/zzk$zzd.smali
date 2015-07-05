.class public final Lcom/google/android/gms/common/internal/zzk$zzd;
.super Lcom/google/android/gms/common/internal/zzr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation


# instance fields
.field private zzPV:Lcom/google/android/gms/common/internal/zzk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzk;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzr$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzk$zzd;->zzPV:Lcom/google/android/gms/common/internal/zzk;

    return-void
.end method

.method private zzji()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzd;->zzPV:Lcom/google/android/gms/common/internal/zzk;

    return-void
.end method


# virtual methods
.method public final zzb(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzd;->zzPV:Lcom/google/android/gms/common/internal/zzk;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzd;->zzPV:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzk;->zza(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzk$zzd;->zzji()V

    return-void
.end method

.method public final zzc(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzd;->zzPV:Lcom/google/android/gms/common/internal/zzk;

    const-string v1, "onAccountValidationComplete can be called only once per call to validateAccount"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzd;->zzPV:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/internal/zzk;->zzb(ILandroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzk$zzd;->zzji()V

    return-void
.end method
