.class public final Lyt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loq$a;
.implements Lox$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt$3;
    }
.end annotation


# instance fields
.field public final a:Lajn;

.field public final b:Lawx;

.field public final c:Lni;

.field private final d:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final e:Laxc;

.field private final f:Lnq;

.field private final g:Lnp;

.field private final h:Lale;

.field private final i:Lnn;


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    .line 74
    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v2

    invoke-static {}, Lawx;->a()Lawx;

    move-result-object v3

    invoke-static {}, Laxc;->a()Laxc;

    move-result-object v4

    new-instance v5, Lnq;

    invoke-direct {v5}, Lnq;-><init>()V

    invoke-static {}, Lnp;->a()Lnp;

    move-result-object v6

    invoke-static {}, Lale;->a()Lale;

    move-result-object v7

    invoke-static {}, Lnn;->a()Lnn;

    move-result-object v8

    invoke-static {}, Lni;->a()Lni;

    move-result-object v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lyt;-><init>(Lajn;Lcom/snapchat/android/analytics/NetworkAnalytics;Lawx;Laxc;Lnq;Lnp;Lale;Lnn;Lni;)V

    .line 83
    return-void
.end method

.method private constructor <init>(Lajn;Lcom/snapchat/android/analytics/NetworkAnalytics;Lawx;Laxc;Lnq;Lnp;Lale;Lnn;Lni;)V
    .locals 0
    .param p1    # Lajn;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/analytics/NetworkAnalytics;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lawx;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Laxc;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lnq;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Lnp;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p7    # Lale;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p8    # Lnn;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p9    # Lni;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lyt;->a:Lajn;

    .line 95
    iput-object p2, p0, Lyt;->d:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 96
    iput-object p3, p0, Lyt;->b:Lawx;

    .line 97
    iput-object p4, p0, Lyt;->e:Laxc;

    .line 98
    iput-object p5, p0, Lyt;->f:Lnq;

    .line 99
    iput-object p6, p0, Lyt;->g:Lnp;

    .line 100
    iput-object p7, p0, Lyt;->h:Lale;

    .line 101
    iput-object p8, p0, Lyt;->i:Lnn;

    .line 102
    iput-object p9, p0, Lyt;->c:Lni;

    .line 103
    return-void
.end method

.method private static a(Lajm;)V
    .locals 1
    .param p0    # Lajm;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 479
    invoke-virtual {p0}, Lajm;->n()Ljava/lang/String;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_0

    .line 481
    invoke-static {v0}, Laxc;->a(Ljava/lang/String;)V

    .line 483
    :cond_0
    return-void
.end method

.method private static a(Lcom/snapchat/android/model/MediaMailingMetadata;)V
    .locals 2
    .param p0    # Lcom/snapchat/android/model/MediaMailingMetadata;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sending snap with no recipients! Did you intend to post a story?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lyt;->h:Lale;

    invoke-virtual {v0}, Lale;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 497
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_0

    .line 499
    const v1, 0x7f0c0184

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 501
    :cond_0
    const/4 v0, 0x0

    .line 503
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j(Laim;)Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 141
    sget-object v1, Lyt$3;->a:[I

    iget-object v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 152
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    :goto_0
    return-object v0

    .line 144
    :pswitch_0
    iget-object v0, p0, Lyt;->f:Lnq;

    invoke-virtual {v0}, Lnq;->a()V

    .line 145
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->SENDING:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lyt;->f:Lnq;

    invoke-virtual {v0}, Lnq;->a()V

    .line 149
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->SENDING_ON_UPLOAD:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static k(Laim;)Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 295
    sget-object v1, Lyt$3;->a:[I

    iget-object v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 304
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    :goto_0
    return-object v0

    .line 299
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->POSTING:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    goto :goto_0

    .line 302
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->POSTING_ON_UPLOAD:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static l(Laim;)V
    .locals 5
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 486
    const-string v0, "SendSnapController"

    const-string v1, "adding CompositeImageBitmap and RawImageBitmap to recycle pool. | Client ID: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    invoke-virtual {p0}, Laim;->f()V

    .line 489
    invoke-virtual {p0}, Laim;->k()V

    .line 490
    return-void
.end method


# virtual methods
.method public final a(Laim;)V
    .locals 9
    .param p1    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    .line 462
    invoke-static {p1}, Lnp;->c(Laim;)V

    .line 464
    iget-object v1, p0, Lyt;->d:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v4, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {p1}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v5

    iget-wide v6, p1, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    const-string v2, "STORY_POST_DELAY"

    const-string v3, "SNAP_SENT_STORY_DUMMY"

    invoke-virtual/range {v1 .. v8}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDZ)V

    .line 466
    iget-object v0, p0, Lyt;->a:Lajn;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->POSTED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    invoke-virtual {v0, p1, v1}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;)V

    .line 470
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_0
    if-eqz v8, :cond_2

    .line 471
    instance-of v0, p1, Lajm;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 472
    check-cast v0, Lajm;

    invoke-static {v0}, Lyt;->a(Lajm;)V

    .line 474
    :cond_1
    invoke-static {p1}, Lyt;->l(Laim;)V

    .line 476
    :cond_2
    return-void

    .line 470
    :cond_3
    iget-object v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->SENT:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    if-eq v0, v1, :cond_0

    const/4 v8, 0x0

    goto :goto_0
.end method

.method public final a(Laim;ZZ)Z
    .locals 4
    .param p1    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 186
    invoke-direct {p0}, Lyt;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    if-eqz p2, :cond_0

    .line 188
    iget-object v0, p0, Lyt;->a:Lajn;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    invoke-virtual {v0, p1, v1}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V

    .line 190
    :cond_0
    if-eqz p3, :cond_1

    .line 191
    iget-object v0, p0, Lyt;->a:Lajn;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    invoke-virtual {v0, p1, v1}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;)V

    .line 193
    :cond_1
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    .line 196
    :cond_2
    iget-object v0, p0, Lyt;->d:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    if-eqz p2, :cond_3

    const-string v2, "SNAP_SENT_DELAY"

    const-string v3, "retry_send_failed_snap"

    invoke-virtual {v0, v2, v1, v3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p3, :cond_4

    const-string v2, "STORY_POST_DELAY"

    const-string v3, "retry_post_failed_story"

    invoke-virtual {v0, v2, v1, v3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_4
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 199
    if-eqz p2, :cond_5

    .line 200
    invoke-static {v0}, Lyt;->a(Lcom/snapchat/android/model/MediaMailingMetadata;)V

    .line 203
    :cond_5
    if-eqz p3, :cond_7

    .line 204
    check-cast v0, Lajk;

    .line 205
    iget-object v1, v0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    iget-object v0, v0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Posting story with no post-to stories! Did you mean to send as snap?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_7
    new-instance v0, Lyt$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lyt$1;-><init>(Lyt;Laim;ZZ)V

    invoke-static {v0}, Lbgp;->b(Ljava/lang/Runnable;)V

    .line 209
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Laim;)V
    .locals 9
    .param p1    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 512
    if-nez p1, :cond_0

    .line 513
    const-string v0, "SendSnapController"

    const-string v1, "Unexpected Null Snapbryo at onStorySnapFailedToPost"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v1, p0, Lyt;->d:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v4, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {p1}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v5

    iget-wide v6, p1, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    const-string v2, "STORY_POST_DELAY"

    const-string v3, "SNAP_SENT_STORY_DUMMY"

    invoke-virtual/range {v1 .. v8}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDZ)V

    .line 519
    invoke-direct {p0}, Lyt;->a()Z

    .line 520
    iget-object v0, p0, Lyt;->a:Lajn;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    invoke-virtual {v0, p1, v1}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;)V

    goto :goto_0
.end method

.method public final b(Laim;ZZ)V
    .locals 4

    .prologue
    .line 361
    if-eqz p3, :cond_0

    .line 362
    iget-object v0, p0, Lyt;->a:Lajn;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->WILL_POST_AFTER_SAVE:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    invoke-virtual {v0, p1, v1}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;)V

    .line 363
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbeb;

    invoke-direct {v1}, Lbeb;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 366
    :cond_0
    new-instance v0, Lyt$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lyt$2;-><init>(Lyt;ZLaim;Z)V

    .line 402
    sget-object v1, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    new-array v2, v2, [Laim;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Laww;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 403
    return-void
.end method

.method public final c(Laim;)V
    .locals 10
    .param p1    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    .line 412
    invoke-static {p1}, Lnp;->b(Laim;)V

    .line 414
    iget-object v9, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 415
    iget-object v0, p0, Lyt;->f:Lnq;

    iget-wide v2, v0, Lnq;->mTimePressSend:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lnq;->mTimePressSend:J

    sub-long/2addr v2, v4

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "SNAP_SEND_TIMED"

    invoke-direct {v1, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v4, "success"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v4, "reachability"

    iget-object v5, v0, Lnq;->mReachability:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    iput-wide v6, v0, Lnq;->mTimePressSend:J

    .line 416
    :cond_1
    iget-object v1, p0, Lyt;->d:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v4, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {p1}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v5

    iget-wide v6, p1, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    const-string v2, "SNAP_SENT_DELAY"

    const-string v3, "SNAP_SENT_SNAP_DUMMY"

    invoke-virtual/range {v1 .. v8}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDZ)V

    .line 419
    iget-object v0, p0, Lyt;->i:Lnn;

    iget-object v1, v0, Lnn;->mSnapSends:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, v0, Lnn;->mSnapEngagement:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 420
    iget-object v0, p0, Lyt;->a:Lajn;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->SENT:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    invoke-virtual {v0, p1, v1}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V

    .line 422
    iget-boolean v0, v9, Lcom/snapchat/android/model/MediaMailingMetadata;->mDeleteCacheAfterSent:Z

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lyt;->b:Lawx;

    invoke-virtual {v0, p1}, Lawx;->b(Laim;)V

    .line 429
    :cond_2
    instance-of v0, v9, Lajk;

    if-eqz v0, :cond_3

    move-object v0, v9

    check-cast v0, Lajk;

    iget-object v0, v0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    :goto_0
    if-eqz v8, :cond_5

    .line 430
    instance-of v0, p1, Lajm;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 431
    check-cast v0, Lajm;

    invoke-static {v0}, Lyt;->a(Lajm;)V

    .line 433
    :cond_4
    invoke-static {p1}, Lyt;->l(Laim;)V

    .line 435
    :cond_5
    return-void

    .line 429
    :cond_6
    iget-object v0, v9, Lcom/snapchat/android/model/MediaMailingMetadata;->mPostStatus:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->POSTED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    if-eq v0, v1, :cond_3

    const/4 v8, 0x0

    goto :goto_0
.end method

.method public final d(Laim;)V
    .locals 9
    .param p1    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 443
    if-nez p1, :cond_0

    .line 444
    const-string v0, "SendSnapController"

    const-string v1, "Unexpected Null Snapbryo at onSnapFailedToSend"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-direct {p0}, Lyt;->a()Z

    .line 449
    iget-object v0, p0, Lyt;->f:Lnq;

    invoke-virtual {v0}, Lnq;->b()V

    .line 450
    iget-object v1, p0, Lyt;->d:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v4, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {p1}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v5

    iget-wide v6, p1, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    const-string v2, "SNAP_SENT_DELAY"

    const-string v3, "SNAP_SENT_SNAP_DUMMY"

    invoke-virtual/range {v1 .. v8}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDZ)V

    .line 452
    iget-object v0, p0, Lyt;->a:Lajn;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    invoke-virtual {v0, p1, v1}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V

    goto :goto_0
.end method

.method public final e(Laim;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 106
    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 108
    const/4 v0, 0x0

    .line 109
    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v3, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v2, v3, :cond_0

    move-object v0, v1

    .line 110
    check-cast v0, Lajk;

    .line 111
    iget-object v0, v0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    .line 113
    :cond_0
    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 115
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    :cond_1
    invoke-static {v1}, Lyt;->a(Lcom/snapchat/android/model/MediaMailingMetadata;)V

    .line 117
    invoke-virtual {p0, p1, v4, v5}, Lyt;->b(Laim;ZZ)V

    .line 119
    iput-boolean v4, v1, Lcom/snapchat/android/model/MediaMailingMetadata;->mDeleteCacheAfterSent:Z

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_2
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {p0, p1, v5, v4}, Lyt;->b(Laim;ZZ)V

    goto :goto_0

    .line 123
    :cond_3
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lajk;

    iget-object v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->UPLOADED:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1}, Lyt;->j(Laim;)Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    move-result-object v0

    iget-object v1, p0, Lyt;->a:Lajn;

    invoke-virtual {v1, p1, v0}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V

    invoke-static {p1}, Lyt;->k(Laim;)Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    move-result-object v0

    iget-object v1, p0, Lyt;->a:Lajn;

    invoke-virtual {v1, p1, v0}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbeb;

    invoke-direct {v1}, Lbeb;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    new-instance v0, Low;

    invoke-direct {v0, p1, p0, p0}, Low;-><init>(Laim;Lox$a;Loq$a;)V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Low;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, v4, v4}, Lyt;->b(Laim;ZZ)V

    goto :goto_0
.end method

.method protected final f(Laim;)V
    .locals 2
    .param p1    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lyt;->j(Laim;)Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lyt;->a:Lajn;

    invoke-virtual {v1, p1, v0}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V

    .line 131
    return-void
.end method

.method protected final g(Laim;)V
    .locals 4
    .param p1    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    sget-object v1, Lyt$3;->a:[I

    iget-object v2, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v2}, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 135
    :pswitch_0
    new-instance v0, Lox;

    invoke-direct {v0, p1, p0}, Lox;-><init>(Laim;Lox$a;)V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lox;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :pswitch_1
    new-instance v0, Loy;

    invoke-direct {v0, p1, p0}, Loy;-><init>(Laim;Lox$a;)V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Loy;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->c()V

    new-instance v0, Lme;

    invoke-direct {v0}, Lme;-><init>()V

    invoke-virtual {v0}, Lme;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "USER_SEND_SNAP_MEDIA_UPLOADING"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected final h(Laim;)V
    .locals 2
    .param p1    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 283
    invoke-static {p1}, Lyt;->k(Laim;)Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lyt;->a:Lajn;

    invoke-virtual {v1, p1, v0}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;)V

    .line 285
    return-void
.end method

.method protected final i(Laim;)V
    .locals 4
    .param p1    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 289
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lajk;

    sget-object v1, Lyt$3;->a:[I

    iget-object v2, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v2}, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 290
    :goto_0
    return-void

    .line 289
    :pswitch_0
    new-instance v0, Loq;

    invoke-direct {v0, p1, p0}, Loq;-><init>(Laim;Loq$a;)V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Loq;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lor;

    invoke-direct {v0, p1, p0}, Lor;-><init>(Laim;Loq$a;)V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lajk;->mShouldExecutePostStoryTaskAfterUpload:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
