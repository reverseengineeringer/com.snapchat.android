.class public Lcom/google/android/gms/internal/zzaw;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg",
        "<",
        "Lcom/google/android/gms/internal/zzbj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzba;Ljava/lang/String;Lcom/google/android/gms/internal/zzdq;)Lcom/google/android/gms/internal/zzbi;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaw;->zzS(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbj;

    const v5, 0x6c42d8

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbj;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzba;Ljava/lang/String;Lcom/google/android/gms/internal/zzdr;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbi$zza;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbi;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/zzg$zza; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Could not create remote AdManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Could not create remote AdManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzba;Ljava/lang/String;Lcom/google/android/gms/internal/zzdq;)Lcom/google/android/gms/internal/zzbi;
    .locals 6

    const v1, 0x6c42d8

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzhw;->zzA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzaw;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzba;Ljava/lang/String;Lcom/google/android/gms/internal/zzdq;)Lcom/google/android/gms/internal/zzbi;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Using AdManager from the client jar."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/gms/internal/zzhy;

    const/4 v0, 0x1

    invoke-direct {v5, v1, v1, v0}, Lcom/google/android/gms/internal/zzhy;-><init>(IIZ)V

    new-instance v0, Lcom/google/android/gms/internal/zzt;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzba;Ljava/lang/String;Lcom/google/android/gms/internal/zzdr;Lcom/google/android/gms/internal/zzhy;)V

    :cond_1
    return-object v0
.end method

.method protected zzc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbj;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbj$zza;->zzh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbj;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzd(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaw;->zzc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbj;

    move-result-object v0

    return-object v0
.end method
