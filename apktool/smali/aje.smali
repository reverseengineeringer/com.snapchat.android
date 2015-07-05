.class public Laje;
.super Lcom/snapchat/android/model/Snap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laje$2;,
        Laje$a;
    }
.end annotation


# static fields
.field public static final ALLOWED_TIME_TO_REPLAY:I = 0x1388

.field static final BIRTHDAY_PRIORITY_TIMESTAMP:J = 0x0L

.field static final SECOND_MAX_VIDEO_DURATION:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ReceivedSnap"


# instance fields
.field private final mCacheKeyInstanceSuffix:Ljava/lang/String;

.field protected mCanonicalDisplayTime:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field protected mCaptionOrientation:J

.field protected mCaptionPosition:D

.field protected mCaptionText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "caption_text_display"
    .end annotation
.end field

.field protected mClock:Lbgk;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mFilterId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filter_id"
    .end annotation
.end field

.field protected mIsBeingViewed:Z

.field protected mIsLoading:Z

.field protected mIsSelectedForReplay:Z

.field protected mIsTimerRunning:Z

.field public mIsViewedFromStart:Z

.field public mLoadEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Laje$a;",
            ">;"
        }
    .end annotation
.end field

.field protected mMediaIv:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_iv"
    .end annotation
.end field

.field protected mMediaKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_key"
    .end annotation
.end field

.field protected mReplaySelectedTime:J

.field public mSender:Ljava/lang/String;

.field protected mTimeLeft:D

.field protected mTimeViewed:J

.field protected mUpdatedOnServer:Z

.field protected mViewedTimestamp:J

.field protected mWasOpened:Z

.field protected mZipped:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "zipped"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Lcom/snapchat/android/model/Snap;-><init>()V

    .line 92
    iput-boolean v2, p0, Laje;->mWasOpened:Z

    .line 97
    iput-boolean v0, p0, Laje;->mIsBeingViewed:Z

    .line 118
    iput-boolean v0, p0, Laje;->mIsTimerRunning:Z

    .line 119
    iput-boolean v0, p0, Laje;->mIsLoading:Z

    .line 120
    iput-boolean v0, p0, Laje;->mIsSelectedForReplay:Z

    .line 121
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Laje;->mReplaySelectedTime:J

    .line 125
    iput-boolean v2, p0, Laje;->mIsViewedFromStart:Z

    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laje;->mLoadEventListeners:Ljava/util/Set;

    .line 138
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Laje;)V

    .line 139
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laje;->mCacheKeyInstanceSuffix:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;ZJDLjava/lang/String;)V
    .locals 8

    .prologue
    .line 145
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p8

    move-object/from16 v7, p10

    invoke-direct/range {v2 .. v7}, Lcom/snapchat/android/model/Snap;-><init>(Ljava/lang/String;JILcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    .line 92
    const/4 v2, 0x1

    iput-boolean v2, p0, Laje;->mWasOpened:Z

    .line 97
    const/4 v2, 0x0

    iput-boolean v2, p0, Laje;->mIsBeingViewed:Z

    .line 118
    const/4 v2, 0x0

    iput-boolean v2, p0, Laje;->mIsTimerRunning:Z

    .line 119
    const/4 v2, 0x0

    iput-boolean v2, p0, Laje;->mIsLoading:Z

    .line 120
    const/4 v2, 0x0

    iput-boolean v2, p0, Laje;->mIsSelectedForReplay:Z

    .line 121
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Laje;->mReplaySelectedTime:J

    .line 125
    const/4 v2, 0x1

    iput-boolean v2, p0, Laje;->mIsViewedFromStart:Z

    .line 135
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Laje;->mLoadEventListeners:Ljava/util/Set;

    .line 146
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v2

    invoke-interface {v2, p0}, Laza;->a(Laje;)V

    .line 147
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Laje;->mCacheKeyInstanceSuffix:Ljava/lang/String;

    .line 148
    move-object/from16 v0, p11

    iput-object v0, p0, Laje;->mSender:Ljava/lang/String;

    .line 149
    move/from16 v0, p9

    iput-boolean v0, p0, Laje;->mZipped:Z

    .line 150
    move-wide/from16 v0, p12

    iput-wide v0, p0, Laje;->mCanonicalDisplayTime:D

    .line 151
    move-wide/from16 v0, p12

    iput-wide v0, p0, Laje;->mTimeLeft:D

    .line 152
    iput-wide p4, p0, Laje;->mSentTimestamp:J

    .line 153
    iput-wide p6, p0, Laje;->mViewedTimestamp:J

    .line 154
    move/from16 v0, p15

    invoke-virtual {p0, v0}, Laje;->d(Z)V

    .line 156
    sget-object v2, Laje$2;->$SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus:[I

    invoke-virtual/range {p10 .. p10}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 175
    :goto_0
    move-object/from16 v0, p14

    iput-object v0, p0, Laje;->mCaptionText:Ljava/lang/String;

    .line 176
    move-wide/from16 v0, p16

    iput-wide v0, p0, Laje;->mCaptionOrientation:J

    .line 177
    move-wide/from16 v0, p18

    iput-wide v0, p0, Laje;->mCaptionPosition:D

    .line 178
    move-object/from16 v0, p20

    iput-object v0, p0, Laje;->mFilterId:Ljava/lang/String;

    .line 179
    return-void

    .line 161
    :pswitch_0
    invoke-virtual {p0}, Laje;->L()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {p0}, Laje;->n()V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Laje;->l()V

    goto :goto_0

    .line 170
    :pswitch_1
    invoke-virtual {p0}, Laje;->o()V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ar()V
    .locals 2

    .prologue
    .line 307
    sget-object v0, Lawq;->SNAP_RECEIVED_VIDEO_CACHE:Lawp;

    invoke-virtual {p0}, Laje;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawp;->c(Ljava/lang/String;)V

    .line 308
    sget-object v0, Lawq;->SNAP_RECEIVED_IMAGE_CACHE:Lawp;

    invoke-virtual {p0}, Laje;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawp;->c(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method private as()Z
    .locals 6

    .prologue
    .line 592
    invoke-static {}, Lajx;->u()J

    move-result-wide v0

    .line 593
    invoke-virtual {p0}, Laje;->W()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Laje;->W()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static r()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Laje;->mWasOpened:Z

    return v0
.end method

.method public A_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laje;->mViewedTimestamp:J

    .line 274
    iput-boolean v2, p0, Laje;->mIsTimerRunning:Z

    .line 275
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laje;->mTimeLeft:D

    .line 276
    invoke-virtual {p0, v2}, Laje;->c(Z)V

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Laje;->mWasOpened:Z

    .line 278
    iput-boolean v2, p0, Laje;->mIsLoading:Z

    .line 282
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laje;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 283
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lajv;->a(Laje;)V

    .line 284
    invoke-virtual {p0}, Laje;->w()V

    .line 285
    return-void
.end method

.method public final B()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Laje;->mIsTimerRunning:Z

    .line 421
    return-void
.end method

.method public final C()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Laje;->mIsTimerRunning:Z

    .line 425
    return-void
.end method

.method public final D()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Laje;->mIsTimerRunning:Z

    return v0
.end method

.method public final E()J
    .locals 2

    .prologue
    .line 432
    iget-wide v0, p0, Laje;->mViewedTimestamp:J

    return-wide v0
.end method

.method public final F()D
    .locals 2

    .prologue
    .line 436
    iget-wide v0, p0, Laje;->mCanonicalDisplayTime:D

    return-wide v0
.end method

.method public final G()D
    .locals 2

    .prologue
    .line 444
    iget-wide v0, p0, Laje;->mTimeLeft:D

    return-wide v0
.end method

.method public final H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Laje;->mFilterId:Ljava/lang/String;

    return-object v0
.end method

.method public I()Lawy;
    .locals 4
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0}, Laje;->i()Ljava/lang/String;

    move-result-object v1

    .line 480
    if-eqz v1, :cond_0

    sget-object v0, Lawq;->SNAP_RECEIVED_IMAGE_CACHE:Lawp;

    invoke-virtual {v0, v1}, Lawp;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    new-instance v0, Lawy;

    sget-object v2, Lawq;->SNAP_RECEIVED_IMAGE_CACHE:Lawp;

    invoke-virtual {p0}, Laje;->K()Layc;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lawy;-><init>(Lawp;Ljava/lang/String;Layc;)V

    .line 483
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public J()Lawy;
    .locals 4
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 492
    invoke-virtual {p0}, Laje;->i()Ljava/lang/String;

    move-result-object v1

    .line 493
    if-eqz v1, :cond_0

    sget-object v0, Lawq;->SNAP_RECEIVED_VIDEO_CACHE:Lawp;

    invoke-virtual {v0, v1}, Lawp;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Lawy;

    sget-object v2, Lawq;->SNAP_RECEIVED_VIDEO_CACHE:Lawp;

    invoke-virtual {p0}, Laje;->K()Layc;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lawy;-><init>(Lawp;Ljava/lang/String;Layc;)V

    .line 496
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized K()Layc;
    .locals 3

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laje;->mMediaKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laje;->mMediaIv:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 502
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-direct {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>()V

    .line 503
    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laje;->mMediaKey:Ljava/lang/String;

    .line 504
    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laje;->mMediaIv:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    :goto_0
    monitor-exit p0

    return-object v0

    .line 506
    :cond_1
    :try_start_1
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v1, p0, Laje;->mMediaKey:Ljava/lang/String;

    iget-object v2, p0, Laje;->mMediaIv:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public L()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 516
    sget-object v2, Lawq;->SNAP_RECEIVED_IMAGE_CACHE:Lawp;

    invoke-virtual {p0}, Laje;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lawp;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lawq;->SNAP_RECEIVED_VIDEO_CACHE:Lawp;

    invoke-virtual {p0}, Laje;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lawp;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    .line 518
    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, p0, Laje;->mMediaKey:Ljava/lang/String;

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 516
    goto :goto_0

    :cond_2
    move v0, v1

    .line 518
    goto :goto_1
.end method

.method public M()Z
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public final N()Z
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public final O()Z
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public final P()Z
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x1

    return v0
.end method

.method public final Q()Z
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public final R()Z
    .locals 2

    .prologue
    .line 559
    invoke-virtual {p0}, Laje;->Z()Lcom/snapchat/android/ads/AdResolutionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ads/AdResolutionState;->RESOLVING:Lcom/snapchat/android/ads/AdResolutionState;

    if-ne v0, v1, :cond_0

    .line 560
    const/4 v0, 0x1

    .line 563
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Laje;->mIsLoading:Z

    goto :goto_0
.end method

.method public final S()Z
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Laje;->mCaptionText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final T()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Laje;->mCaptionText:Ljava/lang/String;

    return-object v0
.end method

.method public U()J
    .locals 2

    .prologue
    .line 575
    iget-wide v0, p0, Laje;->mCaptionOrientation:J

    return-wide v0
.end method

.method public V()D
    .locals 2

    .prologue
    .line 579
    iget-wide v0, p0, Laje;->mCaptionPosition:D

    return-wide v0
.end method

.method public W()J
    .locals 2

    .prologue
    .line 584
    iget-wide v0, p0, Laje;->mSentTimestamp:J

    return-wide v0
.end method

.method public final X()J
    .locals 2

    .prologue
    .line 588
    iget-wide v0, p0, Laje;->mTimestamp:J

    return-wide v0
.end method

.method public Y()Z
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method public Z()Lcom/snapchat/android/ads/AdResolutionState;
    .locals 1

    .prologue
    .line 721
    sget-object v0, Lcom/snapchat/android/ads/AdResolutionState;->NOT_NEEDED:Lcom/snapchat/android/ads/AdResolutionState;

    return-object v0
.end method

.method protected a(I)I
    .locals 1

    .prologue
    .line 691
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 6
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 623
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 624
    iget-boolean v1, p0, Laje;->mIsTimerRunning:Z

    if-eqz v1, :cond_1

    iget-wide v2, p0, Laje;->mTimeLeft:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 625
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->CURRENTLY_TICKING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 636
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v0

    return v0

    .line 626
    :cond_1
    invoke-virtual {p0}, Laje;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Laje;->mViewedTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 627
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Laje;

    move-result-object v1

    .line 628
    if-eqz v1, :cond_2

    .line 629
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->UNOPENED_SNAP_AVAILABLE_NEXT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0

    .line 630
    :cond_2
    invoke-virtual {p0}, Laje;->ap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_OPENED_LAST_SNAP:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0

    .line 633
    :cond_3
    iget-boolean v1, p0, Laje;->mWasOpened:Z

    if-nez v1, :cond_0

    .line 634
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Lavl;
    .end annotation

    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Laje;->I()Lawy;

    move-result-object v0

    .line 463
    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x0

    .line 470
    :goto_0
    return-object v0

    .line 467
    :cond_0
    iget-object v1, v0, Lawy;->mCache:Lawp;

    .line 468
    iget-object v2, v0, Lawy;->mKey:Ljava/lang/String;

    .line 469
    iget-object v0, v0, Lawy;->mAlgorithm:Layc;

    .line 470
    invoke-virtual {v1, p1, v2, v0}, Lawp;->a(Landroid/content/Context;Ljava/lang/String;Layc;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const-wide/16 v8, 0x1388

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Laje;->mViewedTimestamp:J

    sub-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-gez v0, :cond_0

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Laje;->mViewedTimestamp:J

    sub-long/2addr v4, v6

    sub-long v4, v8, v4

    .line 601
    new-instance v0, Laje$1;

    invoke-direct {v0, p0}, Laje$1;-><init>(Laje;)V

    invoke-virtual {p1, v0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 609
    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v0, p2, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedSnapsWithAudio:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 610
    :goto_0
    iget-boolean v3, p0, Laje;->mIsTimerRunning:Z

    if-nez v3, :cond_2

    .line 611
    iget-boolean v3, p0, Laje;->mIsSelectedForReplay:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Laje;->u()Z

    move-result v3

    if-nez v3, :cond_2

    .line 612
    new-instance v1, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    invoke-virtual {p0}, Laje;->ad()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    .line 613
    invoke-direct {p0}, Laje;->as()Z

    move-result v2

    invoke-virtual {p0, v2, v0}, Laje;->b(ZZ)I

    move-result v0

    iput v0, v1, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->endResource:I

    .line 614
    iget-wide v2, p0, Laje;->mReplaySelectedTime:J

    iput-wide v2, v1, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->frivolousAnimationTime:J

    move-object v0, v1

    .line 618
    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    .line 609
    goto :goto_0

    .line 618
    :cond_2
    new-instance v3, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    invoke-direct {p0}, Laje;->as()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Laje;->mIsTimerRunning:Z

    if-nez v4, :cond_3

    :goto_2
    invoke-virtual {p0, v1, v0}, Laje;->a(ZZ)I

    move-result v0

    invoke-direct {v3, v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    move-object v0, v3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    const v0, 0x7f0c0298

    .line 667
    iget-boolean v1, p0, Laje;->mWasOpened:Z

    if-nez v1, :cond_3

    .line 668
    invoke-virtual {p0}, Laje;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    :cond_0
    :goto_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 670
    :cond_1
    invoke-virtual {p0}, Laje;->R()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    const v0, 0x7f0c015d

    goto :goto_0

    .line 673
    :cond_2
    const v0, 0x7f0c0294

    goto :goto_0

    .line 675
    :cond_3
    iget-boolean v1, p0, Laje;->mIsTimerRunning:Z

    if-nez v1, :cond_0

    .line 677
    invoke-virtual {p0}, Laje;->ap()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 678
    const v0, 0x7f0c01ca

    goto :goto_0

    .line 680
    :cond_4
    const v0, 0x7f0c011b

    goto :goto_0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 398
    iput-wide p1, p0, Laje;->mTimeViewed:J

    .line 399
    return-void
.end method

.method public final a(Laje$a;)V
    .locals 2

    .prologue
    .line 702
    iget-object v1, p0, Laje;->mLoadEventListeners:Ljava/util/Set;

    monitor-enter v1

    .line 703
    :try_start_0
    iget-object v0, p0, Laje;->mLoadEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 704
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 190
    iput-boolean p1, p0, Laje;->mUpdatedOnServer:Z

    .line 191
    return-void
.end method

.method public aa()Ljava/lang/String;
    .locals 3

    .prologue
    .line 736
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lci;->a(Ljava/lang/Class;)Lci$a;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Laje;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    const-string v1, "sender"

    invoke-virtual {p0}, Laje;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    const-string v1, "cacheKey"

    invoke-virtual {p0}, Laje;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    const-string v1, "loaded"

    invoke-virtual {p0}, Laje;->L()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Z)Lci$a;

    move-result-object v0

    const-string v1, "loading"

    invoke-virtual {p0}, Laje;->R()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Z)Lci$a;

    move-result-object v0

    const-string v1, "unableToLoad"

    invoke-virtual {p0}, Laje;->M()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Z)Lci$a;

    move-result-object v0

    invoke-virtual {v0}, Lci$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ab()Z
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 757
    const-string v0, "FEED"

    return-object v0
.end method

.method public final b(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2

    .prologue
    .line 641
    invoke-virtual {p0, p1}, Laje;->a(Lcom/snapchat/android/model/chat/ChatConversation;)I

    move-result v0

    .line 642
    sget-object v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 643
    invoke-direct {p0}, Laje;->as()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    const-wide/16 v0, 0x0

    .line 647
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Laje;->c(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Laje;->a(I)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Laje;->mCanonicalDisplayTime:D

    .line 441
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 198
    iput-boolean p1, p0, Laje;->mZipped:Z

    .line 199
    return-void
.end method

.method public final c(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2

    .prologue
    .line 651
    invoke-virtual {p0, p1}, Laje;->a(Lcom/snapchat/android/model/chat/ChatConversation;)I

    move-result v0

    .line 652
    sget-object v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_OPENED_LAST_SNAP:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->UNOPENED_SNAP_AVAILABLE_NEXT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 654
    :cond_0
    iget-wide v0, p0, Laje;->mViewedTimestamp:J

    .line 656
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Laje;->W()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 448
    invoke-virtual {p0, p1}, Laje;->a(I)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Laje;->mTimeLeft:D

    .line 449
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Laje;->mWasOpened:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Laje;->mIsViewedFromStart:Z

    .line 390
    :cond_0
    if-eqz p1, :cond_1

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Laje;->mWasOpened:Z

    .line 392
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_STARTED_VIEWING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laje;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 394
    :cond_1
    iput-boolean p1, p0, Laje;->mIsBeingViewed:Z

    .line 395
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 661
    invoke-virtual {p0}, Laje;->ap()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laje;->mWasOpened:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Laje;->L()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Laje;->R()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 456
    int-to-double v0, p1

    iput-wide v0, p0, Laje;->mTimeLeft:D

    .line 457
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Laje;->z()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laje;->mIsLoading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Laje;->mUpdatedOnServer:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Laje;->mZipped:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Laje;->mId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laje;->mCacheKeyInstanceSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Laje;->mSender:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    return-object v0
.end method

.method public final l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    iput-boolean v2, p0, Laje;->mWasOpened:Z

    .line 235
    iput-boolean v2, p0, Laje;->mIsLoading:Z

    .line 240
    invoke-virtual {p0}, Laje;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "ReceivedSnap"

    const-string v1, "Call to markUnviewedAndUnloaded on an already viewed snap"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :goto_0
    return-void

    .line 245
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_UNLOADED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laje;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 246
    invoke-direct {p0}, Laje;->ar()V

    .line 248
    iget-object v1, p0, Laje;->mLoadEventListeners:Ljava/util/Set;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Laje;->mLoadEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laje$a;

    .line 250
    invoke-interface {v0}, Laje$a;->a()V

    goto :goto_1

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Laje;->mIsLoading:Z

    .line 257
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->LOADING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laje;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 258
    return-void
.end method

.method public final n()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Laje;->mWasOpened:Z

    .line 262
    iput-boolean v0, p0, Laje;->mIsLoading:Z

    .line 263
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_LOADED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laje;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 265
    iget-object v1, p0, Laje;->mLoadEventListeners:Ljava/util/Set;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Laje;->mLoadEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laje$a;

    .line 267
    invoke-interface {v0, p0}, Laje$a;->a(Laje;)V

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laje;->mViewedTimestamp:J

    .line 289
    iput-boolean v2, p0, Laje;->mIsTimerRunning:Z

    .line 290
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laje;->mTimeLeft:D

    .line 291
    invoke-virtual {p0, v2}, Laje;->c(Z)V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Laje;->mWasOpened:Z

    .line 293
    iput-boolean v2, p0, Laje;->mIsLoading:Z

    .line 295
    iget-boolean v0, p0, Laje;->mIsSelectedForReplay:Z

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laje;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 300
    :goto_0
    invoke-direct {p0}, Laje;->ar()V

    .line 302
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lajv;->a(Laje;)V

    .line 303
    invoke-virtual {p0}, Laje;->w()V

    .line 304
    return-void

    .line 298
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laje;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_0
.end method

.method public final p()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public final s()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 340
    iput-boolean v2, p0, Laje;->mIsSelectedForReplay:Z

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laje;->mReplaySelectedTime:J

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Laje;->mWasOpened:Z

    .line 343
    iput-boolean v2, p0, Laje;->mIsViewedFromStart:Z

    .line 344
    invoke-virtual {p0}, Laje;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Laje;->n()V

    .line 350
    :goto_0
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lajv;->a(Laje;)V

    .line 351
    return-void

    .line 347
    :cond_0
    invoke-virtual {p0}, Laje;->l()V

    goto :goto_0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Laje;->mIsSelectedForReplay:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 726
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    sget-object v1, Lorg/apache/commons/lang3/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    const-string v1, "id"

    invoke-virtual {p0}, Laje;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    const-string v1, "sender"

    invoke-virtual {p0}, Laje;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Laje;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v()V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laje;->d(Z)V

    .line 367
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lajv;->a(Laje;)V

    .line 368
    invoke-virtual {p0}, Laje;->w()V

    .line 369
    return-void
.end method

.method public final w()V
    .locals 7

    .prologue
    .line 372
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laje;->j()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-virtual {p0}, Laje;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laxi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v0}, Lym;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_0

    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v4

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laje;->ag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laut;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lbii$a;->SNAP_STATE:Lbii$a;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->y()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    invoke-static {v3, v0, v5, v6}, Lasz;->a(Lbii$a;Ljava/lang/String;Ljava/util/List;Lbix;)Lbhl;

    move-result-object v0

    check-cast v0, Lbjb;

    invoke-virtual {v0, v2}, Lbjb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Laje;->z()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbjb;->b(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Laje;->u()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbjb;->c(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Laje;->aq()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbjb;->b(Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbjb;->a(Ljava/lang/Long;)V

    invoke-virtual {v4, v1, v0}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;)V

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public final x()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Laje;->mIsBeingViewed:Z

    return v0
.end method

.method public final y()J
    .locals 2

    .prologue
    .line 402
    iget-wide v0, p0, Laje;->mTimeViewed:J

    return-wide v0
.end method

.method public z()Z
    .locals 2

    .prologue
    .line 406
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iget-object v1, p0, Laje;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iget-object v1, p0, Laje;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iget-object v1, p0, Laje;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
