.class public Lpy;
.super Lpk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpy$a;
    }
.end annotation


# static fields
.field private static final TASK_NAME:Ljava/lang/String; = "UploadMediaTask"


# instance fields
.field public mData:[B
    .annotation build Lchc;
    .end annotation
.end field

.field protected mDataLength:I

.field public mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

.field private final mMessagingAnalytics:Lnz;

.field private final mSnapWomb:Laki;

.field public mSnapbryo:Laji;

.field protected mUser:Lakp;

.field private final mVideoTranscoder:Lxu;


# direct methods
.method public constructor <init>(Laji;)V
    .locals 6

    .prologue
    .line 44
    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-static {}, Laki;->a()Laki;

    move-result-object v3

    invoke-static {}, Lxu;->a()Lxu;

    move-result-object v4

    invoke-static {}, Lnz;->a()Lnz;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lpy;-><init>(Laji;Lcom/snapchat/android/model/MediaMailingMetadata;Laki;Lxu;Lnz;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Laji;Lcom/snapchat/android/model/MediaMailingMetadata;Laki;Lxu;Lnz;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lpk;-><init>()V

    .line 50
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    iput-object v0, p0, Lpy;->mUser:Lakp;

    .line 51
    iput-object p1, p0, Lpy;->mSnapbryo:Laji;

    .line 52
    iput-object p2, p0, Lpy;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 53
    iput-object p3, p0, Lpy;->mSnapWomb:Laki;

    .line 54
    iput-object p4, p0, Lpy;->mVideoTranscoder:Lxu;

    .line 55
    iput-object p5, p0, Lpy;->mMessagingAnalytics:Lnz;

    .line 56
    return-void
.end method

.method private a([B)V
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lpy;->mData:[B

    .line 84
    iget-object v0, p0, Lpy;->mData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lpy;->mDataLength:I

    .line 85
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lpy;->mData:[B

    array-length v0, v0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lpy;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->b()Z

    move-result v1

    .line 182
    iget-object v0, p0, Lpy;->mSnapbryo:Laji;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v2, :cond_2

    .line 183
    iget-object v0, p0, Lpy;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lakg;

    .line 184
    iget-boolean v0, v0, Lakg;->mShouldExecutePostStoryTaskAfterUpload:Z

    or-int/2addr v0, v1

    .line 187
    :goto_0
    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    iget-object v0, p0, Lpy;->mSnapbryo:Laji;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v1, :cond_1

    .line 193
    new-instance v0, Lzp;

    invoke-direct {v0}, Lzp;-><init>()V

    iget-object v1, p0, Lpy;->mSnapbryo:Laji;

    invoke-virtual {v0, v1}, Lzp;->e(Laji;)V

    .line 201
    :cond_0
    :goto_1
    return-void

    .line 195
    :cond_1
    new-instance v0, Lzo;

    invoke-direct {v0}, Lzo;-><init>()V

    iget-object v1, p0, Lpy;->mSnapbryo:Laji;

    invoke-virtual {v0, v1}, Lzo;->a(Laji;)V
    :try_end_0
    .catch Lacw$b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Lacw$b;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->e()V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Lalp;
    .locals 3
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lpy;->mSnapbryo:Laji;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v1, :cond_1

    .line 68
    invoke-static {}, Laxp$a;->a()Laxp;

    move-result-object v0

    iget-object v1, p0, Lpy;->mSnapbryo:Laji;

    invoke-virtual {v0, v1}, Laxp;->a(Laji;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lpy;->a([B)V

    .line 73
    :goto_0
    iget-object v0, p0, Lpy;->mData:[B

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lpy;->mSnapWomb:Laki;

    iget-object v1, p0, Lpy;->mSnapbryo:Laji;

    invoke-virtual {v0, v1}, Laki;->a(Laji;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lpy;->mSnapWomb:Laki;

    iget-object v1, p0, Lpy;->mSnapbryo:Laji;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->UPLOADING:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v0, v1, v2}, Laki;->a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;)V

    .line 78
    invoke-super {p0, p1}, Lpk;->a([Ljava/lang/String;)Lalp;

    move-result-object v0

    return-object v0

    .line 70
    :cond_1
    invoke-static {}, Laxv;->a()Laxv;

    iget-object v0, p0, Lpy;->mSnapbryo:Laji;

    invoke-static {v0}, Laxv;->a(Laji;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lpy;->a([B)V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "/ph/upload"

    return-object v0
.end method

.method public a(Lalp;)V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0, p1}, Lpk;->a(Lalp;)V

    .line 111
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 140
    iget-object v1, p0, Lpy;->mSnapbryo:Laji;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lpy;->mStartMillis:J

    sub-long/2addr v2, v6

    iget v4, p0, Lpy;->mDataLength:I

    invoke-static {}, Lbgp;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lnz;->a(Laji;JIZLjava/lang/String;)V

    .line 153
    iget-object v0, p0, Lpy;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    iget-object v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    if-ne v0, v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lpy;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    iget-boolean v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    if-nez v0, :cond_3

    .line 158
    iget-object v0, p0, Lpy;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    .line 159
    new-instance v6, Lpy;

    iget-object v7, p0, Lpy;->mSnapbryo:Laji;

    iget-object v8, p0, Lpy;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    iget-object v9, p0, Lpy;->mSnapWomb:Laki;

    iget-object v10, p0, Lpy;->mVideoTranscoder:Lxu;

    iget-object v11, p0, Lpy;->mMessagingAnalytics:Lnz;

    invoke-direct/range {v6 .. v11}, Lpy;-><init>(Laji;Lcom/snapchat/android/model/MediaMailingMetadata;Laki;Lxu;Lnz;)V

    sget-object v0, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lpy;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    :goto_1
    invoke-virtual {p0}, Lpy;->g()I

    move-result v0

    const/16 v1, 0x19d

    if-ne v0, v1, :cond_0

    .line 167
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v1, "413 REQUEST_ENTITY_TOO_LARGE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lpy;->mSnapbryo:Laji;

    iget-object v1, v1, Laji;->mBaseFilter:Loz;

    if-eqz v1, :cond_2

    .line 169
    const-string v1, "filter"

    iget-object v2, p0, Lpy;->mSnapbryo:Laji;

    iget-object v2, v2, Laji;->mBaseFilter:Loz;

    iget-object v2, v2, Loz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 171
    :cond_2
    const-string v1, "size"

    iget v2, p0, Lpy;->mDataLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 172
    const-string v1, "type"

    iget-object v2, p0, Lpy;->mSnapbryo:Laji;

    invoke-virtual {v2}, Laji;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 173
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->e()V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lpy;->mSnapWomb:Laki;

    iget-object v1, p0, Lpy;->mSnapbryo:Laji;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v0, v1, v2}, Laki;->a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;)V

    .line 163
    invoke-direct {p0}, Lpy;->d()V

    goto :goto_1
.end method

.method public b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    const-string v1, "username"

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "media_id"

    iget-object v2, p0, Lpy;->mSnapbryo:Laji;

    iget-object v2, v2, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lpy;->mSnapbryo:Laji;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v1, v2, :cond_0

    .line 98
    const-string v1, "type"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_0
    const-string v1, "data"

    iget-object v2, p0, Lpy;->mData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 105
    return-object v0

    .line 100
    :cond_0
    const-string v1, "type"

    iget-object v2, p0, Lpy;->mSnapbryo:Laji;

    invoke-virtual {v2}, Laji;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lalp;)V
    .locals 7

    .prologue
    .line 130
    iget-object v0, p0, Lpy;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    iget-object v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    if-ne v0, v1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lpy;->mSnapWomb:Laki;

    iget-object v1, p0, Lpy;->mSnapbryo:Laji;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->UPLOADED:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v0, v1, v2}, Laki;->a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;)V

    .line 134
    iget-object v1, p0, Lpy;->mSnapbryo:Laji;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lpy;->mStartMillis:J

    sub-long/2addr v2, v4

    iget v4, p0, Lpy;->mDataLength:I

    const/4 v5, 0x1

    invoke-static {}, Lbgp;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lnz;->a(Laji;JIZLjava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lpy;->d()V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const-string v0, "UploadMediaTask"

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpy;->a([Ljava/lang/String;)Lalp;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lalp;

    invoke-super {p0, p1}, Lpk;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lalp;

    invoke-virtual {p0, p1}, Lpy;->a(Lalp;)V

    return-void
.end method
