.class public final Lpn;
.super Lpo;
.source "SourceFile"


# static fields
.field private static final PATH:Ljava/lang/String; = "/loq/double_post"

.field private static final TAG:Ljava/lang/String; = "SendSnapAndPostStorySnapTask"

.field private static final TASK_NAME:Ljava/lang/String; = "SendSnapAndPostStorySnapTask"


# instance fields
.field private mPostStoryCallback:Lph$a;

.field private mRawThumbnailData:[B

.field private mSnapRequestSuccessful:Z

.field private mStoryRequestSuccessful:Z

.field private final mVideoMetadataFetcher:Lbgj;


# direct methods
.method public constructor <init>(Laji;Lpo$a;Lph$a;)V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lbgj;

    invoke-direct {v0}, Lbgj;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lpn;-><init>(Laji;Lpo$a;Lph$a;Lbgj;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Laji;Lpo$a;Lph$a;Lbgj;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lpo;-><init>(Laji;Lpo$a;)V

    .line 35
    iput-boolean v0, p0, Lpn;->mSnapRequestSuccessful:Z

    .line 36
    iput-boolean v0, p0, Lpn;->mStoryRequestSuccessful:Z

    .line 49
    iput-object p3, p0, Lpn;->mPostStoryCallback:Lph$a;

    .line 50
    iput-object p4, p0, Lpn;->mVideoMetadataFetcher:Lbgj;

    .line 52
    invoke-static {}, Lakr;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p1}, Lph;->a(Laji;)[B

    move-result-object v0

    iput-object v0, p0, Lpn;->mRawThumbnailData:[B

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Lalp;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 75
    const-string v0, "/loq/double_post"

    .line 76
    invoke-virtual {p0}, Lpn;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 77
    invoke-static {v0, v2, v1}, Lpt;->a(Ljava/lang/String;Landroid/os/Bundle;Lpt$a;)Landroid/os/Bundle;

    move-result-object v0

    .line 78
    invoke-super {p0, v0}, Lpo;->a(Landroid/os/Bundle;)V

    .line 80
    const-string v2, "result json = %s and result = %s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lpn;->mResultJson:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "SendSnapAndPostStorySnapTask"

    aput-object v4, v3, v6

    aput-object v0, v3, v5

    goto :goto_0

    .line 88
    :cond_0
    iget v0, p0, Lpn;->mStatusCode:I

    const/16 v2, 0xca

    if-ne v0, v2, :cond_3

    .line 89
    iget-object v0, p0, Lpn;->mResultJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 91
    :try_start_0
    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lpn;->mResultJson:Ljava/lang/String;

    const-class v2, Lalp;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalp;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    iget-object v1, v0, Lalp;->snap_response:Lalq;

    iget-boolean v1, v1, Lalq;->success:Z

    if-eqz v1, :cond_1

    .line 97
    iput-boolean v5, p0, Lpn;->mSnapRequestSuccessful:Z

    .line 100
    :cond_1
    iget-object v1, v0, Lalp;->story_response:Lalq;

    iget-boolean v1, v1, Lalq;->success:Z

    if-eqz v1, :cond_2

    .line 101
    iput-boolean v5, p0, Lpn;->mStoryRequestSuccessful:Z

    .line 108
    :cond_2
    :goto_1
    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in SendSnapAndPostStorySnapTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpn;->mResultJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpn;->mFailureMessage:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    iget-object v1, p0, Lpn;->mFailureMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_3
    iget v0, p0, Lpn;->mStatusCode:I

    const/16 v2, 0x191

    if-ne v0, v2, :cond_4

    .line 105
    iput-boolean v5, p0, Lpn;->m401Error:Z

    move-object v0, v1

    goto :goto_1

    .line 107
    :cond_4
    iget-object v0, p0, Lpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c01d0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpn;->mFailureMessage:Ljava/lang/String;

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "/loq/double_post"

    return-object v0
.end method

.method protected final a(Lalp;)V
    .locals 18

    .prologue
    .line 115
    invoke-super/range {p0 .. p1}, Lpo;->c(Lalp;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lpn;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-object/from16 v0, p0

    iget-object v3, v0, Lpn;->mSnapbryo:Laji;

    iget-object v4, v3, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    const-string v13, "/loq/double_post"

    move-object/from16 v0, p0

    iget v5, v0, Lpn;->mStatusCode:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lpn;->mReceivedBytes:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lpn;->mReachability:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lpn;->mElapsedTime:J

    move-wide/from16 v16, v0

    if-nez p1, :cond_2

    const/4 v9, 0x0

    :goto_0
    const-string v3, "SNAP_SENT_DELAY"

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lbjx;Z)V

    const-string v3, "STORY_POST_DELAY"

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lbjx;Z)V

    const-string v11, "SNAP_SENT_SNAP_DUMMY"

    move-object v10, v2

    move-object v12, v4

    move v14, v5

    move-object v15, v8

    invoke-virtual/range {v10 .. v17}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    .line 118
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lpn;->mStoryRequestSuccessful:Z

    if-eqz v2, :cond_3

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lpn;->mPostStoryCallback:Lph$a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lpn;->mSnapbryo:Laji;

    invoke-interface {v2, v3}, Lph$a;->a(Laji;)V

    .line 120
    move-object/from16 v0, p1

    iget-object v2, v0, Lalp;->story_response:Lalq;

    if-eqz v2, :cond_1

    .line 121
    move-object/from16 v0, p1

    iget-object v2, v0, Lalp;->story_response:Lalq;

    .line 122
    iget-object v3, v2, Lalq;->json:Lph$b;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lalq;->json:Lph$b;

    iget-object v3, v3, Lph$b;->story:Lbkh;

    if-eqz v3, :cond_0

    .line 123
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v3

    new-instance v4, Lakl;

    iget-object v5, v2, Lalq;->json:Lph$b;

    iget-object v5, v5, Lph$b;->story:Lbkh;

    invoke-direct {v4, v5}, Lakl;-><init>(Lbkh;)V

    invoke-virtual {v3, v4}, Lakk;->a(Lakl;)V

    .line 126
    :cond_0
    iget-object v3, v2, Lalq;->group_stories:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 127
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v3

    iget-object v2, v2, Lalq;->group_stories:Ljava/util/List;

    invoke-virtual {v3, v2}, Lakk;->c(Ljava/util/List;)V

    .line 135
    :cond_1
    :goto_1
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lbdn;

    invoke-direct {v3}, Lbdn;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v4, 0x0

    sget-object v5, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->MY_POSTED_STORYSNAPS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->MY_SNAP_IMAGE_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->MY_SNAP_VIDEO_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->FAILED_POST_SNAPBRYOS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->SENT_SNAPS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->FAILED_SEND_SNAPBRYOS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lakp;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 150
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lpn;->mSnapRequestSuccessful:Z

    if-eqz v2, :cond_4

    .line 151
    invoke-super/range {p0 .. p1}, Lpo;->b(Lalp;)V

    .line 155
    :goto_2
    return-void

    .line 116
    :cond_2
    move-object/from16 v0, p1

    iget-object v9, v0, Lalp;->server_info:Lbjx;

    goto/16 :goto_0

    .line 131
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lpn;->mPostStoryCallback:Lph$a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lpn;->mSnapbryo:Laji;

    invoke-interface {v2, v3}, Lph$a;->b(Laji;)V

    goto :goto_1

    .line 153
    :cond_4
    const-string v2, "Failed send snap task"

    move-object/from16 v0, p0

    iget v3, v0, Lpn;->mStatusCode:I

    move-object/from16 v0, p0

    invoke-super {v0, v2, v3}, Lpo;->a(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method protected final b()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 65
    invoke-super {p0}, Lpo;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lpn;->mSnapbryo:Laji;

    iget-object v2, p0, Lpn;->mVideoMetadataFetcher:Lbgj;

    invoke-static {v1, v2}, Lph;->a(Laji;Lbgj;)[B

    move-result-object v1

    .line 68
    iget-object v2, p0, Lpn;->mSnapbryo:Laji;

    iget-object v3, p0, Lpn;->mRawThumbnailData:[B

    invoke-static {}, Lain;->a()Lain;

    move-result-object v4

    invoke-static {v0, v2, v1, v3, v4}, Lph;->a(Landroid/os/Bundle;Laji;[B[BLain;)V

    .line 70
    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "SendSnapAndPostStorySnapTask"

    return-object v0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpn;->a([Ljava/lang/String;)Lalp;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lalp;

    invoke-virtual {p0, p1}, Lpn;->a(Lalp;)V

    return-void
.end method
