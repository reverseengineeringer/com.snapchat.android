.class public Lcom/google/android/gms/internal/zzz;
.super Lcom/google/android/gms/internal/zzbm$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zzre$zza;
.implements Lcom/google/android/gms/internal/zztb$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# static fields
.field private static zzmA:Lcom/google/android/gms/internal/zzz;

.field private static final zzmz:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field zzmB:Lcom/google/android/gms/internal/zzta;

.field zzmC:Ljava/lang/String;

.field zzmD:Ljava/lang/String;

.field private zzmE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzz;->zzmz:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbm$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzz;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzz;->zzmE:Z

    return-void
.end method

.method public static zzj(Landroid/content/Context;)Lcom/google/android/gms/internal/zzz;
    .locals 3

    sget-object v1, Lcom/google/android/gms/internal/zzz;->zzmz:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzz;->zzmA:Lcom/google/android/gms/internal/zzz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzz;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/zzz;->zzmA:Lcom/google/android/gms/internal/zzz;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzz;->zzmA:Lcom/google/android/gms/internal/zzz;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzz;->zzmz:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzz;->zzmE:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrh;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzrh;Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Lcom/google/android/gms/ads/AdActivity;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaM()Lcom/google/android/gms/internal/zzho;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzho;->zzk(Landroid/app/Activity;)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrh;->zzaa(Z)V

    const-string v0, "Interstitial Ad"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrh;->setScreenName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_3
    const-string v0, "Expanded Ad"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrh;->setScreenName(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrh;->setScreenName(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    instance-of v0, p2, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrh;->setScreenName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/google/android/gms/internal/zzz;->zzmz:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzz;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Fail to initialize MobileAdsSettingManager because context is null."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Fail to initialize MobileAdsSettingManager because ApplicationCode is empty."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzz;->zzmE:Z

    if-eqz v0, :cond_2

    const-string v0, "MobileAdsSettingManager has been initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzaa(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzz;->zzmE:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzz;->zzmC:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzz;->zzmD:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zztb;->zzah(Landroid/content/Context;)Lcom/google/android/gms/internal/zztb;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzta$zza;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzz;->zzmC:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzta$zza;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzz;->zzmD:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzz;->zzmD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzta$zza;->zzcA(Ljava/lang/String;)Lcom/google/android/gms/internal/zzta$zza;

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzta$zza;->zzrA()Lcom/google/android/gms/internal/zzta;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zztb;->zza(Lcom/google/android/gms/internal/zzta;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zztb;->zza(Lcom/google/android/gms/internal/zztb$zza;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzz;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzre;->zzag(Landroid/content/Context;)Lcom/google/android/gms/internal/zzre;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/zzre;->zza(Lcom/google/android/gms/internal/zzre$zza;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztb;->start()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public zzaE()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zztb;->zzah(Landroid/content/Context;)Lcom/google/android/gms/internal/zztb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztb;->zzrB()Lcom/google/android/gms/internal/zzta;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzz;->zzmB:Lcom/google/android/gms/internal/zzta;

    return-void
.end method

.method public zzaF()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzre;->zzag(Landroid/content/Context;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzre;->zzqW()Lcom/google/android/gms/internal/zzrh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh;->zzaF()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
