.class public Lcom/snapchat/android/SnapchatApplication;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation build Lavl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/SnapchatApplication$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/snapchat/android/SnapchatApplication;

.field protected static d:Z

.field static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/snapchat/android/SnapchatApplication$a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected b:Laza;

.field protected c:Laux;

.field public f:Layg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Lcom/snapchat/android/util/debug/ReleaseManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Lazx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Lmj;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Ladj;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public k:Laby;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public l:Lov;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public m:Lws;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public n:Lazn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public o:Laol;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public p:Laeg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final q:Llv;

.field private final r:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

.field private s:Lazl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/SnapchatApplication;->d:Z

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/snapchat/android/SnapchatApplication;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 54
    invoke-static {}, Laux;->a()Laux;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->c:Laux;

    .line 60
    new-instance v0, Llv;

    invoke-direct {v0}, Llv;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->q:Llv;

    .line 76
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->r:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 77
    new-instance v0, Lazl;

    invoke-direct {v0}, Lazl;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->s:Lazl;

    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 208
    sget-boolean v0, Lcom/snapchat/android/SnapchatApplication;->d:Z

    return v0
.end method

.method public static b()Lcom/snapchat/android/SnapchatApplication;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/snapchat/android/SnapchatApplication;->a:Lcom/snapchat/android/SnapchatApplication;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 196
    invoke-static {p0}, Lz;->a(Landroid/content/Context;)V

    .line 197
    return-void
.end method

.method public final c()Laza;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->b:Laza;

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 90
    iget-object v2, p0, Lcom/snapchat/android/SnapchatApplication;->c:Laux;

    sget v3, Laux$a;->APPLICATION_CREATE_CHECKPOINT$6dad94c5:I

    invoke-virtual {v2, v3}, Laux;->a(I)V

    .line 91
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 92
    sput-object p0, Lcom/snapchat/android/SnapchatApplication;->a:Lcom/snapchat/android/SnapchatApplication;

    .line 94
    invoke-static {}, Lazb;->d()Lazb$a;

    move-result-object v2

    new-instance v3, Layl;

    invoke-direct {v3, p0}, Layl;-><init>(Lcom/snapchat/android/SnapchatApplication;)V

    iput-object v3, v2, Lazb$a;->androidModule:Layl;

    iget-object v3, v2, Lazb$a;->androidModule:Layl;

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "androidModule must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v3, v2, Lazb$a;->discoverModule:Lazc;

    if-nez v3, :cond_1

    new-instance v3, Lazc;

    invoke-direct {v3}, Lazc;-><init>()V

    iput-object v3, v2, Lazb$a;->discoverModule:Lazc;

    :cond_1
    new-instance v3, Lazb;

    invoke-direct {v3, v2, v7}, Lazb;-><init>(Lazb$a;B)V

    iput-object v3, p0, Lcom/snapchat/android/SnapchatApplication;->b:Laza;

    iget-object v2, p0, Lcom/snapchat/android/SnapchatApplication;->b:Laza;

    invoke-interface {v2, p0}, Laza;->a(Lcom/snapchat/android/SnapchatApplication;)V

    .line 95
    invoke-static {p0}, Lcom/snapchat/android/util/debug/ReleaseManager;->a(Landroid/content/Context;)V

    .line 96
    invoke-static {p0}, Lahr;->a(Landroid/content/Context;)V

    .line 98
    iget-object v2, p0, Lcom/snapchat/android/SnapchatApplication;->p:Laeg;

    new-instance v3, Lavp;

    invoke-direct {v3, p0}, Lavp;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Laeg;->a:Lavp;

    .line 99
    iget-object v2, p0, Lcom/snapchat/android/SnapchatApplication;->j:Ladj;

    iput-object p0, v2, Ladj;->h:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, v2, Ladj;->i:Landroid/content/ContentResolver;

    iget-object v3, v2, Ladj;->d:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    iget-object v4, v2, Ladj;->d:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v2, Ladj;->g:Landroid/os/Handler;

    iget-object v3, v2, Ladj;->i:Landroid/content/ContentResolver;

    sget-object v4, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    new-instance v5, Ladj$1;

    iget-object v6, v2, Ladj;->g:Landroid/os/Handler;

    invoke-direct {v5, v2, v6}, Ladj$1;-><init>(Ladj;Landroid/os/Handler;)V

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, v2, Ladj;->i:Landroid/content/ContentResolver;

    sget-object v4, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    new-instance v5, Ladj$5;

    iget-object v6, v2, Ladj;->g:Landroid/os/Handler;

    invoke-direct {v5, v2, v6}, Ladj$5;-><init>(Ladj;Landroid/os/Handler;)V

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    iget-object v2, p0, Lcom/snapchat/android/SnapchatApplication;->i:Lmj;

    iput-object p0, v2, Lmj;->mAppContext:Landroid/content/Context;

    new-instance v3, Lmq;

    invoke-direct {v3}, Lmq;-><init>()V

    invoke-virtual {v2, v3, v0}, Lmj;->a(Lml;Lmn;)V

    .line 101
    iget-object v2, p0, Lcom/snapchat/android/SnapchatApplication;->k:Laby;

    invoke-virtual {v2}, Laby;->b()V

    .line 102
    iget-object v4, p0, Lcom/snapchat/android/SnapchatApplication;->l:Lov;

    invoke-static {v8}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v8}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v5, :cond_b

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_1
    if-eqz v0, :cond_d

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v5, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-le v1, v5, :cond_c

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_2
    new-instance v5, Laue;

    invoke-direct {v5, v3, v2}, Laue;-><init>(II)V

    iput-object v5, v4, Lov;->mResolution:Laue;

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v4, Lov;->mMaxVideoHeight:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v4, Lov;->mMaxVideoWidth:I

    const-string v0, "ScreenParameterProvider"

    const-string v1, "Computed screen parameter values: height=%d, width=%d, maxVideoHeight=%d, maxVideoWidth=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v4, Lov;->mResolution:Laue;

    invoke-virtual {v3}, Laue;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, v4, Lov;->mResolution:Laue;

    invoke-virtual {v3}, Laue;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x2

    iget v5, v4, Lov;->mMaxVideoHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    iget v4, v4, Lov;->mMaxVideoWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->m:Lws;

    invoke-virtual {v0, p0}, Lws;->a(Landroid/content/Context;)V

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->q:Llv;

    invoke-virtual {v0, p0}, Llv;->a(Landroid/app/Application;)V

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->n:Lazn;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lazn;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 106
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->o:Laol;

    iput-object p0, v0, Laol;->c:Landroid/content/Context;

    .line 107
    invoke-static {}, Lcom/snapchat/android/analytics/framework/UserPropertiesProvider;->d()Lcom/snapchat/android/analytics/framework/UserPropertiesProvider;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Landroid/content/Context;Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;)V

    .line 108
    invoke-static {}, Laoa;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Laoa;->a(Landroid/content/Context;)Lbpd;

    move-result-object v0

    invoke-static {v0}, Lbpd;->a(Lbpd;)V

    .line 110
    :cond_3
    invoke-static {p0}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->c(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lajx;->i()I

    move-result v1

    if-eq v0, v1, :cond_4

    const-string v1, "SnapchatApplication"

    const-string v2, "app upgrade detected"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lazt;

    invoke-direct {v1}, Lazt;-><init>()V

    invoke-static {v7}, Lajx;->r(Z)V

    invoke-static {v0}, Lajx;->a(I)V

    .line 111
    :cond_4
    sget-boolean v0, Lcom/snapchat/android/SnapchatApplication;->d:Z

    if-nez v0, :cond_5

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/SnapchatApplication$2;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/SnapchatApplication$2;-><init>(Lcom/snapchat/android/SnapchatApplication;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_5
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_6
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatApplication;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Laxa;->a(Ljava/io/File;Ljava/io/File;)V

    invoke-static {}, Lajx;->bw()Ljava/util/UUID;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/snapchat/android/analytics/framework/UniqueDeviceIdBuilder;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/UniqueDeviceIdBuilder;-><init>()V

    invoke-static {p0}, Lcom/snapchat/android/analytics/framework/UniqueDeviceIdBuilder;->a(Landroid/content/Context;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lajx;->a(Ljava/util/UUID;)V

    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snapchat/android/SnapchatApplication$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapchatApplication$1;-><init>(Lcom/snapchat/android/SnapchatApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->b()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->i()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->s:Lazl;

    sget-object v1, Lcom/snapchat/android/SnapchatApplication;->e:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_9
    return-void

    .line 102
    :cond_a
    invoke-static {v7}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v7}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_1

    :cond_c
    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_2

    :cond_d
    move v0, v1

    goto/16 :goto_2

    .line 111
    :catch_0
    move-exception v0

    const-string v1, "SnapchatApplication"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method
