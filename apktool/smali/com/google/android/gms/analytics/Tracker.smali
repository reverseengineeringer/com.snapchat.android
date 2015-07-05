.class public Lcom/google/android/gms/analytics/Tracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/Tracker$zza;
    }
.end annotation


# instance fields
.field private final zzBN:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final zzFe:Lcom/google/android/gms/analytics/TrackerHandler;

.field private final zzFf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzFg:Lcom/google/android/gms/analytics/zzah;

.field private final zzFh:Lcom/google/android/gms/analytics/Tracker$zza;

.field private zzFi:Lcom/google/android/gms/analytics/ExceptionReporter;

.field private zzFj:Lcom/google/android/gms/analytics/zzam;

.field private final zzsZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/GoogleAnalytics;Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Lcom/google/android/gms/analytics/zzah;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFf:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzBN:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-nez p3, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzFe:Lcom/google/android/gms/analytics/TrackerHandler;

    :goto_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    const-string v1, "&tid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    const-string v1, "useSecure"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    const-string v1, "&a"

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_2

    new-instance v0, Lcom/google/android/gms/analytics/zzad;

    const-string v1, "tracking"

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/zzad;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFg:Lcom/google/android/gms/analytics/zzah;

    :goto_1
    new-instance v0, Lcom/google/android/gms/analytics/Tracker$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/Tracker$zza;-><init>(Lcom/google/android/gms/analytics/Tracker;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFh:Lcom/google/android/gms/analytics/Tracker$zza;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    return-void

    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/analytics/Tracker;->zzFe:Lcom/google/android/gms/analytics/TrackerHandler;

    goto :goto_0

    :cond_2
    iput-object p4, p0, Lcom/google/android/gms/analytics/Tracker;->zzFg:Lcom/google/android/gms/analytics/zzah;

    goto :goto_1
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFh:Lcom/google/android/gms/analytics/Tracker$zza;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzBN:Lcom/google/android/gms/analytics/GoogleAnalytics;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/zzam;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFj:Lcom/google/android/gms/analytics/zzam;

    return-object v0
.end method

.method private zzgD()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFi:Lcom/google/android/gms/analytics/ExceptionReporter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static zzp(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public enableAdvertisingIdCollection(Z)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    const-string v1, "&ate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    const-string v1, "&adid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    const-string v1, "&ate"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    const-string v1, "&ate"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    const-string v1, "&adid"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    const-string v1, "&adid"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public enableAutoActivityTracking(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFh:Lcom/google/android/gms/analytics/Tracker$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker$zza;->enableAutoActivityTracking(Z)V

    return-void
.end method

.method public enableExceptionReporting(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/Tracker;->zzgD()Z

    move-result v0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzBN:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/analytics/ExceptionReporter;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->zzFi:Lcom/google/android/gms/analytics/ExceptionReporter;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFi:Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string v0, "Uncaught exceptions will be reported to Google Analytics."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFi:Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ExceptionReporter;->zzfD()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string v0, "Uncaught exceptions will not be reported to Google Analytics."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/zzy;->zzfV()Lcom/google/android/gms/analytics/zzy;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/analytics/zzy$zza;->zzDe:Lcom/google/android/gms/analytics/zzy$zza;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/zzy;->zza(Lcom/google/android/gms/analytics/zzy$zza;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "&ul"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzan;->zza(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzBN:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzgp()Lcom/google/android/gms/analytics/zzk;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/zzk;->zzaj(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/zzk;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzBN:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzgn()Lcom/google/android/gms/analytics/zzai;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/zzai;->zzaj(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/zzai;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzBN:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzgo()Lcom/google/android/gms/analytics/zzg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/zzg;->zzaj(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/zzg;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public send(Ljava/util/Map;)V
    .locals 6
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

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/analytics/zzy;->zzfV()Lcom/google/android/gms/analytics/zzy;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/analytics/zzy$zza;->zzDg:Lcom/google/android/gms/analytics/zzy$zza;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/zzy;->zza(Lcom/google/android/gms/analytics/zzy$zza;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p1, :cond_0

    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/analytics/Tracker;->zzFf:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "&tid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Missing tracking id (%s) parameter."

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "&tid"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V

    :cond_3
    const-string v0, "&t"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "Missing hit type (%s) parameter."

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "&t"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V

    const-string v0, ""

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/analytics/Tracker;->zzFh:Lcom/google/android/gms/analytics/Tracker$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/Tracker$zza;->zzgG()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "&sc"

    const-string v4, "start"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v0, "screenview"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pageview"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "appview"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    const-string v4, "&a"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const v4, 0x7fffffff

    if-lt v0, v4, :cond_7

    move v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    const-string v4, "&a"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "transaction"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "item"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFg:Lcom/google/android/gms/analytics/zzah;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzah;->zzgv()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Too many hits sent too quickly, rate limiting invoked."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFe:Lcom/google/android/gms/analytics/TrackerHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/TrackerHandler;->zzx(Ljava/util/Map;)V

    goto :goto_1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Key should be non-null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzy;->zzfV()Lcom/google/android/gms/analytics/zzy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/zzy$zza;->zzDf:Lcom/google/android/gms/analytics/zzy$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzy;->zza(Lcom/google/android/gms/analytics/zzy$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsZ:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAnonymizeIp(Z)V
    .locals 2

    const-string v0, "&aip"

    invoke-static {p1}, Lcom/google/android/gms/analytics/zzan;->zzG(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&aid"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppInstallerId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&aiid"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&an"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&av"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCampaignParamsOnNextHit(Landroid/net/Uri;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "referrer"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://hostname/?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "utm_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->zzFf:Ljava/util/Map;

    const-string v3, "&ci"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "utm_campaign"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->zzFf:Ljava/util/Map;

    const-string v3, "&cn"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "utm_content"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->zzFf:Ljava/util/Map;

    const-string v3, "&cc"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "utm_medium"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->zzFf:Ljava/util/Map;

    const-string v3, "&cm"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "utm_source"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->zzFf:Ljava/util/Map;

    const-string v3, "&cs"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v1, "utm_term"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->zzFf:Ljava/util/Map;

    const-string v3, "&ck"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v1, "dclid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->zzFf:Ljava/util/Map;

    const-string v3, "&dclid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzFf:Ljava/util/Map;

    const-string v2, "&gclid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&cid"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&de"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dh"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&ul"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dl"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dp"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dr"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSampleRate(D)V
    .locals 3

    const-string v0, "&sf"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenColors(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&sd"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&cd"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenResolution(II)V
    .locals 3

    if-gez p1, :cond_0

    if-gez p2, :cond_0

    const-string v0, "Invalid width or height. The values should be non-negative."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "&sr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSessionTimeout(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFh:Lcom/google/android/gms/analytics/Tracker$zza;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/Tracker$zza;->setSessionTimeout(J)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dt"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseSecure(Z)V
    .locals 2

    const-string v0, "useSecure"

    invoke-static {p1}, Lcom/google/android/gms/analytics/zzan;->zzG(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setViewportSize(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&vp"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method zza(Lcom/google/android/gms/analytics/zzam;)V
    .locals 4

    const-string v0, "Loading Tracker config values."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzFj:Lcom/google/android/gms/analytics/zzam;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFj:Lcom/google/android/gms/analytics/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzam;->zzgK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFj:Lcom/google/android/gms/analytics/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzam;->zzgL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&tid"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Tracker] trackingId loaded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFj:Lcom/google/android/gms/analytics/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzam;->zzgM()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFj:Lcom/google/android/gms/analytics/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzam;->zzgN()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&sf"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Tracker] sample frequency loaded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFj:Lcom/google/android/gms/analytics/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzam;->zzgO()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFj:Lcom/google/android/gms/analytics/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzam;->getSessionTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setSessionTimeout(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Tracker] session timeout loaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zzgE()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFj:Lcom/google/android/gms/analytics/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzam;->zzgP()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFj:Lcom/google/android/gms/analytics/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzam;->zzgQ()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Tracker] auto activity tracking loaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zzgF()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFj:Lcom/google/android/gms/analytics/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzam;->zzgR()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFj:Lcom/google/android/gms/analytics/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzam;->zzgS()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "&aip"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[Tracker] anonymize ip loaded: true"

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    :cond_4
    const-string v0, "[Tracker] anonymize ip loaded: false"

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFj:Lcom/google/android/gms/analytics/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzam;->zzgT()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    return-void
.end method

.method zzgE()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFh:Lcom/google/android/gms/analytics/Tracker$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker$zza;->zzgE()J

    move-result-wide v0

    return-wide v0
.end method

.method zzgF()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFh:Lcom/google/android/gms/analytics/Tracker$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker$zza;->zzgF()Z

    move-result v0

    return v0
.end method
