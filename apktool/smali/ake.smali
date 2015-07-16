.class public final Lake;
.super Lcom/snapchat/android/model/Snap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lake$1;
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
    .line 26
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

    sput-object v0, Lake;->sSentSnapStateTimeline:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Laji;)V
    .locals 18

    .prologue
    .line 47
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Laji;->h()I

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

    invoke-direct/range {v3 .. v17}, Lake;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JZ)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 55
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

    invoke-direct/range {v1 .. v15}, Lake;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JZ)V
    .locals 9

    .prologue
    .line 62
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lcom/snapchat/android/model/Snap;-><init>(Ljava/lang/String;JILcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    .line 63
    iput-object p2, p0, Lake;->mClientId:Ljava/lang/String;

    .line 64
    iput-wide p5, p0, Lake;->mSentTimestamp:J

    .line 65
    move-object/from16 v0, p10

    iput-object v0, p0, Lake;->mDisplayTime:Ljava/lang/String;

    .line 66
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lake;->mTimeOfLastSendAttempt:J

    .line 67
    move-object/from16 v0, p9

    iput-object v0, p0, Lake;->mRecipient:Ljava/lang/String;

    .line 68
    const-string v2, "0"

    iput-object v2, p0, Lake;->mDisplayTime:Ljava/lang/String;

    .line 69
    if-eqz p11, :cond_0

    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lake;->mSnapUriString:Ljava/lang/String;

    .line 70
    :cond_0
    move/from16 v0, p14

    iput-boolean v0, p0, Lake;->mZipped:Z

    .line 71
    iget-wide v2, p0, Lake;->mTimeOfLastSendAttempt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lake;->mTimeOfLastSendAttempt:J

    .line 74
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lake;->mIsSavableSnap:Z

    .line 75
    return-void
.end method

.method private o()Z
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lake;->mClientId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lake;->mClientId:Ljava/lang/String;

    iget-object v1, p0, Lake;->mId:Ljava/lang/String;

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
.method public final O()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final P()Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

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

.method public final Q()Z
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final R()Z
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final U()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lake;->mSentTimestamp:J

    return-wide v0
.end method

.method public final a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 274
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    invoke-virtual {p0, v1, v1}, Lake;->a(ZZ)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lake;->af()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v0

    .line 296
    sget-object v1, Lake$1;->$SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus:[I

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 327
    const v0, 0x7f0c028f

    .line 329
    :goto_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 299
    :pswitch_0
    const v0, 0x7f0c012a

    .line 300
    goto :goto_0

    .line 302
    :pswitch_1
    const v0, 0x7f0c0128

    .line 303
    goto :goto_0

    .line 305
    :pswitch_2
    const v0, 0x7f0c01ac

    .line 306
    goto :goto_0

    .line 308
    :pswitch_3
    const v0, 0x7f0c021a

    .line 309
    goto :goto_0

    .line 312
    :pswitch_4
    const v0, 0x7f0c00f8

    .line 313
    goto :goto_0

    .line 315
    :pswitch_5
    const v0, 0x7f0c0204

    .line 316
    goto :goto_0

    .line 318
    :pswitch_6
    const v0, 0x7f0c01f7

    .line 319
    goto :goto_0

    .line 321
    :pswitch_7
    const v0, 0x7f0c01f6

    .line 322
    goto :goto_0

    .line 324
    :pswitch_8
    const v0, 0x7f0c0198

    .line 325
    goto :goto_0

    .line 296
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
    .line 205
    iput-wide p1, p0, Lake;->mSentTimestamp:J

    .line 206
    return-void
.end method

.method public final b(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 6
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 255
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 256
    invoke-virtual {p0}, Lake;->P()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lake;->R()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->FAILED:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 263
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v0

    return v0

    .line 258
    :cond_1
    invoke-virtual {p0}, Lake;->O()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->SENDING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {p0}, Lake;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lake;->l()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lake;->mSentTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 261
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_SENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 209
    iput-wide p1, p0, Lake;->mTimestamp:J

    .line 210
    return-void
.end method

.method public final c(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lake;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lake;->mTimestamp:J

    .line 280
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lake;->mSentTimestamp:J

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lake;->P()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lake;->af()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

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
    .line 79
    iget-object v0, p0, Lake;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 135
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 343
    if-ne p0, p1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v0

    .line 345
    :cond_1
    instance-of v2, p1, Lake;

    if-nez v2, :cond_2

    move v0, v1

    .line 346
    goto :goto_0

    .line 349
    :cond_2
    check-cast p1, Lake;

    .line 353
    invoke-direct {p0}, Lake;->o()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p1}, Lake;->o()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 354
    :cond_3
    iget-object v2, p0, Lake;->mClientId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lake;->mClientId:Ljava/lang/String;

    iget-object v3, p1, Lake;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 356
    :cond_5
    iget-object v0, p0, Lake;->mId:Ljava/lang/String;

    invoke-static {v0}, Lavr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    iget-object v1, p1, Lake;->mId:Ljava/lang/String;

    invoke-static {v1}, Lavr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    iget-object v1, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v1, v2, :cond_0

    .line 87
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 140
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 153
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lake;->mClientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 161
    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lakr;->l()Ljava/lang/String;

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
    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    iget-object v1, p0, Lake;->mRecipient:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-object v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lake$1;->$SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus:[I

    iget-object v1, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 186
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 184
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final m()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lake;->mTimestamp:J

    return-wide v0
.end method

.method public final n()Z
    .locals 4

    .prologue
    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lake;->mTimeOfLastSendAttempt:J

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

.method public final p()Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lake$1;->$SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus:[I

    iget-object v1, p0, Lake;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 174
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 172
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 165
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

.method public final r()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 370
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    sget-object v1, Lorg/apache/commons/lang3/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    const-string v1, "id"

    iget-object v2, p0, Lake;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    const-string v1, "recipient"

    iget-object v2, p0, Lake;->mRecipient:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    const-string v1, "timestamp"

    iget-wide v2, p0, Lake;->mSentTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;J)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    const-string v1, "isVideoWithAudio"

    invoke-virtual {p0}, Lake;->ah()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    const-string v1, "clientSnapStatus"

    invoke-virtual {p0}, Lake;->af()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
