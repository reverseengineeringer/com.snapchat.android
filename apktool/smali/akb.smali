.class public abstract Lakb;
.super Lcom/snapchat/android/model/chat/StatefulChatFeedItem;
.source "SourceFile"

# interfaces
.implements Lakn;
.implements Lako;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakb$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAckId:Ljava/lang/String;

.field protected mChatMessage:Lbhf;

.field protected mDisplayedTimestamp:J

.field public mId:Ljava/lang/String;

.field public mIsDisplayedToRecipient:Z

.field protected mIsReleasedByRecipient:Z

.field protected mIsSavedByRecipient:Z

.field protected mIsSavedBySender:Z

.field protected mIterToken:Ljava/lang/String;

.field protected mRecipientMessageStateVersionNumber:I

.field protected mReleaseDelay:I

.field protected mReleasedTimestamp:J

.field protected mSenderMessageStateVersionNumber:I

.field protected mSeqNum:J

.field protected mStatusText:Ljava/lang/String;

.field public mTimestamp:Ljava/lang/Long;

.field protected mUserText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lakb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lakb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lakb$a;)V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p1, Lakb$a;->sender:Ljava/lang/String;

    iget-object v1, p1, Lakb$a;->recipient:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lakb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    iget-object v0, p1, Lakb$a;->id:Ljava/lang/String;

    iput-object v0, p0, Lakb;->mId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Lbhf;)V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p1}, Lbhf;->g()Lbib;

    move-result-object v0

    invoke-virtual {v0}, Lbib;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbhf;->g()Lbib;

    move-result-object v1

    invoke-virtual {v1}, Lbib;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lbhf;->f()Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lakb;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;)V

    .line 53
    invoke-virtual {p1}, Lbhf;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakb;->mId:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lbhf;->a()Lbij;

    move-result-object v0

    invoke-virtual {v0}, Lbij;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakb;->mUserText:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lbhf;->d()Ljava/util/Map;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiu;

    .line 59
    invoke-virtual {v0}, Lbiu;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v2

    iput-boolean v2, p0, Lakb;->mIsSavedBySender:Z

    .line 60
    invoke-virtual {v0}, Lbiu;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lakb;->mSenderMessageStateVersionNumber:I

    .line 63
    :cond_0
    invoke-virtual {p0}, Lakb;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lakb;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lakb;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiu;

    .line 65
    invoke-virtual {v0}, Lbiu;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v1

    iput-boolean v1, p0, Lakb;->mIsSavedByRecipient:Z

    .line 66
    invoke-virtual {v0}, Lbiu;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lakb;->mRecipientMessageStateVersionNumber:I

    .line 69
    :cond_1
    invoke-virtual {p1}, Lbhf;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lakb;->mSeqNum:J

    .line 70
    invoke-static {p0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_2
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 83
    invoke-static {p2}, Latv;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lakb;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;)V

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lakb;->mReleaseDelay:I

    .line 88
    iput-object p3, p0, Lakb;->mTimestamp:Ljava/lang/Long;

    .line 89
    return-void
.end method

.method private B()Z
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-virtual {p0}, Lakb;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lakb;->mReleaseDelay:I

    return v0
.end method

.method public final W()J
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lakb;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;
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

    const v4, 0x7f020035

    .line 370
    invoke-virtual {p0}, Lakb;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lakb;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lakb;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long v0, v6, v0

    .line 372
    new-instance v2, Lakb$1;

    invoke-direct {v2, p0}, Lakb$1;-><init>(Lakb;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 380
    :cond_0
    invoke-virtual {p0}, Lakb;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lakb;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    const v1, 0x7f020127

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    .line 388
    :goto_0
    return-object v0

    .line 381
    :cond_1
    invoke-virtual {p0}, Lakb;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    invoke-direct {v0, v4}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    goto :goto_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 383
    invoke-virtual {p0}, Lakb;->N()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    invoke-direct {v0, v4}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    goto :goto_0

    .line 384
    :cond_3
    iget-boolean v0, p0, Lakb;->mIsReleasedByRecipient:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    const v1, 0x7f020036

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    goto :goto_0

    .line 385
    :cond_4
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    const v1, 0x7f02003a

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    goto :goto_0

    .line 387
    :cond_5
    iget-boolean v0, p0, Lakb;->mIsReleasedByRecipient:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    const v1, 0x7f02002d

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    goto :goto_0

    .line 388
    :cond_6
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    const v1, 0x7f02003e

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lakb;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-boolean v0, p0, Lakb;->mIsReleasedByRecipient:Z

    if-eqz v0, :cond_0

    .line 434
    const v0, 0x7f0c0198

    .line 441
    :goto_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 436
    :cond_0
    const v0, 0x7f0c00f8

    goto :goto_0

    .line 439
    :cond_1
    invoke-super {p0}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 228
    iput p1, p0, Lakb;->mSenderMessageStateVersionNumber:I

    .line 229
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lakb;->mIsReleasedByRecipient:Z

    .line 204
    iput-wide p1, p0, Lakb;->mReleasedTimestamp:J

    .line 205
    return-void
.end method

.method public a(Lakb;)V
    .locals 2

    .prologue
    .line 94
    iget v0, p1, Lakb;->mSenderMessageStateVersionNumber:I

    iget v1, p0, Lakb;->mSenderMessageStateVersionNumber:I

    if-le v0, v1, :cond_0

    .line 95
    iget-boolean v0, p1, Lakb;->mIsSavedBySender:Z

    iput-boolean v0, p0, Lakb;->mIsSavedBySender:Z

    .line 96
    iget v0, p1, Lakb;->mSenderMessageStateVersionNumber:I

    iput v0, p0, Lakb;->mSenderMessageStateVersionNumber:I

    .line 99
    :cond_0
    iget v0, p1, Lakb;->mRecipientMessageStateVersionNumber:I

    iget v1, p0, Lakb;->mRecipientMessageStateVersionNumber:I

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lakb;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-boolean v0, p1, Lakb;->mIsSavedByRecipient:Z

    iput-boolean v0, p0, Lakb;->mIsSavedByRecipient:Z

    .line 101
    iget v0, p1, Lakb;->mRecipientMessageStateVersionNumber:I

    iput v0, p0, Lakb;->mRecipientMessageStateVersionNumber:I

    .line 103
    :cond_1
    iget-object v0, p1, Lakb;->mTimestamp:Ljava/lang/Long;

    iput-object v0, p0, Lakb;->mTimestamp:Ljava/lang/Long;

    .line 104
    iget-object v0, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 105
    iget-boolean v0, p0, Lakb;->mIsReleasedByRecipient:Z

    if-nez v0, :cond_2

    .line 106
    iget-boolean v0, p1, Lakb;->mIsReleasedByRecipient:Z

    iput-boolean v0, p0, Lakb;->mIsReleasedByRecipient:Z

    .line 107
    iget-wide v0, p1, Lakb;->mReleasedTimestamp:J

    iput-wide v0, p0, Lakb;->mReleasedTimestamp:J

    .line 109
    :cond_2
    iget-boolean v0, p0, Lakb;->mIsDisplayedToRecipient:Z

    if-nez v0, :cond_3

    .line 110
    iget-boolean v0, p1, Lakb;->mIsDisplayedToRecipient:Z

    iput-boolean v0, p0, Lakb;->mIsDisplayedToRecipient:Z

    .line 111
    iget-wide v0, p1, Lakb;->mDisplayedTimestamp:J

    iput-wide v0, p0, Lakb;->mDisplayedTimestamp:J

    .line 113
    :cond_3
    iget-wide v0, p1, Lakb;->mSeqNum:J

    iput-wide v0, p0, Lakb;->mSeqNum:J

    .line 114
    return-void
.end method

.method public final a(Lbhf;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lakb;->mChatMessage:Lbhf;

    .line 192
    return-void
.end method

.method public final a(Lbik;Z)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p1}, Lbik;->g()Lbib;

    move-result-object v2

    invoke-virtual {v2}, Lbib;->a()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {p1}, Lbik;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 119
    invoke-virtual {p1}, Lbik;->b()Ljava/lang/String;

    move-result-object v4

    .line 120
    sget-object v5, Lbik$a;->SAVED:Lbik$a;

    invoke-virtual {v5}, Lbik$a;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 121
    iget-object v6, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    iget v2, p0, Lakb;->mSenderMessageStateVersionNumber:I

    if-le v3, v2, :cond_0

    .line 123
    if-eqz p2, :cond_1

    .line 124
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lakb;->mIsSavedBySender:Z

    .line 125
    iput v3, p0, Lakb;->mSenderMessageStateVersionNumber:I

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lakb;->mIsSavedBySender:Z

    .line 128
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lakb;->mSenderMessageStateVersionNumber:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 127
    goto :goto_1

    .line 132
    :cond_3
    iget v2, p0, Lakb;->mRecipientMessageStateVersionNumber:I

    if-le v3, v2, :cond_0

    .line 133
    if-eqz p2, :cond_4

    .line 134
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lakb;->mIsSavedByRecipient:Z

    .line 135
    iput v3, p0, Lakb;->mRecipientMessageStateVersionNumber:I

    goto :goto_0

    .line 137
    :cond_4
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_2
    iput-boolean v0, p0, Lakb;->mIsSavedByRecipient:Z

    .line 138
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lakb;->mRecipientMessageStateVersionNumber:I

    goto :goto_0

    :cond_5
    move v0, v1

    .line 137
    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lakb;->mAckId:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 199
    iput-boolean p1, p0, Lakb;->mIsReleasedByRecipient:Z

    .line 200
    return-void
.end method

.method public final al()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lakb;->mUserText:Ljava/lang/String;

    return-object v0
.end method

.method public am()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public final ao()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lakb;->mIsReleasedByRecipient:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lakb;->mStatusText:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 236
    iput p1, p0, Lakb;->mRecipientMessageStateVersionNumber:I

    .line 237
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 220
    iput-wide p1, p0, Lakb;->mSeqNum:J

    .line 221
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lakb;->mStatusText:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 244
    iput-boolean p1, p0, Lakb;->mIsSavedBySender:Z

    .line 245
    return-void
.end method

.method public final c(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2

    .prologue
    .line 420
    iget-boolean v0, p0, Lakb;->mIsDisplayedToRecipient:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lakb;->mDisplayedTimestamp:J

    .line 421
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lakb;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 317
    iput p1, p0, Lakb;->mReleaseDelay:I

    .line 318
    return-void
.end method

.method public final c(J)V
    .locals 1

    .prologue
    .line 279
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lakb;->mTimestamp:Ljava/lang/Long;

    .line 280
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lakb;->mId:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 252
    iput-boolean p1, p0, Lakb;->mIsSavedByRecipient:Z

    .line 253
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lakb;->O()Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 30
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    iget-object v0, p0, Lakb;->mTimestamp:Ljava/lang/Long;

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    if-nez v0, :cond_0

    instance-of v1, p1, Lakb;

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lakb;->mSeqNum:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast p1, Lakb;

    iget-wide v2, p1, Lakb;->mSeqNum:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lakb;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final d(J)V
    .locals 1

    .prologue
    .line 287
    iput-wide p1, p0, Lakb;->mReleasedTimestamp:J

    .line 288
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lakb;->mIterToken:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public final e(J)V
    .locals 1

    .prologue
    .line 303
    iput-wide p1, p0, Lakb;->mDisplayedTimestamp:J

    .line 304
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lakb;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lakb;->aa()Z

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

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 407
    instance-of v0, p1, Lakb;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lakb;->mId:Ljava/lang/String;

    check-cast p1, Lakb;

    iget-object v1, p1, Lakb;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(J)V
    .locals 1

    .prologue
    .line 307
    iput-wide p1, p0, Lakb;->mDisplayedTimestamp:J

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lakb;->mIsDisplayedToRecipient:Z

    .line 309
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lakb;->mIsSavedBySender:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lakb;->mIsSavedByRecipient:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 344
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    .line 345
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    .line 346
    :cond_0
    invoke-static {p0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-boolean v0, p0, Lakb;->mIsSavedBySender:Z

    goto :goto_0

    .line 349
    :cond_1
    iget-boolean v0, p0, Lakb;->mIsSavedByRecipient:Z

    goto :goto_0
.end method

.method public g(J)Z
    .locals 5

    .prologue
    .line 325
    iget-boolean v0, p0, Lakb;->mIsDisplayedToRecipient:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lakb;->mIsReleasedByRecipient:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lakb;->mDisplayedTimestamp:J

    iget v2, p0, Lakb;->mReleaseDelay:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lakb;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lakb;->mIterToken:Ljava/lang/String;

    return-object v0
.end method

.method public final l()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 161
    invoke-static {p0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iput-boolean v1, p0, Lakb;->mIsSavedBySender:Z

    .line 163
    iget v0, p0, Lakb;->mSenderMessageStateVersionNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lakb;->mSenderMessageStateVersionNumber:I

    .line 169
    :goto_0
    return v0

    .line 165
    :cond_0
    iput-boolean v1, p0, Lakb;->mIsSavedByRecipient:Z

    .line 166
    iget v0, p0, Lakb;->mRecipientMessageStateVersionNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lakb;->mRecipientMessageStateVersionNumber:I

    goto :goto_0
.end method

.method public final m()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-static {p0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iput-boolean v1, p0, Lakb;->mIsSavedBySender:Z

    .line 177
    iget v0, p0, Lakb;->mSenderMessageStateVersionNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lakb;->mSenderMessageStateVersionNumber:I

    .line 183
    :goto_0
    return v0

    .line 179
    :cond_0
    iput-boolean v1, p0, Lakb;->mIsSavedByRecipient:Z

    .line 180
    iget v0, p0, Lakb;->mRecipientMessageStateVersionNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lakb;->mRecipientMessageStateVersionNumber:I

    goto :goto_0
.end method

.method public final n()Lbhf;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lakb;->mChatMessage:Lbhf;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lakb;->mIsReleasedByRecipient:Z

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lakb;->mAckId:Ljava/lang/String;

    return-object v0
.end method

.method public final s()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lakb;->mSeqNum:J

    return-wide v0
.end method

.method public final t()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lakb;->mSenderMessageStateVersionNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x27

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Chat{mId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAckId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lakb;->mAckId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecipient=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mRecipients:Ljava/util/List;

    const-string v2, ","

    invoke-static {v1, v2}, Lavb;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSender=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSavedBySender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lakb;->mIsSavedBySender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSavedByRecipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lakb;->mIsSavedByRecipient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSenderMessageStateVersionNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lakb;->mSenderMessageStateVersionNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecipientMessageStateVersionNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lakb;->mRecipientMessageStateVersionNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsReleasedByRecipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lakb;->mIsReleasedByRecipient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lakb;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReleasedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lakb;->mReleasedTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lakb;->mUserText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakb;->mUserText:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatusText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lakb;->mStatusText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSeqNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lakb;->mSeqNum:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSendReceiveStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIterToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lakb;->mIterToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lakb;->mUserText:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget-object v4, p0, Lakb;->mUserText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final u()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lakb;->mRecipientMessageStateVersionNumber:I

    return v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lakb;->mIsSavedBySender:Z

    return v0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lakb;->mIsSavedByRecipient:Z

    return v0
.end method

.method public final x()J
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lakb;->mReleasedTimestamp:J

    return-wide v0
.end method

.method public final y()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lakb;->mIsDisplayedToRecipient:Z

    return v0
.end method

.method public final z()J
    .locals 2

    .prologue
    .line 299
    iget-wide v0, p0, Lakb;->mDisplayedTimestamp:J

    return-wide v0
.end method
