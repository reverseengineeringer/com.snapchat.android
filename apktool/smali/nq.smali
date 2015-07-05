.class public final Lnq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TIME_UNINITIALIZED:J = -0x1L


# instance fields
.field public mReachability:Ljava/lang/String;

.field public mTimePressSend:J


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnq;->mTimePressSend:J

    .line 26
    return-void
.end method

.method public static a(Laim;Ljava/lang/String;)V
    .locals 9
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    instance-of v0, p0, Lajm;

    if-eqz v0, :cond_0

    const-string v1, "Transcoding Status: %s"

    new-array v2, v6, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lajm;

    iget-object v0, v0, Lajm;->mTranscodingState:Lwu;

    invoke-virtual {v0}, Lwu;->c()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 81
    const-string v2, "Upload Status: %s | Send Status: %s | Post Status: %s | %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    aput-object v4, v3, v5

    iget-object v4, v1, Lcom/snapchat/android/model/MediaMailingMetadata;->mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    aput-object v4, v3, v6

    iget-object v1, v1, Lcom/snapchat/android/model/MediaMailingMetadata;->mPostStatus:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "SNAP_BAD_MEDIA"

    const-string v2, "Client Id: %s | Reason: %s | %s"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SNAP_BAD_MEDIA"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "clientId"

    iget-object v3, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "mediaType"

    invoke-virtual {p0}, Laim;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v1, v2, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "status_code"

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 95
    return-void

    .line 76
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnq;->mTimePressSend:J

    .line 30
    invoke-static {}, Lbfp;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnq;->mReachability:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public final b()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 47
    iget-wide v0, p0, Lnq;->mTimePressSend:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 54
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lnq;->mTimePressSend:J

    sub-long/2addr v0, v2

    .line 55
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "SNAP_SEND_TIMED"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v3, "success"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "reachability"

    iget-object v4, p0, Lnq;->mReachability:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 56
    iput-wide v6, p0, Lnq;->mTimePressSend:J

    .line 57
    :cond_1
    return-void
.end method
