.class public Lcom/snapchat/android/SnapchatApplication;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation build Lawj;
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
.field protected b:Lazy;

.field protected c:Lavv;

.field public f:Laze;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Lcom/snapchat/android/util/debug/ReleaseManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Lbaw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Lna;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Laej;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public k:Lacy;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public l:Lpm;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public m:Lxv;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public n:Lbam;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public o:Laph;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public p:Lafg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final q:Lmn;

.field private final r:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

.field private s:Lbak;


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
    invoke-static {}, Lavv;->a()Lavv;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->c:Lavv;

    .line 60
    new-instance v0, Lmn;

    invoke-direct {v0}, Lmn;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->q:Lmn;

    .line 76
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->r:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 77
    new-instance v0, Lbak;

    invoke-direct {v0}, Lbak;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->s:Lbak;

    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 212
    sget-boolean v0, Lcom/snapchat/android/SnapchatApplication;->d:Z

    return v0
.end method

.method public static b()Lcom/snapchat/android/SnapchatApplication;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/snapchat/android/SnapchatApplication;->a:Lcom/snapchat/android/SnapchatApplication;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 198
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {p0}, Lz;->a(Landroid/content/Context;)V

    .line 201
    :cond_0
    invoke-static {p1}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

    invoke-static {p1}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    return-void
.end method

.method public final c()Lazy;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->b:Lazy;

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const v2, 0x7fffffff

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->c:Lavv;

    sget v3, Lavv$a;->APPLICATION_CREATE_CHECKPOINT$6dad94c5:I

    invoke-virtual {v0, v3}, Lavv;->a(I)V

    .line 91
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 92
    sput-object p0, Lcom/snapchat/android/SnapchatApplication;->a:Lcom/snapchat/android/SnapchatApplication;

    .line 94
    invoke-static {}, Lazz;->d()Lazz$a;

    move-result-object v0

    new-instance v3, Lazj;

    invoke-direct {v3, p0}, Lazj;-><init>(Lcom/snapchat/android/SnapchatApplication;)V

    iput-object v3, v0, Lazz$a;->androidModule:Lazj;

    iget-object v3, v0, Lazz$a;->androidModule:Lazj;

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "androidModule must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v3, v0, Lazz$a;->discoverModule:Lbaa;

    if-nez v3, :cond_1

    new-instance v3, Lbaa;

    invoke-direct {v3}, Lbaa;-><init>()V

    iput-object v3, v0, Lazz$a;->discoverModule:Lbaa;

    :cond_1
    new-instance v3, Lazz;

    invoke-direct {v3, v0, v7}, Lazz;-><init>(Lazz$a;B)V

    iput-object v3, p0, Lcom/snapchat/android/SnapchatApplication;->b:Lazy;

    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->b:Lazy;

    invoke-interface {v0, p0}, Lazy;->a(Lcom/snapchat/android/SnapchatApplication;)V

    .line 95
    invoke-static {p0}, Lcom/snapchat/android/util/debug/ReleaseManager;->a(Landroid/content/Context;)V

    .line 96
    invoke-static {p0}, Lain;->a(Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->p:Lafg;

    new-instance v3, Lawn;

    invoke-direct {v3, p0}, Lawn;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lafg;->a:Lawn;

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->j:Laej;

    iput-object p0, v0, Laej;->i:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, v0, Laej;->j:Landroid/content/ContentResolver;

    iget-object v3, v0, Laej;->d:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    iget-object v4, v0, Laej;->d:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v0, Laej;->h:Landroid/os/Handler;

    iget-object v3, v0, Laej;->j:Landroid/content/ContentResolver;

    sget-object v4, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    new-instance v5, Laej$1;

    iget-object v6, v0, Laej;->h:Landroid/os/Handler;

    invoke-direct {v5, v0, v6}, Laej$1;-><init>(Laej;Landroid/os/Handler;)V

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, v0, Laej;->j:Landroid/content/ContentResolver;

    sget-object v4, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    new-instance v5, Laej$6;

    iget-object v6, v0, Laej;->h:Landroid/os/Handler;

    invoke-direct {v5, v0, v6}, Laej$6;-><init>(Laej;Landroid/os/Handler;)V

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->i:Lna;

    iput-object p0, v0, Lna;->mAppContext:Landroid/content/Context;

    new-instance v3, Lnh;

    invoke-direct {v3}, Lnh;-><init>()V

    invoke-virtual {v0, v3, v1}, Lna;->a(Lnc;Lne;)V

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->k:Lacy;

    invoke-virtual {v0}, Lacy;->b()V

    .line 102
    iget-object v5, p0, Lcom/snapchat/android/SnapchatApplication;->l:Lpm;

    invoke-static {v8}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v8}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v3, v6, :cond_b

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_1
    if-eqz v0, :cond_d

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-le v2, v6, :cond_c

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    :goto_2
    new-instance v6, Lavc;

    invoke-direct {v6, v4, v3}, Lavc;-><init>(II)V

    iput-object v6, v5, Lpm;->mResolution:Lavc;

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v5, Lpm;->mMaxVideoHeight:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v5, Lpm;->mMaxVideoWidth:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, v5, Lpm;->mResolution:Lavc;

    invoke-virtual {v2}, Lavc;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    iget-object v2, v5, Lpm;->mResolution:Lavc;

    invoke-virtual {v2}, Lavc;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v8

    const/4 v2, 0x2

    iget v3, v5, Lpm;->mMaxVideoHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget v3, v5, Lpm;->mMaxVideoWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->m:Lxv;

    invoke-virtual {v0, p0}, Lxv;->a(Landroid/content/Context;)V

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->q:Lmn;

    invoke-virtual {v0, p0}, Lmn;->a(Landroid/app/Application;)V

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->n:Lbam;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 106
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->o:Laph;

    iput-object p0, v0, Laph;->c:Landroid/content/Context;

    .line 107
    invoke-static {}, Lcom/snapchat/android/analytics/framework/UserPropertiesProvider;->d()Lcom/snapchat/android/analytics/framework/UserPropertiesProvider;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Landroid/content/Context;Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;)V

    .line 108
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Laox;->a(Landroid/content/Context;)Lbqe;

    move-result-object v0

    invoke-static {v0}, Lbqe;->a(Lbqe;)V

    .line 110
    :cond_2
    invoke-static {p0}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->c(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lakr;->i()I

    move-result v2

    if-eq v0, v2, :cond_3

    new-instance v2, Lbas;

    invoke-direct {v2}, Lbas;-><init>()V

    invoke-static {v7}, Lakr;->q(Z)V

    invoke-static {v0}, Lakr;->a(I)V

    .line 111
    :cond_3
    sget-boolean v0, Lcom/snapchat/android/SnapchatApplication;->d:Z

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/SnapchatApplication$2;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/SnapchatApplication$2;-><init>(Lcom/snapchat/android/SnapchatApplication;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_4
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v0

    if-eqz v0, :cond_5

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

    :cond_5
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatApplication;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Laxy;->a(Ljava/io/File;Ljava/io/File;)V

    invoke-static {}, Lakr;->bt()Ljava/util/UUID;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/snapchat/android/analytics/framework/UniqueDeviceIdBuilder;->a(Landroid/content/Context;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lakr;->a(Ljava/util/UUID;)V

    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/snapchat/android/SnapchatApplication$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/SnapchatApplication$1;-><init>(Lcom/snapchat/android/SnapchatApplication;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->b()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->i()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->s:Lbak;

    sget-object v2, Lcom/snapchat/android/SnapchatApplication;->e:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_8
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->c:Lavv;

    invoke-static {}, Lavv;->d()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {}, Lavv;->c()J

    move-result-wide v4

    div-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lavv;->mAppCreationTime:Ljava/lang/Long;

    .line 113
    :goto_4
    return-void

    .line 102
    :cond_9
    invoke-static {v7}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v7}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_1

    :cond_c
    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto/16 :goto_2

    .line 112
    :cond_e
    iput-object v1, v0, Lavv;->mAppCreationTime:Ljava/lang/Long;

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_3
.end method
