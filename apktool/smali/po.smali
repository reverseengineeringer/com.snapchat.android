.class public Lpo;
.super Lpk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpo$a;
    }
.end annotation


# static fields
.field public static final PATH:Ljava/lang/String; = "/loq/send"

.field private static final TASK_NAME:Ljava/lang/String; = "SendSnapTask"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

.field protected mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private mNetworkStatusManager:Lama;

.field protected mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field protected mSendSnapCallback:Lpo$a;

.field private final mSnapWomb:Laki;

.field protected mSnapbryo:Laji;

.field private final mSnapchatServiceManager:Laph;

.field protected mUser:Lakp;


# direct methods
.method public constructor <init>(Laji;Lpo$a;)V
    .locals 11

    .prologue
    .line 59
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v2

    iget-object v4, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v6

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v7

    invoke-static {}, Lama;->a()Lama;

    move-result-object v8

    invoke-static {}, Laki;->a()Laki;

    move-result-object v9

    invoke-static {}, Laph;->a()Laph;

    move-result-object v10

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v10}, Lpo;-><init>(Landroid/content/Context;Lakp;Laji;Lcom/snapchat/android/model/MediaMailingMetadata;Lpo$a;Lcom/snapchat/android/notification/AndroidNotificationManager;Lcom/snapchat/android/analytics/NetworkAnalytics;Lama;Laki;Laph;)V

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lakp;Laji;Lcom/snapchat/android/model/MediaMailingMetadata;Lpo$a;Lcom/snapchat/android/notification/AndroidNotificationManager;Lcom/snapchat/android/analytics/NetworkAnalytics;Lama;Laki;Laph;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lpk;-><init>()V

    .line 82
    iput-object p1, p0, Lpo;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lpo;->mUser:Lakp;

    .line 84
    iput-object p3, p0, Lpo;->mSnapbryo:Laji;

    .line 85
    iput-object p4, p0, Lpo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 86
    iput-object p5, p0, Lpo;->mSendSnapCallback:Lpo$a;

    .line 87
    iput-object p6, p0, Lpo;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 88
    iput-object p7, p0, Lpo;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 89
    iput-object p8, p0, Lpo;->mNetworkStatusManager:Lama;

    .line 90
    iput-object p9, p0, Lpo;->mSnapWomb:Laki;

    .line 91
    iput-object p10, p0, Lpo;->mSnapchatServiceManager:Laph;

    .line 92
    return-void
.end method

.method public static a(Landroid/os/Bundle;Laji;)V
    .locals 2

    .prologue
    .line 129
    const-string v1, "zipped"

    iget-boolean v0, p1, Lcom/snapchat/android/model/Mediabryo;->mIsZipUpload:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Laji;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "filter_id"

    invoke-virtual {p1}, Laji;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    const-string v1, "camera_front_facing"

    iget-boolean v0, p1, Lcom/snapchat/android/model/Mediabryo;->mIsFrontFacingSnap:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void

    .line 129
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 133
    :cond_2
    const-string v0, "0"

    goto :goto_1
.end method

.method private e()Z
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lpo;->mUser:Lakp;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lpo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 219
    iget-object v2, p0, Lpo;->mUser:Lakp;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lakp;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "/loq/send"

    return-object v0
.end method

.method protected a(Lalp;)V
    .locals 18

    .prologue
    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lpo;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-object/from16 v0, p0

    iget-object v3, v0, Lpo;->mSnapbryo:Laji;

    iget-object v4, v3, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    const-string v13, "/loq/send"

    move-object/from16 v0, p0

    iget v5, v0, Lpo;->mStatusCode:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lpo;->mReceivedBytes:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lpo;->mReachability:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lpo;->mElapsedTime:J

    move-wide/from16 v16, v0

    if-nez p1, :cond_0

    const/4 v9, 0x0

    :goto_0
    const-string v3, "SNAP_SENT_DELAY"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lbjx;Z)V

    const-string v11, "SNAP_SENT_SNAP_DUMMY"

    move-object v10, v2

    move-object v12, v4

    move v14, v5

    move-object v15, v8

    invoke-virtual/range {v10 .. v17}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    .line 140
    invoke-super/range {p0 .. p1}, Lpk;->a(Lalp;)V

    .line 142
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lbef;

    invoke-direct {v3}, Lbef;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 143
    return-void

    .line 138
    :cond_0
    move-object/from16 v0, p1

    iget-object v9, v0, Lalp;->server_info:Lbjx;

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 229
    invoke-static {}, Lakr;->aE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lpo;->mSnapbryo:Laji;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 232
    iget-boolean v1, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    if-nez v1, :cond_2

    .line 234
    iget-object v1, p0, Lpo;->mNetworkStatusManager:Lama;

    invoke-virtual {v1}, Lama;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    iget-object v0, p0, Lpo;->mSnapWomb:Laki;

    iget-object v1, p0, Lpo;->mSnapbryo:Laji;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    invoke-virtual {v0, v1, v2}, Laki;->a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V

    goto :goto_0

    .line 240
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    .line 241
    invoke-virtual {p0}, Lpo;->d()V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lpo;->mSendSnapCallback:Lpo$a;

    iget-object v1, p0, Lpo;->mSnapbryo:Laji;

    invoke-interface {v0, v1}, Lpo$a;->d(Laji;)V

    .line 244
    iget-object v0, p0, Lpo;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iget-object v1, p0, Lpo;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    const-string v1, "username"

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "media_id"

    iget-object v2, p0, Lpo;->mSnapbryo:Laji;

    iget-object v2, v2, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "recipients"

    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lpo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v3}, Lcom/snapchat/android/model/MediaMailingMetadata;->f()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lpo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->g()Ljava/util/List;

    move-result-object v1

    .line 120
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    const-string v2, "recipient_ids"

    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    const-string v1, "time"

    iget-object v2, p0, Lpo;->mSnapbryo:Laji;

    iget-wide v2, v2, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lpo;->mSnapbryo:Laji;

    invoke-static {v0, v1}, Lpo;->a(Landroid/os/Bundle;Laji;)V

    .line 125
    return-object v0
.end method

.method protected final b(Lalp;)V
    .locals 21

    .prologue
    .line 147
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lalp;->snap_response:Lalq;

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lalp;->snap_response:Lalq;

    iget-boolean v2, v2, Lalq;->success:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 148
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lpo;->mSendSnapCallback:Lpo$a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lpo;->mSnapbryo:Laji;

    invoke-interface {v2, v3}, Lpo$a;->d(Laji;)V

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lpo;->mSendSnapCallback:Lpo$a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lpo;->mSnapbryo:Laji;

    invoke-interface {v2, v3}, Lpo$a;->c(Laji;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lpo;->mUser:Lakp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lpo;->mSnapbryo:Laji;

    if-eqz v2, :cond_3

    if-nez v3, :cond_6

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v18, v2

    :goto_1
    if-eqz v18, :cond_b

    move-object/from16 v0, p1

    iget-object v2, v0, Lalp;->snap_response:Lalq;

    iget-object v2, v2, Lalq;->snaps:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v3, v0, Lpo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v3}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_c

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lpo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v4}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Layg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v19

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lakx;->b(Ljava/lang/String;Z)V

    if-eqz v2, :cond_b

    const/4 v14, 0x0

    move-object/from16 v0, v18

    iget-object v3, v0, Lake;->mSnapUriString:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object/from16 v0, v18

    iget-object v3, v0, Lake;->mSnapUriString:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_5
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lalq$a;

    new-instance v3, Lake;

    iget-object v4, v2, Lalq$a;->id:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Lake;->mClientId:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lake;->U()J

    move-result-wide v6

    iget-wide v8, v2, Lalq$a;->timestamp:J

    invoke-virtual/range {v18 .. v18}, Lake;->ai()I

    move-result v10

    sget-object v11, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-object/from16 v0, v18

    iget-object v13, v0, Lake;->mDisplayTime:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v15, v0, Lake;->mTimeOfLastSendAttempt:J

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lake;->mZipped:Z

    move/from16 v17, v0

    invoke-direct/range {v3 .. v17}, Lake;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JZ)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lakx;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lake;)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v4}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_7

    if-nez v5, :cond_8

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v18, v2

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v4}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Layg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lzi;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    move-object/from16 v18, v2

    goto/16 :goto_1

    :cond_9
    iget-object v3, v3, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Ljava/lang/String;)Lake;

    move-result-object v2

    move-object/from16 v18, v2

    goto/16 :goto_1

    :cond_a
    invoke-virtual/range {v19 .. v19}, Lakx;->g()V

    .line 156
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lpo;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lpo;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    .line 157
    const/4 v2, 0x0

    invoke-static {v2}, Lakr;->o(Z)V

    .line 166
    invoke-direct/range {p0 .. p0}, Lpo;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lpo;->mSnapchatServiceManager:Laph;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Laph;->a(ZZ)I

    goto/16 :goto_0

    .line 154
    :cond_c
    if-eqz v2, :cond_b

    move-object/from16 v0, v18

    iget-object v3, v0, Lake;->mRecipient:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Server response does not contain recipient\'s sent snap ID"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    move-object/from16 v0, v18

    iget-object v3, v0, Lake;->mRecipient:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lalq$a;

    iget-object v3, v2, Lalq$a;->id:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lake;->a(Ljava/lang/String;)V

    iget-wide v4, v2, Lalq$a;->timestamp:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lake;->a(J)V

    iget-wide v2, v2, Lalq$a;->timestamp:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lake;->b(J)V

    goto :goto_3
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const-string v0, "SendSnapTask"

    return-object v0
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 249
    new-instance v0, Lpo;

    iget-object v1, p0, Lpo;->mSnapbryo:Laji;

    iget-object v2, p0, Lpo;->mSendSnapCallback:Lpo$a;

    invoke-direct {v0, v1, v2}, Lpo;-><init>(Laji;Lpo$a;)V

    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpo;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 250
    return-void
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 259
    new-instance v0, Lpp;

    iget-object v1, p0, Lpo;->mSnapbryo:Laji;

    iget-object v2, p0, Lpo;->mSendSnapCallback:Lpo$a;

    invoke-direct {v0, v1, v2}, Lpp;-><init>(Laji;Lpo$a;)V

    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpp;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 260
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lalp;

    invoke-virtual {p0, p1}, Lpo;->a(Lalp;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Lpk;->onPreExecute()V

    .line 99
    iget-object v0, p0, Lpo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 100
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzi;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v2, :cond_0

    .line 102
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    goto :goto_0

    .line 105
    :cond_1
    return-void
.end method
