.class public final Laji;
.super Lcom/snapchat/android/model/Snap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laji$2;
    }
.end annotation


# static fields
.field public static final TIME_TO_PRIORITIZE_SENT_ICON:I = 0x3e8

.field public static final sSentSnapStateTimeline:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/Snap$ClientSnapStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mClientId:Ljava/lang/String;

.field public mDisplayTime:Ljava/lang/String;

.field public mIsSavableSnap:Z

.field public mRecipient:Ljava/lang/String;

.field public mSnapUriString:Ljava/lang/String;

.field public mTimeOfLastSendAttempt:J

.field public mZipped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const/4 v2, 0x0

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->DELIVERED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_OPENED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Laji;->sSentSnapStateTimeline:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Laim;)V
    .locals 18

    .prologue
    .line 44
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Laim;->h()I

    move-result v10

    sget-object v11, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v2}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v12

    const-string v13, "0"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/snapchat/android/model/Mediabryo;->mIsZipUpload:Z

    move/from16 v17, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Laji;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 52
    const-string v11, "0"

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v15}, Laji;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JZ)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JZ)V
    .locals 9

    .prologue
    .line 59
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lcom/snapchat/android/model/Snap;-><init>(Ljava/lang/String;JILcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    .line 60
    iput-object p2, p0, Laji;->mClientId:Ljava/lang/String;

    .line 61
    iput-wide p5, p0, Laji;->mSentTimestamp:J

    .line 62
    move-object/from16 v0, p10

    iput-object v0, p0, Laji;->mDisplayTime:Ljava/lang/String;

    .line 63
    move-wide/from16 v0, p12

    iput-wide v0, p0, Laji;->mTimeOfLastSendAttempt:J

    .line 64
    move-object/from16 v0, p9

    iput-object v0, p0, Laji;->mRecipient:Ljava/lang/String;

    .line 65
    const-string v2, "0"

    iput-object v2, p0, Laji;->mDisplayTime:Ljava/lang/String;

    .line 66
    if-eqz p11, :cond_0

    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Laji;->mSnapUriString:Ljava/lang/String;

    .line 67
    :cond_0
    move/from16 v0, p14

    iput-boolean v0, p0, Laji;->mZipped:Z

    .line 68
    iget-wide v2, p0, Laji;->mTimeOfLastSendAttempt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Laji;->mTimeOfLastSendAttempt:J

    .line 71
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Laji;->mIsSavableSnap:Z

    .line 72
    return-void
.end method

.method private n()Z
    .locals 2

    .prologue
    .line 162
    sget-object v0, Laji$2;->$SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus:[I

    iget-object v1, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 171
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 169
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private o()Z
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Laji;->mClientId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laji;->mClientId:Ljava/lang/String;

    iget-object v1, p0, Laji;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public final N()Z
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final O()Z
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final P()Z
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Q()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final W()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Laji;->mSentTimestamp:J

    return-wide v0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 6
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 252
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 253
    invoke-virtual {p0}, Laji;->O()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Laji;->Q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->FAILED:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 260
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v0

    return v0

    .line 255
    :cond_1
    invoke-virtual {p0}, Laji;->N()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->SENDING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0

    .line 257
    :cond_2
    invoke-direct {p0}, Laji;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Laji;->mSentTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 258
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_SENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    .line 271
    invoke-direct {p0}, Laji;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Laji;->mSentTimestamp:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Laji;->mSentTimestamp:J

    sub-long/2addr v0, v2

    sub-long v0, v6, v0

    .line 273
    new-instance v2, Laji$1;

    invoke-direct {v2, p0}, Laji$1;-><init>(Laji;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    :cond_0
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    invoke-virtual {p0, v4, v4}, Laji;->a(ZZ)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    invoke-virtual {p0}, Laji;->ah()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v0

    .line 302
    sget-object v1, Laji$2;->$SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus:[I

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 333
    const v0, 0x7f0c028f

    .line 335
    :goto_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 305
    :pswitch_0
    const v0, 0x7f0c012b

    .line 306
    goto :goto_0

    .line 308
    :pswitch_1
    const v0, 0x7f0c0129

    .line 309
    goto :goto_0

    .line 311
    :pswitch_2
    const v0, 0x7f0c01ac

    .line 312
    goto :goto_0

    .line 314
    :pswitch_3
    const v0, 0x7f0c021a

    .line 315
    goto :goto_0

    .line 318
    :pswitch_4
    const v0, 0x7f0c00f8

    .line 319
    goto :goto_0

    .line 321
    :pswitch_5
    const v0, 0x7f0c0204

    .line 322
    goto :goto_0

    .line 324
    :pswitch_6
    const v0, 0x7f0c01f7

    .line 325
    goto :goto_0

    .line 327
    :pswitch_7
    const v0, 0x7f0c01f6

    .line 328
    goto :goto_0

    .line 330
    :pswitch_8
    const v0, 0x7f0c0198

    .line 331
    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 202
    iput-wide p1, p0, Laji;->mSentTimestamp:J

    .line 203
    return-void
.end method

.method public final b(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Laji;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 266
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Laji;->c(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 206
    iput-wide p1, p0, Laji;->mTimestamp:J

    .line 207
    return-void
.end method

.method public final c(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Laji;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Laji;->mTimestamp:J

    .line 286
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Laji;->mSentTimestamp:J

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Laji;->O()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Laji;->ah()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->PENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Laji;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 132
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 349
    if-ne p0, p1, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    instance-of v2, p1, Laji;

    if-nez v2, :cond_2

    move v0, v1

    .line 352
    goto :goto_0

    .line 355
    :cond_2
    check-cast p1, Laji;

    .line 359
    invoke-direct {p0}, Laji;->o()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p1}, Laji;->o()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 360
    :cond_3
    iget-object v2, p0, Laji;->mClientId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Laji;->mClientId:Ljava/lang/String;

    iget-object v3, p1, Laji;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 362
    :cond_5
    iget-object v0, p0, Laji;->mId:Ljava/lang/String;

    invoke-static {v0}, Laut;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v1, p1, Laji;->mId:Ljava/lang/String;

    invoke-static {v1}, Laut;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-nez v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    iget-object v1, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v1, v2, :cond_0

    .line 84
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 150
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 158
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Laji;->mClientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 176
    sget-object v0, Laji$2;->$SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus:[I

    iget-object v1, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 183
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 181
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

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
    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    iget-object v1, p0, Laji;->mRecipient:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-object v0
.end method

.method public final l()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Laji;->mTimestamp:J

    return-wide v0
.end method

.method public final m()Z
    .locals 4

    .prologue
    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Laji;->mTimeOfLastSendAttempt:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xafc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 137
    return-void
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Laji;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
