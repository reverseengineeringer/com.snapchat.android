.class public Laww;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Laim;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SaveSentSnapToCacheTask"


# instance fields
.field private final mSendSnapCacheWrapper:Lawx;

.field private final mSnapCaptureAnalytics:Lno;

.field private final mSnapWomb:Lajn;

.field private final mUUID:Ljava/lang/String;

.field private final mVideoMetadataFetcher:Lbfj;

.field private final mVideoTranscoder:Lwz;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 30
    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v1

    invoke-static {}, Lwz;->a()Lwz;

    move-result-object v2

    invoke-static {}, Lawx;->a()Lawx;

    move-result-object v3

    new-instance v4, Lbfj;

    invoke-direct {v4}, Lbfj;-><init>()V

    invoke-static {}, Lno;->a()Lno;

    move-result-object v5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Laww;-><init>(Lajn;Lwz;Lawx;Lbfj;Lno;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Lajn;Lwz;Lawx;Lbfj;Lno;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Laww;->mSnapWomb:Lajn;

    .line 42
    iput-object p2, p0, Laww;->mVideoTranscoder:Lwz;

    .line 43
    iput-object p3, p0, Laww;->mSendSnapCacheWrapper:Lawx;

    .line 44
    iput-object p4, p0, Laww;->mVideoMetadataFetcher:Lbfj;

    .line 45
    iput-object p5, p0, Laww;->mSnapCaptureAnalytics:Lno;

    .line 46
    iput-object p6, p0, Laww;->mUUID:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private a(Lajm;)Z
    .locals 7
    .param p1    # Lajm;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 113
    :try_start_0
    iget-object v1, p1, Lajm;->mTranscodingState:Lwu;

    invoke-virtual {p1}, Lajm;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Lwu;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Laww;->mVideoTranscoder:Lwz;

    invoke-virtual {v1, p1}, Lwz;->b(Lajm;)Z

    move-result v1

    .line 115
    const-string v2, "SaveSentSnapToCacheTask"

    const-string v3, "Transcoding finished successfully? [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Laww;->mSnapWomb:Lajn;

    invoke-virtual {v1, p1}, Lajn;->a(Laim;)V

    .line 128
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-object v1, p0, Laww;->mSendSnapCacheWrapper:Lawx;

    iget-object v2, p0, Laww;->mVideoMetadataFetcher:Lbfj;

    invoke-virtual {v1, p1, v2}, Lawx;->a(Lajm;Lbfj;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    const-string v2, "SaveSentSnapToCacheTask"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Laww;->mSnapCaptureAnalytics:Lno;

    iget-object v1, p0, Laww;->mUUID:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v0, v0, Lno;->mMetricMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v0, :cond_0

    const-string v1, "success"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 93
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 20
    check-cast p1, [Laim;

    aget-object v1, p1, v2

    iget-object v0, p0, Laww;->mSnapCaptureAnalytics:Lno;

    iget-object v3, p0, Laww;->mUUID:Ljava/lang/String;

    invoke-virtual {v1}, Laim;->h()I

    move-result v4

    const-string v5, "SNAP_MEDIA_CACHE"

    invoke-static {v5}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    const-string v6, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    iget-object v0, v0, Lno;->mMetricMap:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    iget-object v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    iget-object v3, v1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    iget-object v3, v3, Lcom/snapchat/android/model/MediaMailingMetadata;->mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    iget-object v4, v1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    iget-object v4, v4, Lcom/snapchat/android/model/MediaMailingMetadata;->mPostStatus:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    const-string v5, "SaveSentSnapToCacheTask"

    const-string v6, "[%s] Upload Status: %s | Send Status: %s | Post Status: %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v8, v7, v2

    aput-object v0, v7, v9

    aput-object v3, v7, v10

    aput-object v4, v7, v11

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->UPLOADED:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->UPLOADING:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    if-eq v0, v5, :cond_0

    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->SENDING_ON_UPLOAD:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    if-eq v3, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->POSTING_ON_UPLOAD:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    if-ne v4, v0, :cond_1

    :cond_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "SaveSentSnapToCacheTask"

    const-string v3, "Saving to the cache! [Type: %s | Client ID: %s]"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Laim;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Laim;->h()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Laww;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    const-string v3, "SaveSentSnapToCacheTask"

    const-string v4, "Cache saved! [Succeed: %s | Type: %s | Client ID: %s]"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1}, Laim;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v9

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v1, v5, v10

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lawx;->c(Laim;)Z

    move-result v0

    goto :goto_1

    :cond_3
    instance-of v0, v1, Lajm;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lajm;

    invoke-direct {p0, v0}, Laww;->a(Lajm;)Z

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Laww;->mSnapCaptureAnalytics:Lno;

    iget-object v1, p0, Laww;->mUUID:Ljava/lang/String;

    iget-object v0, v0, Lno;->mMetricMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Laww;->a(Ljava/lang/Boolean;)V

    return-void
.end method
