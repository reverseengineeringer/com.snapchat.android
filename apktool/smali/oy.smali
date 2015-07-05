.class public final Loy;
.super Lox;
.source "SourceFile"


# static fields
.field private static final PATH:Ljava/lang/String; = "/loq/retry"

.field private static final TASK_NAME:Ljava/lang/String; = "SendSnapWithMediaTask"


# instance fields
.field private mData:[B

.field private final mSendSnapCacheWrapper:Lawx;

.field private final mSnapWomb:Lajn;


# direct methods
.method public constructor <init>(Laim;Lox$a;)V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lawx;->a()Lawx;

    move-result-object v0

    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Loy;-><init>(Laim;Lox$a;Lawx;Lajn;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Laim;Lox$a;Lawx;Lajn;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lox;-><init>(Laim;Lox$a;)V

    .line 38
    iput-object p3, p0, Loy;->mSendSnapCacheWrapper:Lawx;

    .line 39
    iput-object p4, p0, Loy;->mSnapWomb:Lajn;

    .line 40
    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Laku;
    .locals 8
    .annotation build Lcaq;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 58
    iget-object v0, p0, Loy;->mSnapbryo:Laim;

    invoke-static {v0}, Lawx;->a(Laim;)[B

    move-result-object v0

    iput-object v0, p0, Loy;->mData:[B

    .line 59
    iget-object v0, p0, Loy;->mData:[B

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Loy;->mSnapbryo:Laim;

    iget-object v1, p0, Loy;->mSnapWomb:Lajn;

    invoke-virtual {v1, v0}, Lajn;->a(Laim;)V

    iget-object v1, p0, Loy;->mSnapWomb:Lajn;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    invoke-virtual {v1, v0, v2}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V

    invoke-virtual {p0, v3}, Loy;->cancel(Z)Z

    .line 61
    new-instance v0, Loa;

    const-string v1, "Snap media is no longer accessible :( | Client ID: %s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Loy;->mSnapbryo:Laim;

    iget-object v3, v3, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Loa;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Loa;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Z)V

    .line 65
    const-string v1, "SendSnapWithMediaTask"

    invoke-virtual {v0}, Loa;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Loy;->mData:[B

    array-length v0, v0

    int-to-long v6, v0

    .line 70
    iget-object v1, p0, Loy;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v0, p0, Loy;->mSnapbryo:Laim;

    iget-object v4, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    const-string v5, "/loq/retry"

    const-string v2, "SNAP_SENT_DELAY"

    const-string v3, "SNAP_SENT_SNAP_DUMMY"

    invoke-virtual/range {v1 .. v7}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 71
    invoke-super {p0, p1}, Lox;->a([Ljava/lang/String;)Laku;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "/loq/retry"

    return-object v0
.end method

.method protected final b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Lox;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    const-string v1, "type"

    iget-object v2, p0, Loy;->mSnapbryo:Laim;

    invoke-virtual {v2}, Laim;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "data"

    iget-object v2, p0, Loy;->mData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 52
    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "SendSnapWithMediaTask"

    return-object v0
.end method

.method protected final d()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Loy;

    iget-object v1, p0, Loy;->mSnapbryo:Laim;

    iget-object v2, p0, Loy;->mSendSnapCallback:Lox$a;

    invoke-direct {v0, v1, v2}, Loy;-><init>(Laim;Lox$a;)V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Loy;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Loy;->a([Ljava/lang/String;)Laku;

    move-result-object v0

    return-object v0
.end method
