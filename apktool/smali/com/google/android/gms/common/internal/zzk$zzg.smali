.class public final Lcom/google/android/gms/common/internal/zzk$zzg;
.super Lcom/google/android/gms/common/internal/zzk$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<TT;>.zza;"
    }
.end annotation


# instance fields
.field final synthetic zzPT:Lcom/google/android/gms/common/internal/zzk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzk;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzk$zzg;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/zzk$zza;-><init>(Lcom/google/android/gms/common/internal/zzk;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final zzje()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzg;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzk;->zzc(Lcom/google/android/gms/common/internal/zzk;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzg;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzk;->zzd(Lcom/google/android/gms/common/internal/zzk;)Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "mConnectionProgressReportCallbacks should not be null if mReportProgress"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzg;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzk;->zzd(Lcom/google/android/gms/common/internal/zzk;)Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$zza;->zzia()V

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzg;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzk;->zzb(Lcom/google/android/gms/common/internal/zzq;)V

    goto :goto_1
.end method
