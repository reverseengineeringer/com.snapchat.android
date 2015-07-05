.class public final Laom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laom$a;
    }
.end annotation


# instance fields
.field final a:Laop;

.field private final b:Lajn;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v0

    invoke-static {}, Laop;->a()Laop;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Laom;-><init>(Landroid/content/Context;Lajn;Laop;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lajn;Laop;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Laom;->c:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Laom;->b:Lajn;

    .line 49
    iput-object p3, p0, Laom;->a:Laop;

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/StorySnapLogbook;Laom$a;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/model/StorySnapLogbook;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laom$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 59
    iget-object v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    iget-boolean v0, v0, Lajr;->mFailed:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    iget-object v0, v0, Lajr;->mClientId:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Laom;->b:Lajn;

    iget-object v2, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lajn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-interface {p2}, Laom$a;->c()V

    .line 90
    :goto_0
    iget-object v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    iget-object v0, v0, Lajr;->mClientId:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Ljava/lang/String;)V

    .line 91
    return-void

    .line 64
    :cond_0
    new-instance v0, Laom$1;

    iget-object v3, p0, Laom;->c:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Laom$1;-><init>(Laom;Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;Lcom/snapchat/android/model/StorySnapLogbook;Laom$a;)V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laom$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final b(Lcom/snapchat/android/model/StorySnapLogbook;Laom$a;)V
    .locals 9
    .param p1    # Lcom/snapchat/android/model/StorySnapLogbook;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laom$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .annotation build Lccm;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 101
    iget-object v3, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    .line 102
    invoke-virtual {v3}, Lajr;->ak()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Laom$2;

    iget-object v2, p0, Laom;->c:Landroid/content/Context;

    sget-object v4, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;->STORY:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    sget-object v5, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->FAIL_ONLY:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Laom$2;-><init>(Laom;Landroid/content/Context;Lajr;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;Lcom/snapchat/android/model/StorySnapLogbook;Laom$a;)V

    sget-object v1, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Laom$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    :goto_0
    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lajr;)V

    .line 151
    return-void

    .line 126
    :cond_0
    new-instance v0, Laom$3;

    iget-object v2, p0, Laom;->c:Landroid/content/Context;

    sget-object v4, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;->STORY:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    sget-object v5, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->FAIL_ONLY:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Laom$3;-><init>(Laom;Landroid/content/Context;Lajr;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;Lcom/snapchat/android/model/StorySnapLogbook;Laom$a;)V

    sget-object v1, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Laom$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
