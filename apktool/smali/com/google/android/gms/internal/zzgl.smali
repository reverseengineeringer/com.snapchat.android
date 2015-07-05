.class public final Lcom/google/android/gms/internal/zzgl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzgl$zzb;,
        Lcom/google/android/gms/internal/zzgl$zza;
    }
.end annotation


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgl$zza;)Lcom/google/android/gms/internal/zzhl;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzgl$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzgl$1;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzgl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgl$zza;Lcom/google/android/gms/internal/zzgl$zzb;)Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    return-object v0
.end method

.method static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgl$zza;Lcom/google/android/gms/internal/zzgl$zzb;)Lcom/google/android/gms/internal/zzhl;
    .locals 1

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/zzgl$zzb;->zzc(Lcom/google/android/gms/internal/zzgo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzgl;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgl$zza;)Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzgl;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgl$zza;)Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    goto :goto_0
.end method

.method private static zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgl$zza;)Lcom/google/android/gms/internal/zzhl;
    .locals 1

    const-string v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzgm$zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzgm$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgl$zza;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgm$zza;->start()V

    return-object v0
.end method

.method private static zzc(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgl$zza;)Lcom/google/android/gms/internal/zzhl;
    .locals 1

    const-string v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhw;->zzA(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to connect to remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzgm$zzb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzgm$zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgl$zza;)V

    goto :goto_0
.end method
