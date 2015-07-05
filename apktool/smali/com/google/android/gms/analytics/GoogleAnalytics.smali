.class public Lcom/google/android/gms/analytics/GoogleAnalytics;
.super Lcom/google/android/gms/analytics/TrackerHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/GoogleAnalytics$zzb;,
        Lcom/google/android/gms/analytics/GoogleAnalytics$zza;
    }
.end annotation


# static fields
.field private static volatile zzEl:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private static zzEm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static zzEv:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzAM:Lcom/google/android/gms/internal/zzra;

.field private final zzAN:Lcom/google/android/gms/analytics/zzk;

.field private final zzBS:Lcom/google/android/gms/analytics/zzf;

.field private zzBa:Ljava/lang/String;

.field private zzBb:Ljava/lang/String;

.field private zzBs:Z

.field private final zzEn:Lcom/google/android/gms/analytics/zzy;

.field private final zzEo:Lcom/google/android/gms/analytics/zzaj;

.field private final zzEp:Lcom/google/android/gms/analytics/zzai;

.field private final zzEq:Lcom/google/android/gms/analytics/zzg;

.field private final zzEr:Lcom/google/android/gms/analytics/zza;

.field private zzEs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/analytics/GoogleAnalytics$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzEt:Z

.field private volatile zzEu:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/zzv;->zzfE()Lcom/google/android/gms/analytics/zzv;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/zzf;Lcom/google/android/gms/analytics/zzaj;Lcom/google/android/gms/analytics/zzak;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/zzf;Lcom/google/android/gms/analytics/zzaj;Lcom/google/android/gms/analytics/zzak;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/TrackerHandler;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzy;->zzfV()Lcom/google/android/gms/analytics/zzy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEn:Lcom/google/android/gms/analytics/zzy;

    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzra;->zzaf(Landroid/content/Context;)Lcom/google/android/gms/internal/zzra;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzAM:Lcom/google/android/gms/internal/zzra;

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzAM:Lcom/google/android/gms/internal/zzra;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEo:Lcom/google/android/gms/analytics/zzaj;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBS:Lcom/google/android/gms/analytics/zzf;

    :goto_0
    new-instance v0, Lcom/google/android/gms/analytics/zzk;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzAM:Lcom/google/android/gms/internal/zzra;

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/zzk;-><init>(Lcom/google/android/gms/internal/zzra;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzAN:Lcom/google/android/gms/analytics/zzk;

    new-instance v0, Lcom/google/android/gms/analytics/zzg;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzAM:Lcom/google/android/gms/internal/zzra;

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/zzg;-><init>(Lcom/google/android/gms/internal/zzra;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEq:Lcom/google/android/gms/analytics/zzg;

    new-instance v0, Lcom/google/android/gms/analytics/zzai;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzAM:Lcom/google/android/gms/internal/zzra;

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/zzai;-><init>(Lcom/google/android/gms/internal/zzra;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEp:Lcom/google/android/gms/analytics/zzai;

    new-instance v0, Lcom/google/android/gms/analytics/zza;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzAM:Lcom/google/android/gms/internal/zzra;

    iget-object v2, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzAN:Lcom/google/android/gms/analytics/zzk;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/internal/zzra;Lcom/google/android/gms/analytics/zzk;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEr:Lcom/google/android/gms/analytics/zza;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEs:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzgk()V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/analytics/zzx;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/analytics/zzx;-><init>(Lcom/google/android/gms/analytics/GoogleAnalytics;Lcom/google/android/gms/analytics/zzak;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBS:Lcom/google/android/gms/analytics/zzf;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEl:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-nez v0, :cond_2

    const-class v1, Lcom/google/android/gms/analytics/GoogleAnalytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEl:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEl:Lcom/google/android/gms/analytics/GoogleAnalytics;

    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEm:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEm:Ljava/util/List;

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEl:Lcom/google/android/gms/analytics/GoogleAnalytics;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBa:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "&an"

    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBa:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBb:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "&av"

    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBb:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method private zzao(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "verbose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "warning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static zzgj()Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 2

    const-class v1, Lcom/google/android/gms/analytics/GoogleAnalytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEl:Lcom/google/android/gms/analytics/GoogleAnalytics;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzgk()V
    .locals 4

    sget-boolean v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEv:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "Couldn\'t get ApplicationInfo to load global config."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PackageManager doesn\'t know about package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "com.google.android.gms.analytics.globalConfigResource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Lcom/google/android/gms/analytics/zzz;

    iget-object v2, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/analytics/zzz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/zzz;->zzD(I)Lcom/google/android/gms/analytics/zzm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/zzaa;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zza(Lcom/google/android/gms/analytics/zzaa;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchLocalHits()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEo:Lcom/google/android/gms/analytics/zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzaj;->dispatchLocalHits()V

    return-void
.end method

.method public enableAutoActivityReports(Landroid/app/Application;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEt:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics$zzb;-><init>(Lcom/google/android/gms/analytics/GoogleAnalytics;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEt:Z

    :cond_0
    return-void
.end method

.method public getAppOptOut()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEn:Lcom/google/android/gms/analytics/zzy;

    sget-object v1, Lcom/google/android/gms/analytics/zzy$zza;->zzDM:Lcom/google/android/gms/analytics/zzy$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzy;->zza(Lcom/google/android/gms/analytics/zzy$zza;)V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEu:Z

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzAN:Lcom/google/android/gms/analytics/zzk;

    const-string v1, "&cid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLogger()Lcom/google/android/gms/analytics/Logger;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzae;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    return-object v0
.end method

.method public isDryRunEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEn:Lcom/google/android/gms/analytics/zzy;

    sget-object v1, Lcom/google/android/gms/analytics/zzy$zza;->zzDY:Lcom/google/android/gms/analytics/zzy$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzy;->zza(Lcom/google/android/gms/analytics/zzy$zza;)V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBs:Z

    return v0
.end method

.method public newTracker(I)Lcom/google/android/gms/analytics/Tracker;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEn:Lcom/google/android/gms/analytics/zzy;

    sget-object v1, Lcom/google/android/gms/analytics/zzy$zza;->zzDI:Lcom/google/android/gms/analytics/zzy$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzy;->zza(Lcom/google/android/gms/analytics/zzy$zza;)V

    new-instance v1, Lcom/google/android/gms/analytics/Tracker;

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/android/gms/analytics/Tracker;-><init>(Lcom/google/android/gms/analytics/GoogleAnalytics;Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Lcom/google/android/gms/analytics/zzah;)V

    if-lez p1, :cond_0

    new-instance v0, Lcom/google/android/gms/analytics/zzal;

    iget-object v2, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/analytics/zzal;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/zzal;->zzD(I)Lcom/google/android/gms/analytics/zzm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/zzam;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->zza(Lcom/google/android/gms/analytics/zzam;)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zza(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEn:Lcom/google/android/gms/analytics/zzy;

    sget-object v1, Lcom/google/android/gms/analytics/zzy$zza;->zzDI:Lcom/google/android/gms/analytics/zzy$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzy;->zza(Lcom/google/android/gms/analytics/zzy$zza;)V

    new-instance v0, Lcom/google/android/gms/analytics/Tracker;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/analytics/Tracker;-><init>(Lcom/google/android/gms/analytics/GoogleAnalytics;Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Lcom/google/android/gms/analytics/zzah;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zza(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportActivityStart(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEt:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzl(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public reportActivityStop(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEt:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzm(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public setAppOptOut(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEn:Lcom/google/android/gms/analytics/zzy;

    sget-object v1, Lcom/google/android/gms/analytics/zzy$zza;->zzDL:Lcom/google/android/gms/analytics/zzy$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzy;->zza(Lcom/google/android/gms/analytics/zzy$zza;)V

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEu:Z

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBS:Lcom/google/android/gms/analytics/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzf;->zzfa()V

    :cond_0
    return-void
.end method

.method public setDryRun(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEn:Lcom/google/android/gms/analytics/zzy;

    sget-object v1, Lcom/google/android/gms/analytics/zzy$zza;->zzDX:Lcom/google/android/gms/analytics/zzy$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzy;->zza(Lcom/google/android/gms/analytics/zzy$zza;)V

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBs:Z

    return-void
.end method

.method public setLocalDispatchPeriod(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEo:Lcom/google/android/gms/analytics/zzaj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/zzaj;->setLocalDispatchPeriod(I)V

    return-void
.end method

.method public setLogger(Lcom/google/android/gms/analytics/Logger;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEn:Lcom/google/android/gms/analytics/zzy;

    sget-object v1, Lcom/google/android/gms/analytics/zzy$zza;->zzDZ:Lcom/google/android/gms/analytics/zzy$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzy;->zza(Lcom/google/android/gms/analytics/zzy$zza;)V

    invoke-static {p1}, Lcom/google/android/gms/analytics/zzae;->setLogger(Lcom/google/android/gms/analytics/Logger;)V

    return-void
.end method

.method zza(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->enableAutoActivityReports(Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method zza(Lcom/google/android/gms/analytics/zzaa;)V
    .locals 3

    const-string v0, "Loading global config values."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzaa;->zzfZ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzaa;->zzga()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app name loaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzaa;->zzgb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzaa;->zzgc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBb:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app version loaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzaa;->zzgd()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzaa;->zzge()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzao(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "log level loaded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzaa;->zzgf()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEo:Lcom/google/android/gms/analytics/zzaj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzaa;->zzgg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzaj;->setLocalDispatchPeriod(I)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzaa;->zzgh()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzaa;->zzgi()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    :cond_4
    return-void
.end method

.method zzb(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method zzfj()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBS:Lcom/google/android/gms/analytics/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzf;->zzfj()V

    return-void
.end method

.method zzgl()Lcom/google/android/gms/analytics/zzd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEo:Lcom/google/android/gms/analytics/zzaj;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzaj;->zzE(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzd;

    move-result-object v0

    return-object v0
.end method

.method zzgm()Lcom/google/android/gms/analytics/zzf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBS:Lcom/google/android/gms/analytics/zzf;

    return-object v0
.end method

.method public zzgn()Lcom/google/android/gms/analytics/zzai;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEp:Lcom/google/android/gms/analytics/zzai;

    return-object v0
.end method

.method public zzgo()Lcom/google/android/gms/analytics/zzg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEq:Lcom/google/android/gms/analytics/zzg;

    return-object v0
.end method

.method public zzgp()Lcom/google/android/gms/analytics/zzk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzAN:Lcom/google/android/gms/analytics/zzk;

    return-object v0
.end method

.method public zzgq()Lcom/google/android/gms/analytics/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEr:Lcom/google/android/gms/analytics/zza;

    return-object v0
.end method

.method zzl(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;->zzn(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method zzm(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;->zzo(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method zzx(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    const-string v0, "&ul"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzan;->zza(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/analytics/zzan;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&sr"

    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEp:Lcom/google/android/gms/analytics/zzai;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/analytics/zzan;->zza(Ljava/util/Map;Ljava/lang/String;Lcom/google/android/gms/analytics/zzq;)V

    const-string v0, "&_u"

    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEn:Lcom/google/android/gms/analytics/zzy;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/zzy;->zzfX()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzEn:Lcom/google/android/gms/analytics/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzy;->zzfW()Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzBS:Lcom/google/android/gms/analytics/zzf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/zzf;->zzx(Ljava/util/Map;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
