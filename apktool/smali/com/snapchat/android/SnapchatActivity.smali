.class public abstract Lcom/snapchat/android/SnapchatActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field public static final EXTRA_FROM:Ljava/lang/String; = "FROM"

.field protected static final STATE_KEY_WAITING_FOR_ACTIVITY_RESULT:Ljava/lang/String; = "waiting_for_activity_result"

.field private static final TAG:Ljava/lang/String; = "SnapchatActivity"

.field private static mIsCrittercismInitialized:Z


# instance fields
.field public mAnalyticsPlatformRegistry:Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mAnrReporter:Lbac;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCrashManager:Lazw;

.field public mCrashSampler:Lazi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

.field public mShakeReporter:Lazv;

.field protected mUser:Lajv;

.field protected mWaitingForActivityResult:Z
    .annotation build Lcf;
    .end annotation
.end field

.field private performPostponedTasksFromOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 50
    new-instance v0, Lazw;

    invoke-direct {v0}, Lazw;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mCrashManager:Lazw;

    .line 52
    iput-boolean v1, p0, Lcom/snapchat/android/SnapchatActivity;->performPostponedTasksFromOnResume:Z

    .line 54
    new-instance v0, Lazv;

    invoke-direct {v0}, Lazv;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mShakeReporter:Lazv;

    .line 56
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 70
    iput-boolean v1, p0, Lcom/snapchat/android/SnapchatActivity;->mWaitingForActivityResult:Z

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 240
    const-string v0, "FROM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 242
    const-string v2, "SnapchatActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logTransition "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method

.method public static final gatherLogsAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {}, Lazk;->a()Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static m()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/snapchat/android/SnapchatActivity;->mIsCrittercismInitialized:Z

    return v0
.end method


# virtual methods
.method protected a(Lajv;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 221
    const-string v0, "SnapchatActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUserLoaded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-boolean v0, p0, Lcom/snapchat/android/SnapchatActivity;->performPostponedTasksFromOnResume:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mAnalyticsPlatformRegistry:Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a(Landroid/app/Activity;)V

    .line 226
    iput-boolean v3, p0, Lcom/snapchat/android/SnapchatActivity;->performPostponedTasksFromOnResume:Z

    .line 228
    :cond_0
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lber;

    invoke-direct {v1, p1}, Lber;-><init>(Lajv;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 191
    const v0, 0xa957

    if-ne v0, p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mShakeReporter:Lazv;

    invoke-virtual {v0}, Lazv;->b()V

    .line 198
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/SnapchatApplication;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lcom/snapchat/android/SnapchatActivity;)V

    .line 85
    if-eqz p1, :cond_0

    .line 87
    const-string v0, "waiting_for_activity_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/SnapchatActivity;->mWaitingForActivityResult:Z

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mCrashManager:Lazw;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lazw;->mOnCreateMillis:J

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mCrashSampler:Lazi;

    invoke-virtual {v0}, Lazi;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "53b243b017878408e2000002"

    invoke-static {v0, v1}, Laz;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snapchat/android/SnapchatActivity;->mIsCrittercismInitialized:Z

    .line 95
    const-string v0, "initialize crittercism."

    invoke-static {v0}, Laz;->a(Ljava/lang/String;)V

    .line 97
    const-string v0, "c06b8797877eb662616000c11de0d338"

    invoke-static {p0, v0}, Lnet/hockeyapp/android/NativeCrashManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 100
    :cond_1
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    :try_start_0
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapchatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 105
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_2
    :goto_0
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    new-instance v0, Lazs;

    invoke-direct {v0}, Lazs;-><init>()V

    .line 113
    sget-object v1, Lauh;->SERIAL_EXECUTOR_FOR_DEBUGGING:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lazs$3;

    invoke-direct {v2, v0}, Lazs$3;-><init>(Lazs;)V

    invoke-static {v1, v2}, Lbgp;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x320

    new-instance v2, Lcom/snapchat/android/SnapchatActivity$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/SnapchatActivity$1;-><init>(Lcom/snapchat/android/SnapchatActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/LoaderManager;->initLoader$71be8de6(ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 117
    return-void

    .line 106
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 185
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 235
    invoke-direct {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->a(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 156
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 158
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->c()V

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mCrashSampler:Lazi;

    invoke-virtual {v0}, Lazi;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lbvj;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HockeyApp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startTime"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "usageTime"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lbuz;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v4, v8

    if-lez v3, :cond_0

    sub-long/2addr v0, v4

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "usageTime"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lbuz;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-long/2addr v0, v6

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2}, Lbwi;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 162
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 144
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mCrashManager:Lazw;

    iget v1, v0, Lazw;->mOnResumeCycles:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lazw;->mOnResumeCycles:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lazw;->mOnResumeMillis:J

    .line 147
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->b()V

    .line 148
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mCrashSampler:Lazi;

    invoke-virtual {v0}, Lazi;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "c06b8797877eb662616000c11de0d338"

    iget-object v1, p0, Lcom/snapchat/android/SnapchatActivity;->mCrashManager:Lazw;

    invoke-static {p0, v0, v1}, Lbva;->a(Landroid/content/Context;Ljava/lang/String;Lbvb;)V

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p0, :cond_0

    const-string v2, "HockeyApp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startTime"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2}, Lbwi;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 152
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 179
    const-string v0, "waiting_for_activity_result"

    iget-boolean v1, p0, Lcom/snapchat/android/SnapchatActivity;->mWaitingForActivityResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 180
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 121
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 123
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/SnapchatActivity;->a(Landroid/content/Intent;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/SnapchatActivity;->mWaitingForActivityResult:Z

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mUser:Lajv;

    if-nez v0, :cond_1

    .line 129
    iput-boolean v3, p0, Lcom/snapchat/android/SnapchatActivity;->performPostponedTasksFromOnResume:Z

    .line 134
    :goto_0
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/snapchat/android/SnapchatActivity;->mShakeReporter:Lazv;

    iput-object p0, v1, Lazv;->mActivity:Landroid/app/Activity;

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, v1, Lazv;->mSensorManager:Landroid/hardware/SensorManager;

    iput-boolean v3, v1, Lazv;->mCanSendReports:Z

    new-instance v0, Lazg;

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lazg;-><init>(Lcom/snapchat/android/util/debug/ReleaseManager;)V

    iput-object v0, v1, Lazv;->mBugReporter:Lazv$a;

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mShakeReporter:Lazv;

    iget-object v1, v0, Lazv;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, v0, Lazv;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mAnrReporter:Lbac;

    iget-object v0, v0, Lbac;->mAnrDetector:Lbkz;

    iget-object v1, v0, Lbkz;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call registerListener() before detectAnrs()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mAnalyticsPlatformRegistry:Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 139
    :cond_2
    new-instance v1, Lbkz$1;

    invoke-direct {v1, v0, p0}, Lbkz$1;-><init>(Lbkz;Landroid/content/Context;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mAnalyticsPlatformRegistry:Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;

    invoke-static {}, Lajx;->H()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "AnalyticsPlatformRegistry"

    const-string v1, "User is logged into SnapKidz. Aborting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mShakeReporter:Lazv;

    invoke-virtual {v0}, Lazv;->a()V

    .line 171
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->mShakeReporter:Lazv;

    iput-object v3, v0, Lazv;->mActivity:Landroid/app/Activity;

    iput-object v3, v0, Lazv;->mBugReporter:Lazv$a;

    .line 173
    :cond_1
    return-void

    .line 167
    :cond_2
    iget-object v0, v0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;

    invoke-interface {v0, p0}, Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public final sendNotification(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 275
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/snapchat/android/SnapchatActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    return-object p1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 249
    const-string v0, "FROM"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 260
    if-ltz p2, :cond_0

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/SnapchatActivity;->mWaitingForActivityResult:Z

    .line 263
    :cond_0
    return-void
.end method
