.class public final Lcom/google/android/gms/internal/zzra;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzra$zza;,
        Lcom/google/android/gms/internal/zzra$zzb;
    }
.end annotation


# static fields
.field private static volatile zzarZ:Lcom/google/android/gms/internal/zzra;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzasa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzrb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzasb:Lcom/google/android/gms/internal/zzqw;

.field private final zzasc:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile zzasd:Lcom/google/android/gms/internal/zzrf;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/zzra$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzra$zza;-><init>(Lcom/google/android/gms/internal/zzra$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzasc:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzasa:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzqw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzasb:Lcom/google/android/gms/internal/zzqw;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzra;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzasa:Ljava/util/List;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzqx;)V
    .locals 5

    const-string v0, "deliver should be called from worker thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzbe(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqx;->zzqS()Z

    move-result v0

    const-string v1, "Measurement must be submitted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqx;->zzqR()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzrc;->zzqP()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzrc;->zza(Lcom/google/android/gms/internal/zzqx;)V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzra;Lcom/google/android/gms/internal/zzqx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzra;->zza(Lcom/google/android/gms/internal/zzqx;)V

    return-void
.end method

.method public static zzaf(Landroid/content/Context;)Lcom/google/android/gms/internal/zzra;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzra;->zzarZ:Lcom/google/android/gms/internal/zzra;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzra;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzra;->zzarZ:Lcom/google/android/gms/internal/zzra;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzra;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzra;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/zzra;->zzarZ:Lcom/google/android/gms/internal/zzra;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzra;->zzarZ:Lcom/google/android/gms/internal/zzra;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/zzra$zzb;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzasc:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzqU()Lcom/google/android/gms/internal/zzrf;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzasd:Lcom/google/android/gms/internal/zzrf;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzasd:Lcom/google/android/gms/internal/zzrf;

    if-nez v0, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/zzrf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzrf;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzrf;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzrf;->setAppInstallerId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzra;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzrf;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzrf;->setAppVersion(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzra;->zzasd:Lcom/google/android/gms/internal/zzrf;

    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzasd:Lcom/google/android/gms/internal/zzrf;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public final zzqV()Lcom/google/android/gms/internal/zzrg;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzrg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzrg;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzan;->zza(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzrg;->setLanguage(Ljava/lang/String;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzgp(I)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzrg;->zzgq(I)V

    return-object v1
.end method
