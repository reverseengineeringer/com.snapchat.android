.class public Laka;
.super Lcom/snapchat/android/model/Snap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laka$1;,
        Laka$a;
    }
.end annotation


# static fields
.field static final BIRTHDAY_PRIORITY_TIMESTAMP:J = 0x0L

.field static final SECOND_MAX_VIDEO_DURATION:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ReceivedSnap"

.field public static final TIME_TO_SHOW_AS_VIEWED:I = 0x1388


# instance fields
.field private final mCacheKeyInstanceSuffix:Ljava/lang/String;

.field protected mCanonicalDisplayTime:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field protected mCaptionText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "caption_text_display"
    .end annotation
.end field

.field protected mClock:Lbhk;
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
            "Laka$a;",
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

    .line 130
    invoke-direct {p0}, Lcom/snapchat/android/model/Snap;-><init>()V

    .line 87
    iput-boolean v2, p0, Laka;->mWasOpened:Z

    .line 92
    iput-boolean v0, p0, Laka;->mIsBeingViewed:Z

    .line 113
    iput-boolean v0, p0, Laka;->mIsTimerRunning:Z

    .line 114
    iput-boolean v0, p0, Laka;->mIsLoading:Z

    .line 115
    iput-boolean v0, p0, Laka;->mIsSelectedForReplay:Z

    .line 116
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Laka;->mReplaySelectedTime:J

    .line 120
    iput-boolean v2, p0, Laka;->mIsViewedFromStart:Z

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laka;->mLoadEventListeners:Ljava/util/Set;

    .line 131
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Laka;)V

    .line 132
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laka;->mCacheKeyInstanceSuffix:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;ZLjava/lang/String;)V
    .locals 8

    .prologue
    .line 138
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p8

    move-object/from16 v7, p10

    invoke-direct/range {v2 .. v7}, Lcom/snapchat/android/model/Snap;-><init>(Ljava/lang/String;JILcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    .line 87
    const/4 v2, 0x1

    iput-boolean v2, p0, Laka;->mWasOpened:Z

    .line 92
    const/4 v2, 0x0

    iput-boolean v2, p0, Laka;->mIsBeingViewed:Z

    .line 113
    const/4 v2, 0x0

    iput-boolean v2, p0, Laka;->mIsTimerRunning:Z

    .line 114
    const/4 v2, 0x0

    iput-boolean v2, p0, Laka;->mIsLoading:Z

    .line 115
    const/4 v2, 0x0

    iput-boolean v2, p0, Laka;->mIsSelectedForReplay:Z

    .line 116
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Laka;->mReplaySelectedTime:J

    .line 120
    const/4 v2, 0x1

    iput-boolean v2, p0, Laka;->mIsViewedFromStart:Z

    .line 128
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Laka;->mLoadEventListeners:Ljava/util/Set;

    .line 139
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v2

    invoke-interface {v2, p0}, Lazy;->a(Laka;)V

    .line 140
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Laka;->mCacheKeyInstanceSuffix:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p11

    iput-object v0, p0, Laka;->mSender:Ljava/lang/String;

    .line 142
    move/from16 v0, p9

    iput-boolean v0, p0, Laka;->mZipped:Z

    .line 143
    move-wide/from16 v0, p12

    iput-wide v0, p0, Laka;->mCanonicalDisplayTime:D

    .line 144
    move-wide/from16 v0, p12

    iput-wide v0, p0, Laka;->mTimeLeft:D

    .line 145
    iput-wide p4, p0, Laka;->mSentTimestamp:J

    .line 146
    iput-wide p6, p0, Laka;->mViewedTimestamp:J

    .line 147
    move/from16 v0, p15

    invoke-virtual {p0, v0}, Laka;->d(Z)V

    .line 149
    sget-object v2, Laka$1;->$SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus:[I

    invoke-virtual/range {p10 .. p10}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 168
    :goto_0
    move-object/from16 v0, p14

    iput-object v0, p0, Laka;->mCaptionText:Ljava/lang/String;

    .line 169
    move-object/from16 v0, p16

    iput-object v0, p0, Laka;->mFilterId:Ljava/lang/String;

    .line 170
    return-void

    .line 154
    :pswitch_0
    invoke-virtual {p0}, Laka;->M()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {p0}, Laka;->n()V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Laka;->l()V

    goto :goto_0

    .line 163
    :pswitch_1
    invoke-virtual {p0}, Laka;->o()V

    goto :goto_0

    .line 149
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

.method private ap()V
    .locals 2

    .prologue
    .line 306
    sget-object v0, Laxo;->SNAP_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-virtual {p0}, Laka;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laxn;->c(Ljava/lang/String;)V

    .line 307
    sget-object v0, Laxo;->SNAP_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-virtual {p0}, Laka;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laxn;->c(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method private aq()Z
    .locals 6

    .prologue
    .line 584
    invoke-static {}, Lakr;->u()J

    move-result-wide v0

    .line 585
    invoke-virtual {p0}, Laka;->U()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Laka;->U()J

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

.method private d(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 381
    if-nez p1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-static {}, Lzm;->a()Lzm;

    move-result-object v1

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laka;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lbji$a;->SNAP_STATE:Lbji$a;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->z()Ljava/util/List;

    move-result-object v4

    iget-object v5, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    invoke-static {v3, v0, v4, v5}, Laty;->a(Lbji$a;Ljava/lang/String;Ljava/util/List;Lbjy;)Lbil;

    move-result-object v0

    check-cast v0, Lbkc;

    invoke-virtual {v0, v2}, Lbkc;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Laka;->A()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbkc;->b(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Laka;->v()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbkc;->c(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Laka;->ao()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbkc;->b(Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbkc;->a(Ljava/lang/Long;)V

    invoke-virtual {v1, p1, v0}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;)V

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public static s()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public A()Z
    .locals 2

    .prologue
    .line 410
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iget-object v1, p0, Laka;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iget-object v1, p0, Laka;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iget-object v1, p0, Laka;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

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

.method public final B()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Laka;->mWasOpened:Z

    return v0
.end method

.method public final C()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Laka;->mIsTimerRunning:Z

    .line 425
    return-void
.end method

.method public final D()V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Laka;->mIsTimerRunning:Z

    .line 429
    return-void
.end method

.method public final E()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Laka;->mIsTimerRunning:Z

    return v0
.end method

.method public final F()J
    .locals 2

    .prologue
    .line 436
    iget-wide v0, p0, Laka;->mViewedTimestamp:J

    return-wide v0
.end method

.method public final G()D
    .locals 2

    .prologue
    .line 440
    iget-wide v0, p0, Laka;->mCanonicalDisplayTime:D

    return-wide v0
.end method

.method public final H()D
    .locals 2

    .prologue
    .line 448
    iget-wide v0, p0, Laka;->mTimeLeft:D

    return-wide v0
.end method

.method public final I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Laka;->mFilterId:Ljava/lang/String;

    return-object v0
.end method

.method public J()Laxw;
    .locals 4
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0}, Laka;->i()Ljava/lang/String;

    move-result-object v1

    .line 484
    if-eqz v1, :cond_0

    sget-object v0, Laxo;->SNAP_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-virtual {v0, v1}, Laxn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Laxw;

    sget-object v2, Laxo;->SNAP_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-virtual {p0}, Laka;->L()Laza;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Laxw;-><init>(Laxn;Ljava/lang/String;Laza;)V

    .line 487
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public K()Laxw;
    .locals 4
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0}, Laka;->i()Ljava/lang/String;

    move-result-object v1

    .line 497
    if-eqz v1, :cond_0

    sget-object v0, Laxo;->SNAP_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-virtual {v0, v1}, Laxn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    new-instance v0, Laxw;

    sget-object v2, Laxo;->SNAP_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-virtual {p0}, Laka;->L()Laza;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Laxw;-><init>(Laxn;Ljava/lang/String;Laza;)V

    .line 500
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized L()Laza;
    .locals 3

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laka;->mMediaKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laka;->mMediaIv:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 506
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-direct {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>()V

    .line 507
    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laka;->mMediaKey:Ljava/lang/String;

    .line 508
    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laka;->mMediaIv:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :goto_0
    monitor-exit p0

    return-object v0

    .line 510
    :cond_1
    :try_start_1
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v1, p0, Laka;->mMediaKey:Ljava/lang/String;

    iget-object v2, p0, Laka;->mMediaIv:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public M()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 520
    sget-object v2, Laxo;->SNAP_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-virtual {p0}, Laka;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laxn;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Laxo;->SNAP_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-virtual {p0}, Laka;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laxn;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    .line 522
    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, p0, Laka;->mMediaKey:Ljava/lang/String;

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 520
    goto :goto_0

    :cond_2
    move v0, v1

    .line 522
    goto :goto_1
.end method

.method public N()Z
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public final O()Z
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public final P()Z
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method public final Q()Z
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x1

    return v0
.end method

.method public final R()Z
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public final S()Z
    .locals 2

    .prologue
    .line 563
    invoke-virtual {p0}, Laka;->X()Lcom/snapchat/android/ads/AdResolutionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ads/AdResolutionState;->RESOLVING:Lcom/snapchat/android/ads/AdResolutionState;

    if-ne v0, v1, :cond_0

    .line 564
    const/4 v0, 0x1

    .line 567
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Laka;->mIsLoading:Z

    goto :goto_0
.end method

.method public final T()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Laka;->mCaptionText:Ljava/lang/String;

    return-object v0
.end method

.method public U()J
    .locals 2

    .prologue
    .line 576
    iget-wide v0, p0, Laka;->mSentTimestamp:J

    return-wide v0
.end method

.method public final V()J
    .locals 2

    .prologue
    .line 580
    iget-wide v0, p0, Laka;->mTimestamp:J

    return-wide v0
.end method

.method public W()Z
    .locals 1

    .prologue
    .line 696
    const/4 v0, 0x0

    return v0
.end method

.method public X()Lcom/snapchat/android/ads/AdResolutionState;
    .locals 1

    .prologue
    .line 703
    sget-object v0, Lcom/snapchat/android/ads/AdResolutionState;->NOT_NEEDED:Lcom/snapchat/android/ads/AdResolutionState;

    return-object v0
.end method

.method public Y()Ljava/lang/String;
    .locals 3

    .prologue
    .line 725
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcl;->a(Ljava/lang/Class;)Lcl$a;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Laka;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "sender"

    invoke-virtual {p0}, Laka;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "cacheKey"

    invoke-virtual {p0}, Laka;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "loaded"

    invoke-virtual {p0}, Laka;->M()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Z)Lcl$a;

    move-result-object v0

    const-string v1, "loading"

    invoke-virtual {p0}, Laka;->S()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Z)Lcl$a;

    move-result-object v0

    const-string v1, "unableToLoad"

    invoke-virtual {p0}, Laka;->N()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Z)Lcl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Z()Z
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x0

    return v0
.end method

.method protected a(I)I
    .locals 1

    .prologue
    .line 673
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Lawj;
    .end annotation

    .annotation build Lchd;
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0}, Laka;->J()Laxw;

    move-result-object v0

    .line 467
    if-nez v0, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 474
    :goto_0
    return-object v0

    .line 471
    :cond_0
    iget-object v1, v0, Laxw;->mCache:Laxn;

    .line 472
    iget-object v2, v0, Laxw;->mKey:Ljava/lang/String;

    .line 473
    iget-object v0, v0, Laxw;->mAlgorithm:Laza;

    .line 474
    invoke-virtual {v1, p1, v2, v0}, Laxn;->a(Landroid/content/Context;Ljava/lang/String;Laza;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 591
    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedSnapsWithAudio:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 592
    :goto_0
    iget-boolean v3, p0, Laka;->mIsTimerRunning:Z

    if-nez v3, :cond_1

    .line 593
    iget-boolean v3, p0, Laka;->mIsSelectedForReplay:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Laka;->v()Z

    move-result v3

    if-nez v3, :cond_1

    .line 594
    new-instance v1, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    invoke-virtual {p0}, Laka;->ab()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    .line 595
    invoke-direct {p0}, Laka;->aq()Z

    move-result v2

    invoke-virtual {p0, v2, v0}, Laka;->b(ZZ)I

    move-result v0

    iput v0, v1, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->endResource:I

    .line 596
    iget-wide v2, p0, Laka;->mReplaySelectedTime:J

    iput-wide v2, v1, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->frivolousAnimationTime:J

    move-object v0, v1

    .line 600
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 591
    goto :goto_0

    .line 600
    :cond_1
    new-instance v3, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    invoke-direct {p0}, Laka;->aq()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Laka;->mIsTimerRunning:Z

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {p0, v1, v0}, Laka;->a(ZZ)I

    move-result v0

    invoke-direct {v3, v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    move-object v0, v3

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    const v0, 0x7f0c0298

    .line 649
    iget-boolean v1, p0, Laka;->mWasOpened:Z

    if-nez v1, :cond_3

    .line 650
    invoke-virtual {p0}, Laka;->M()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    :cond_0
    :goto_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 652
    :cond_1
    invoke-virtual {p0}, Laka;->S()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    const v0, 0x7f0c015d

    goto :goto_0

    .line 655
    :cond_2
    const v0, 0x7f0c0294

    goto :goto_0

    .line 657
    :cond_3
    iget-boolean v1, p0, Laka;->mIsTimerRunning:Z

    if-nez v1, :cond_0

    .line 659
    invoke-virtual {p0}, Laka;->an()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 660
    const v0, 0x7f0c01ca

    goto :goto_0

    .line 662
    :cond_4
    const v0, 0x7f0c011a

    goto :goto_0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 402
    iput-wide p1, p0, Laka;->mTimeViewed:J

    .line 403
    return-void
.end method

.method public final a(Laka$a;)V
    .locals 2

    .prologue
    .line 684
    iget-object v1, p0, Laka;->mLoadEventListeners:Ljava/util/Set;

    monitor-enter v1

    .line 685
    :try_start_0
    iget-object v0, p0, Laka;->mLoadEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 686
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laka;->mViewedTimestamp:J

    .line 284
    iput-boolean v2, p0, Laka;->mIsTimerRunning:Z

    .line 285
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laka;->mTimeLeft:D

    .line 286
    invoke-virtual {p0, v2}, Laka;->c(Z)V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Laka;->mWasOpened:Z

    .line 288
    iput-boolean v2, p0, Laka;->mIsLoading:Z

    .line 290
    iget-boolean v0, p0, Laka;->mIsSelectedForReplay:Z

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laka;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 295
    :goto_0
    invoke-direct {p0}, Laka;->ap()V

    .line 297
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lakp;->a(Laka;)V

    .line 298
    if-nez p1, :cond_1

    .line 299
    invoke-virtual {p0}, Laka;->x()V

    .line 303
    :goto_1
    return-void

    .line 293
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laka;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_0

    .line 301
    :cond_1
    invoke-direct {p0, p1}, Laka;->d(Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 181
    iput-boolean p1, p0, Laka;->mUpdatedOnServer:Z

    .line 182
    return-void
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 746
    const-string v0, "FEED"

    return-object v0
.end method

.method public final b(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 6
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 605
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 606
    iget-boolean v1, p0, Laka;->mIsTimerRunning:Z

    if-eqz v1, :cond_1

    iget-wide v2, p0, Laka;->mTimeLeft:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 607
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->CURRENTLY_TICKING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 618
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v0

    return v0

    .line 608
    :cond_1
    invoke-virtual {p0}, Laka;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Laka;->mViewedTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 609
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Laka;

    move-result-object v1

    .line 610
    if-eqz v1, :cond_2

    .line 611
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->UNOPENED_SNAP_AVAILABLE_NEXT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0

    .line 612
    :cond_2
    invoke-virtual {p0}, Laka;->an()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_OPENED_LAST_SNAP:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0

    .line 615
    :cond_3
    iget-boolean v1, p0, Laka;->mWasOpened:Z

    if-nez v1, :cond_0

    .line 616
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Laka;->a(I)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Laka;->mCanonicalDisplayTime:D

    .line 445
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 189
    iput-boolean p1, p0, Laka;->mZipped:Z

    .line 190
    return-void
.end method

.method public final c(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Laka;->b(Lcom/snapchat/android/model/chat/ChatConversation;)I

    move-result v0

    .line 634
    sget-object v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_OPENED_LAST_SNAP:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->UNOPENED_SNAP_AVAILABLE_NEXT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 636
    :cond_0
    iget-wide v0, p0, Laka;->mViewedTimestamp:J

    .line 638
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Laka;->U()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Laka;->a(I)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Laka;->mTimeLeft:D

    .line 453
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Laka;->mWasOpened:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Laka;->mIsViewedFromStart:Z

    .line 394
    :cond_0
    if-eqz p1, :cond_1

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Laka;->mWasOpened:Z

    .line 396
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_STARTED_VIEWING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laka;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 398
    :cond_1
    iput-boolean p1, p0, Laka;->mIsBeingViewed:Z

    .line 399
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0}, Laka;->an()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laka;->mWasOpened:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Laka;->M()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Laka;->S()Z

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
    .line 460
    int-to-double v0, p1

    iput-wide v0, p0, Laka;->mTimeLeft:D

    .line 461
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Laka;->A()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laka;->mIsLoading:Z

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
    .line 177
    iget-boolean v0, p0, Laka;->mUpdatedOnServer:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Laka;->mZipped:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Laka;->mId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laka;->mCacheKeyInstanceSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Laka;->mSender:Ljava/lang/String;

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
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    return-object v0
.end method

.method public final l()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Laka;->mWasOpened:Z

    .line 226
    iput-boolean v0, p0, Laka;->mIsLoading:Z

    .line 231
    invoke-virtual {p0}, Laka;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 236
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_UNLOADED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laka;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 237
    invoke-direct {p0}, Laka;->ap()V

    .line 239
    iget-object v1, p0, Laka;->mLoadEventListeners:Ljava/util/Set;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v0, p0, Laka;->mLoadEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka$a;

    .line 241
    invoke-interface {v0}, Laka$a;->a()V

    goto :goto_1

    .line 243
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
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Laka;->mIsLoading:Z

    .line 248
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->LOADING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laka;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 249
    return-void
.end method

.method public final n()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Laka;->mWasOpened:Z

    .line 253
    iput-boolean v0, p0, Laka;->mIsLoading:Z

    .line 254
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_LOADED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laka;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 256
    iget-object v1, p0, Laka;->mLoadEventListeners:Ljava/util/Set;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Laka;->mLoadEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka$a;

    .line 258
    invoke-interface {v0, p0}, Laka$a;->a(Laka;)V

    goto :goto_0

    .line 260
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
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laka;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 280
    return-void
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public final t()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 339
    iput-boolean v2, p0, Laka;->mIsSelectedForReplay:Z

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laka;->mReplaySelectedTime:J

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Laka;->mWasOpened:Z

    .line 342
    iput-boolean v2, p0, Laka;->mIsViewedFromStart:Z

    .line 343
    invoke-virtual {p0}, Laka;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Laka;->n()V

    .line 349
    :goto_0
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lakp;->a(Laka;)V

    .line 350
    return-void

    .line 346
    :cond_0
    invoke-virtual {p0}, Laka;->l()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 708
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    sget-object v1, Lorg/apache/commons/lang3/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    const-string v1, "id"

    invoke-virtual {p0}, Laka;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    const-string v1, "sender"

    invoke-virtual {p0}, Laka;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {p0}, Laka;->U()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;J)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    const-string v1, "isVideoWithAudio"

    invoke-virtual {p0}, Laka;->ah()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    const-string v1, "isBeingViewed"

    iget-boolean v2, p0, Laka;->mIsBeingViewed:Z

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    const-string v1, "hasBeenViewed"

    invoke-virtual {p0}, Laka;->A()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    const-string v1, "viewedTimestamp"

    iget-wide v2, p0, Laka;->mViewedTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;J)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    const-string v1, "clientSnapStatus"

    invoke-virtual {p0}, Laka;->af()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    const-string v1, "isSentOnBirthday"

    invoke-direct {p0}, Laka;->aq()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Laka;->mIsSelectedForReplay:Z

    return v0
.end method

.method public final v()Z
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Laka;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()V
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laka;->d(Z)V

    .line 366
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lakp;->a(Laka;)V

    .line 367
    invoke-virtual {p0}, Laka;->x()V

    .line 368
    return-void
.end method

.method public final x()V
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laka;->j()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-virtual {p0}, Laka;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Layg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Lzi;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 377
    invoke-direct {p0, v0}, Laka;->d(Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_0
.end method

.method public final y()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Laka;->mIsBeingViewed:Z

    return v0
.end method

.method public final z()J
    .locals 2

    .prologue
    .line 406
    iget-wide v0, p0, Laka;->mTimeViewed:J

    return-wide v0
.end method

.method public z_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laka;->mViewedTimestamp:J

    .line 265
    iput-boolean v2, p0, Laka;->mIsTimerRunning:Z

    .line 266
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laka;->mTimeLeft:D

    .line 267
    invoke-virtual {p0, v2}, Laka;->c(Z)V

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Laka;->mWasOpened:Z

    .line 269
    iput-boolean v2, p0, Laka;->mIsLoading:Z

    .line 273
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laka;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 274
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lakp;->a(Laka;)V

    .line 275
    invoke-virtual {p0}, Laka;->x()V

    .line 276
    return-void
.end method
