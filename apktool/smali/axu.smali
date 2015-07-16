.class public Laxu;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Laji;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SaveSentSnapToCacheTask"


# instance fields
.field private final mSendSnapCacheWrapper:Laxv;

.field private final mSnapCaptureAnalytics:Lof;

.field private final mSnapWomb:Laki;

.field private final mUUID:Ljava/lang/String;

.field private final mVideoMetadataFetcher:Lbgj;

.field private final mVideoTranscoder:Lxu;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 30
    invoke-static {}, Laki;->a()Laki;

    move-result-object v1

    invoke-static {}, Lxu;->a()Lxu;

    move-result-object v2

    invoke-static {}, Laxv;->a()Laxv;

    move-result-object v3

    new-instance v4, Lbgj;

    invoke-direct {v4}, Lbgj;-><init>()V

    invoke-static {}, Lof;->a()Lof;

    move-result-object v5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Laxu;-><init>(Laki;Lxu;Laxv;Lbgj;Lof;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Laki;Lxu;Laxv;Lbgj;Lof;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Laxu;->mSnapWomb:Laki;

    .line 42
    iput-object p2, p0, Laxu;->mVideoTranscoder:Lxu;

    .line 43
    iput-object p3, p0, Laxu;->mSendSnapCacheWrapper:Laxv;

    .line 44
    iput-object p4, p0, Laxu;->mVideoMetadataFetcher:Lbgj;

    .line 45
    iput-object p5, p0, Laxu;->mSnapCaptureAnalytics:Lof;

    .line 46
    iput-object p6, p0, Laxu;->mUUID:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private a(Laku;)Z
    .locals 5
    .param p1    # Laku;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 113
    :try_start_0
    iget-object v1, p1, Laku;->mTranscodingState:Lxp;

    invoke-virtual {p1}, Laku;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Lxp;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Laxu;->mVideoTranscoder:Lxu;

    invoke-virtual {v1, p1}, Lxu;->b(Laku;)Z

    move-result v1

    .line 115
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 116
    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Laxu;->mSnapWomb:Laki;

    invoke-virtual {v1, p1}, Laki;->a(Laji;)V

    .line 128
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-object v1, p0, Laxu;->mSendSnapCacheWrapper:Laxv;

    iget-object v2, p0, Laxu;->mVideoMetadataFetcher:Lbgj;

    invoke-virtual {v1, p1, v2}, Laxv;->a(Laku;Lbgj;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Laxu;->mSnapCaptureAnalytics:Lof;

    iget-object v1, p0, Laxu;->mUUID:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v0, v0, Lof;->mMetricMap:Ljava/util/Map;

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
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 20
    check-cast p1, [Laji;

    aget-object v1, p1, v2

    iget-object v0, p0, Laxu;->mSnapCaptureAnalytics:Lof;

    iget-object v3, p0, Laxu;->mUUID:Ljava/lang/String;

    invoke-virtual {v1}, Laji;->h()I

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

    iget-object v0, v0, Lof;->mMetricMap:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    iget-object v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    iget-object v3, v1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    iget-object v3, v3, Lcom/snapchat/android/model/MediaMailingMetadata;->mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    iget-object v4, v1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    iget-object v4, v4, Lcom/snapchat/android/model/MediaMailingMetadata;->mPostStatus:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v6, v5, v2

    aput-object v0, v5, v7

    aput-object v3, v5, v8

    aput-object v4, v5, v9

    sget-object v5, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->UPLOADED:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->UPLOADING:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    if-eq v0, v5, :cond_0

    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->SENDING_ON_UPLOAD:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    if-eq v3, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->POSTING_ON_UPLOAD:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    if-ne v4, v0, :cond_1

    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Laji;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v3, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v3, v0, v7

    invoke-virtual {v1}, Laji;->h()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Laxu;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1}, Laji;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v7

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v1, v3, v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Laxv;->c(Laji;)Z

    move-result v0

    goto :goto_1

    :cond_3
    instance-of v0, v1, Laku;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Laku;

    invoke-direct {p0, v0}, Laxu;->a(Laku;)Z

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

    iget-object v0, p0, Laxu;->mSnapCaptureAnalytics:Lof;

    iget-object v1, p0, Laxu;->mUUID:Ljava/lang/String;

    iget-object v0, v0, Lof;->mMetricMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Laxu;->a(Ljava/lang/Boolean;)V

    return-void
.end method
