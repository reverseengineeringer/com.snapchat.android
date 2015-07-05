.class public final Lcom/google/android/gms/internal/zzdc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdc$zza;,
        Lcom/google/android/gms/internal/zzdc$zzb;
    }
.end annotation


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzdc$zzb;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhw;->zzA(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzdc$zzb;->zze(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzdc$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzdc$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdc$zzb;)V

    goto :goto_0
.end method
