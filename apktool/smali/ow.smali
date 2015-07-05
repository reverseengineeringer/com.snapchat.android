.class public final Low;
.super Lox;
.source "SourceFile"


# static fields
.field private static final PATH:Ljava/lang/String; = "/loq/double_post"

.field private static final TAG:Ljava/lang/String; = "SendSnapAndPostStorySnapTask"

.field private static final TASK_NAME:Ljava/lang/String; = "SendSnapAndPostStorySnapTask"


# instance fields
.field private mPostStoryCallback:Loq$a;

.field private mRawThumbnailData:[B

.field private mSnapRequestSuccessful:Z

.field private mStoryRequestSuccessful:Z

.field private final mVideoMetadataFetcher:Lbfj;


# direct methods
.method public constructor <init>(Laim;Lox$a;Loq$a;)V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Low;-><init>(Laim;Lox$a;Loq$a;Lbfj;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Laim;Lox$a;Loq$a;Lbfj;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lox;-><init>(Laim;Lox$a;)V

    .line 35
    iput-boolean v0, p0, Low;->mSnapRequestSuccessful:Z

    .line 36
    iput-boolean v0, p0, Low;->mStoryRequestSuccessful:Z

    .line 49
    iput-object p3, p0, Low;->mPostStoryCallback:Loq$a;

    .line 50
    iput-object p4, p0, Low;->mVideoMetadataFetcher:Lbfj;

    .line 52
    invoke-static {}, Lajx;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p1}, Loq;->a(Laim;)[B

    move-result-object v0

    iput-object v0, p0, Low;->mRawThumbnailData:[B

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Laku;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 75
    const-string v0, "/loq/double_post"

    .line 76
    invoke-virtual {p0}, Low;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 77
    invoke-static {v0, v2, v1}, Lpc;->a(Ljava/lang/String;Landroid/os/Bundle;Lpc$a;)Landroid/os/Bundle;

    move-result-object v0

    .line 78
    invoke-super {p0, v0}, Lox;->a(Landroid/os/Bundle;)V

    .line 80
    const-string v2, "result json = %s and result = %s"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Low;->mResultJson:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

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
    const-string v3, "SendSnapAndPostStorySnapTask"

    const-string v4, "%s: %s"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "SendSnapAndPostStorySnapTask"

    aput-object v6, v5, v8

    aput-object v0, v5, v7

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_0
    iget v0, p0, Low;->mStatusCode:I

    const/16 v2, 0xca

    if-ne v0, v2, :cond_3

    .line 89
    iget-object v0, p0, Low;->mResultJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 91
    :try_start_0
    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Low;->mResultJson:Ljava/lang/String;

    const-class v2, Laku;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laku;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    iget-object v1, v0, Laku;->snap_response:Lakv;

    iget-boolean v1, v1, Lakv;->success:Z

    if-eqz v1, :cond_1

    .line 97
    iput-boolean v7, p0, Low;->mSnapRequestSuccessful:Z

    .line 100
    :cond_1
    iget-object v1, v0, Laku;->story_response:Lakv;

    iget-boolean v1, v1, Lakv;->success:Z

    if-eqz v1, :cond_2

    .line 101
    iput-boolean v7, p0, Low;->mStoryRequestSuccessful:Z

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

    iget-object v1, p0, Low;->mResultJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Low;->mFailureMessage:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    iget-object v1, p0, Low;->mFailureMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_3
    iget v0, p0, Low;->mStatusCode:I

    const/16 v2, 0x191

    if-ne v0, v2, :cond_4

    .line 105
    iput-boolean v7, p0, Low;->m401Error:Z

    move-object v0, v1

    goto :goto_1

    .line 107
    :cond_4
    iget-object v0, p0, Low;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c01d0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Low;->mFailureMessage:Ljava/lang/String;

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

.method protected final a(Laku;)V
    .locals 13

    .prologue
    .line 115
    invoke-super {p0, p1}, Lox;->c(Laku;)V

    .line 116
    iget-object v0, p0, Low;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v1, p0, Low;->mSnapbryo:Laim;

    iget-object v2, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    const-string v10, "/loq/double_post"

    iget v3, p0, Low;->mStatusCode:I

    iget-wide v4, p0, Low;->mReceivedBytes:J

    iget-object v6, p0, Low;->mReachability:Ljava/lang/String;

    if-nez p1, :cond_2

    const/4 v7, 0x0

    :goto_0
    const-string v1, "SNAP_SENT_DELAY"

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lbiw;Z)V

    const-string v1, "STORY_POST_DELAY"

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lbiw;Z)V

    const-string v8, "SNAP_SENT_SNAP_DUMMY"

    move-object v7, v0

    move-object v9, v2

    move v11, v3

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    iget-boolean v0, p0, Low;->mStoryRequestSuccessful:Z

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Low;->mPostStoryCallback:Loq$a;

    iget-object v1, p0, Low;->mSnapbryo:Laim;

    invoke-interface {v0, v1}, Loq$a;->a(Laim;)V

    .line 120
    iget-object v0, p1, Laku;->story_response:Lakv;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p1, Laku;->story_response:Lakv;

    .line 122
    iget-object v1, v0, Lakv;->json:Loq$b;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lakv;->json:Loq$b;

    iget-object v1, v1, Loq$b;->story:Lbjg;

    if-eqz v1, :cond_0

    .line 123
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v1

    new-instance v2, Lajr;

    iget-object v3, v0, Lakv;->json:Loq$b;

    iget-object v3, v3, Loq$b;->story:Lbjg;

    invoke-direct {v2, v3}, Lajr;-><init>(Lbjg;)V

    invoke-virtual {v1, v2}, Lajq;->a(Lajr;)V

    .line 126
    :cond_0
    iget-object v1, v0, Lakv;->group_stories:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 127
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v1

    iget-object v0, v0, Lakv;->group_stories:Ljava/util/List;

    invoke-virtual {v1, v0}, Lajq;->c(Ljava/util/List;)V

    .line 135
    :cond_1
    :goto_1
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcn;

    invoke-direct {v1}, Lbcn;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v2, 0x0

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->MY_POSTED_STORYSNAPS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->MY_SNAP_IMAGE_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->MY_SNAP_VIDEO_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->FAILED_POST_SNAPBRYOS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->SENT_SNAPS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->FAILED_SEND_SNAPBRYOS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lajv;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 150
    iget-boolean v0, p0, Low;->mSnapRequestSuccessful:Z

    if-eqz v0, :cond_4

    .line 151
    invoke-super {p0, p1}, Lox;->b(Laku;)V

    .line 155
    :goto_2
    return-void

    .line 116
    :cond_2
    iget-object v7, p1, Laku;->server_info:Lbiw;

    goto/16 :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Low;->mPostStoryCallback:Loq$a;

    iget-object v1, p0, Low;->mSnapbryo:Laim;

    invoke-interface {v0, v1}, Loq$a;->b(Laim;)V

    goto :goto_1

    .line 153
    :cond_4
    const-string v0, "Failed send snap task"

    iget v1, p0, Low;->mStatusCode:I

    invoke-super {p0, v0, v1}, Lox;->a(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method protected final b()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 65
    invoke-super {p0}, Lox;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    iget-object v1, p0, Low;->mSnapbryo:Laim;

    iget-object v2, p0, Low;->mVideoMetadataFetcher:Lbfj;

    invoke-static {v1, v2}, Loq;->a(Laim;Lbfj;)[B

    move-result-object v1

    .line 68
    iget-object v2, p0, Low;->mSnapbryo:Laim;

    iget-object v3, p0, Low;->mRawThumbnailData:[B

    invoke-static {}, Lahr;->a()Lahr;

    move-result-object v4

    invoke-static {v0, v2, v1, v3, v4}, Loq;->a(Landroid/os/Bundle;Laim;[B[BLahr;)V

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

    invoke-virtual {p0, p1}, Low;->a([Ljava/lang/String;)Laku;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Laku;

    invoke-virtual {p0, p1}, Low;->a(Laku;)V

    return-void
.end method
