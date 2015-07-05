.class public final Lor;
.super Loq;
.source "SourceFile"


# static fields
.field private static final PATH:Ljava/lang/String; = "/bq/retry_post_story"

.field private static final TASK_NAME:Ljava/lang/String; = "PostStorySnapWithMediaTask"


# instance fields
.field private mData:[B

.field private final mEventBus:Lcom/squareup/otto/Bus;

.field private final mSendSnapCacheWrapper:Lawx;

.field private final mSnapWomb:Lajn;

.field private final mVideoTranscoder:Lwz;


# direct methods
.method public constructor <init>(Laim;Loq$a;)V
    .locals 7

    .prologue
    .line 36
    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v3

    invoke-static {}, Lwz;->a()Lwz;

    move-result-object v4

    invoke-static {}, Lawx;->a()Lawx;

    move-result-object v5

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lor;-><init>(Laim;Loq$a;Lajn;Lwz;Lawx;Lcom/squareup/otto/Bus;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Laim;Loq$a;Lajn;Lwz;Lawx;Lcom/squareup/otto/Bus;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Loq;-><init>(Laim;Loq$a;)V

    .line 47
    iput-object p3, p0, Lor;->mSnapWomb:Lajn;

    .line 48
    iput-object p4, p0, Lor;->mVideoTranscoder:Lwz;

    .line 49
    iput-object p5, p0, Lor;->mSendSnapCacheWrapper:Lawx;

    .line 50
    iput-object p6, p0, Lor;->mEventBus:Lcom/squareup/otto/Bus;

    .line 51
    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Laku;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    iget-object v1, p0, Lor;->mSnapbryo:Laim;

    invoke-static {v1}, Lawx;->a(Laim;)[B

    move-result-object v1

    iput-object v1, p0, Lor;->mData:[B

    .line 69
    iget-object v1, p0, Lor;->mData:[B

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lor;->mSnapbryo:Laim;

    iget-object v2, p0, Lor;->mSnapWomb:Lajn;

    invoke-virtual {v2, v1}, Lajn;->a(Laim;)V

    invoke-virtual {p0, v6}, Lor;->cancel(Z)Z

    invoke-static {}, Lor;->d()V

    iget-object v1, p0, Lor;->mEventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v3, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v4, 0x7f0c0288

    invoke-direct {v2, v3, v4}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 71
    new-instance v1, Loa;

    const-string v2, "Story media is no longer accessible :( | Client ID: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lor;->mSnapbryo:Laim;

    iget-object v4, v4, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Loa;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v2, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v1}, Loa;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Z)V

    .line 75
    const-string v2, "PostStorySnapWithMediaTask"

    invoke-virtual {v1}, Loa;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    invoke-virtual {p0}, Lor;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    iget-object v0, p0, Lor;->mData:[B

    array-length v0, v0

    int-to-long v6, v0

    .line 83
    iget-object v1, p0, Lor;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v0, p0, Lor;->mSnapbryo:Laim;

    iget-object v4, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    const-string v5, "/bq/retry_post_story"

    const-string v2, "STORY_POST_DELAY"

    const-string v3, "SNAP_SENT_STORY_DUMMY"

    invoke-virtual/range {v1 .. v7}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 84
    invoke-super {p0, p1}, Loq;->a([Ljava/lang/String;)Laku;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "/bq/retry_post_story"

    return-object v0
.end method

.method protected final b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Loq;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    const-string v1, "data"

    iget-object v2, p0, Lor;->mData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 62
    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "PostStorySnapWithMediaTask"

    return-object v0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lor;->a([Ljava/lang/String;)Laku;

    move-result-object v0

    return-object v0
.end method

.method protected final e()V
    .locals 7

    .prologue
    .line 97
    new-instance v0, Lor;

    iget-object v1, p0, Lor;->mSnapbryo:Laim;

    iget-object v2, p0, Lor;->mPostStorySnapCallback:Loq$a;

    iget-object v3, p0, Lor;->mSnapWomb:Lajn;

    iget-object v4, p0, Lor;->mVideoTranscoder:Lwz;

    iget-object v5, p0, Lor;->mSendSnapCacheWrapper:Lawx;

    iget-object v6, p0, Lor;->mEventBus:Lcom/squareup/otto/Bus;

    invoke-direct/range {v0 .. v6}, Lor;-><init>(Laim;Loq$a;Lajn;Lwz;Lawx;Lcom/squareup/otto/Bus;)V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    return-void
.end method
