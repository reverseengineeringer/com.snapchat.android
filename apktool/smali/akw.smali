.class public abstract Lakw;
.super Lcom/snapchat/android/model/chat/StatefulChatFeedItem;
.source "SourceFile"

# interfaces
.implements Lali;
.implements Lalj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakw$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAckId:Ljava/lang/String;

.field protected mChatMessage:Lbif;

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
    .line 28
    const-class v0, Lakw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lakw;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lakw$a;)V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p1, Lakw$a;->sender:Ljava/lang/String;

    iget-object v1, p1, Lakw$a;->recipient:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lakw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    iget-object v0, p1, Lakw$a;->id:Ljava/lang/String;

    iput-object v0, p0, Lakw;->mId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Lbif;)V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p1}, Lbif;->g()Lbjb;

    move-result-object v0

    invoke-virtual {v0}, Lbjb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbif;->g()Lbjb;

    move-result-object v1

    invoke-virtual {v1}, Lbjb;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lbif;->f()Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lakw;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;)V

    .line 50
    invoke-virtual {p1}, Lbif;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakw;->mId:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lbif;->a()Lbjj;

    move-result-object v0

    invoke-virtual {v0}, Lbjj;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakw;->mUserText:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lbif;->d()Ljava/util/Map;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjv;

    .line 56
    invoke-virtual {v0}, Lbjv;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v2

    iput-boolean v2, p0, Lakw;->mIsSavedBySender:Z

    .line 57
    invoke-virtual {v0}, Lbjv;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lakw;->mSenderMessageStateVersionNumber:I

    .line 60
    :cond_0
    invoke-virtual {p0}, Lakw;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lakw;->D()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lakw;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjv;

    .line 62
    invoke-virtual {v0}, Lbjv;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    iput-boolean v1, p0, Lakw;->mIsSavedByRecipient:Z

    .line 63
    invoke-virtual {v0}, Lbjv;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lakw;->mRecipientMessageStateVersionNumber:I

    .line 66
    :cond_1
    invoke-virtual {p1}, Lbif;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lakw;->mSeqNum:J

    .line 67
    invoke-static {p0}, Layg;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_2
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 80
    invoke-static {p2}, Laut;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lakw;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;)V

    .line 81
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
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lakw;->mReleaseDelay:I

    .line 85
    iput-object p3, p0, Lakw;->mTimestamp:Ljava/lang/Long;

    .line 86
    return-void
.end method

.method private D()Z
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-virtual {p0}, Lakw;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final A()J
    .locals 2

    .prologue
    .line 296
    iget-wide v0, p0, Lakw;->mDisplayedTimestamp:J

    return-wide v0
.end method

.method public final B()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lakw;->mReleaseDelay:I

    return v0
.end method

.method public final U()J
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lakw;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;
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
    .line 367
    invoke-virtual {p0}, Lakw;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    const v1, 0x7f020127

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    .line 374
    :goto_0
    return-object v0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {p0}, Lakw;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    const v1, 0x7f020035

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    goto :goto_0

    .line 370
    :cond_1
    iget-boolean v0, p0, Lakw;->mIsReleasedByRecipient:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    const v1, 0x7f020036

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    goto :goto_0

    .line 371
    :cond_2
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    const v1, 0x7f02003a

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    goto :goto_0

    .line 373
    :cond_3
    iget-boolean v0, p0, Lakw;->mIsReleasedByRecipient:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    const v1, 0x7f02002d

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    goto :goto_0

    .line 374
    :cond_4
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    const v1, 0x7f02003e

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lakw;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-boolean v0, p0, Lakw;->mIsReleasedByRecipient:Z

    if-eqz v0, :cond_0

    .line 420
    const v0, 0x7f0c0198

    .line 427
    :goto_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 422
    :cond_0
    const v0, 0x7f0c00f8

    goto :goto_0

    .line 425
    :cond_1
    invoke-super {p0}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 225
    iput p1, p0, Lakw;->mSenderMessageStateVersionNumber:I

    .line 226
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lakw;->mIsReleasedByRecipient:Z

    .line 201
    iput-wide p1, p0, Lakw;->mReleasedTimestamp:J

    .line 202
    return-void
.end method

.method public a(Lakw;)V
    .locals 2

    .prologue
    .line 91
    iget v0, p1, Lakw;->mSenderMessageStateVersionNumber:I

    iget v1, p0, Lakw;->mSenderMessageStateVersionNumber:I

    if-le v0, v1, :cond_0

    .line 92
    iget-boolean v0, p1, Lakw;->mIsSavedBySender:Z

    iput-boolean v0, p0, Lakw;->mIsSavedBySender:Z

    .line 93
    iget v0, p1, Lakw;->mSenderMessageStateVersionNumber:I

    iput v0, p0, Lakw;->mSenderMessageStateVersionNumber:I

    .line 96
    :cond_0
    iget v0, p1, Lakw;->mRecipientMessageStateVersionNumber:I

    iget v1, p0, Lakw;->mRecipientMessageStateVersionNumber:I

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lakw;->D()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-boolean v0, p1, Lakw;->mIsSavedByRecipient:Z

    iput-boolean v0, p0, Lakw;->mIsSavedByRecipient:Z

    .line 98
    iget v0, p1, Lakw;->mRecipientMessageStateVersionNumber:I

    iput v0, p0, Lakw;->mRecipientMessageStateVersionNumber:I

    .line 100
    :cond_1
    iget-object v0, p1, Lakw;->mTimestamp:Ljava/lang/Long;

    iput-object v0, p0, Lakw;->mTimestamp:Ljava/lang/Long;

    .line 101
    iget-object v0, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 102
    iget-boolean v0, p0, Lakw;->mIsReleasedByRecipient:Z

    if-nez v0, :cond_2

    .line 103
    iget-boolean v0, p1, Lakw;->mIsReleasedByRecipient:Z

    iput-boolean v0, p0, Lakw;->mIsReleasedByRecipient:Z

    .line 104
    iget-wide v0, p1, Lakw;->mReleasedTimestamp:J

    iput-wide v0, p0, Lakw;->mReleasedTimestamp:J

    .line 106
    :cond_2
    iget-boolean v0, p0, Lakw;->mIsDisplayedToRecipient:Z

    if-nez v0, :cond_3

    .line 107
    iget-boolean v0, p1, Lakw;->mIsDisplayedToRecipient:Z

    iput-boolean v0, p0, Lakw;->mIsDisplayedToRecipient:Z

    .line 108
    iget-wide v0, p1, Lakw;->mDisplayedTimestamp:J

    iput-wide v0, p0, Lakw;->mDisplayedTimestamp:J

    .line 110
    :cond_3
    iget-wide v0, p1, Lakw;->mSeqNum:J

    iput-wide v0, p0, Lakw;->mSeqNum:J

    .line 111
    return-void
.end method

.method public final a(Lbif;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lakw;->mChatMessage:Lbif;

    .line 189
    return-void
.end method

.method public final a(Lbjk;Z)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p1}, Lbjk;->g()Lbjb;

    move-result-object v2

    invoke-virtual {v2}, Lbjb;->a()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {p1}, Lbjk;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 116
    invoke-virtual {p1}, Lbjk;->b()Ljava/lang/String;

    move-result-object v4

    .line 117
    sget-object v5, Lbjk$a;->SAVED:Lbjk$a;

    invoke-virtual {v5}, Lbjk$a;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 118
    iget-object v6, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    iget v2, p0, Lakw;->mSenderMessageStateVersionNumber:I

    if-le v3, v2, :cond_0

    .line 120
    if-eqz p2, :cond_1

    .line 121
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lakw;->mIsSavedBySender:Z

    .line 122
    iput v3, p0, Lakw;->mSenderMessageStateVersionNumber:I

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lakw;->mIsSavedBySender:Z

    .line 125
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lakw;->mSenderMessageStateVersionNumber:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 124
    goto :goto_1

    .line 129
    :cond_3
    iget v2, p0, Lakw;->mRecipientMessageStateVersionNumber:I

    if-le v3, v2, :cond_0

    .line 130
    if-eqz p2, :cond_4

    .line 131
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lakw;->mIsSavedByRecipient:Z

    .line 132
    iput v3, p0, Lakw;->mRecipientMessageStateVersionNumber:I

    goto :goto_0

    .line 134
    :cond_4
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_2
    iput-boolean v0, p0, Lakw;->mIsSavedByRecipient:Z

    .line 135
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lakw;->mRecipientMessageStateVersionNumber:I

    goto :goto_0

    :cond_5
    move v0, v1

    .line 134
    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lakw;->mAckId:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 196
    iput-boolean p1, p0, Lakw;->mIsReleasedByRecipient:Z

    .line 197
    return-void
.end method

.method public final aj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lakw;->mUserText:Ljava/lang/String;

    return-object v0
.end method

.method public ak()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public final am()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lakw;->mIsReleasedByRecipient:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lakw;->mStatusText:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 233
    iput p1, p0, Lakw;->mRecipientMessageStateVersionNumber:I

    .line 234
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 217
    iput-wide p1, p0, Lakw;->mSeqNum:J

    .line 218
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lakw;->mStatusText:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 241
    iput-boolean p1, p0, Lakw;->mIsSavedBySender:Z

    .line 242
    return-void
.end method

.method public final c(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2

    .prologue
    .line 406
    iget-boolean v0, p0, Lakw;->mIsDisplayedToRecipient:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lakw;->mDisplayedTimestamp:J

    .line 407
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lakw;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 314
    iput p1, p0, Lakw;->mReleaseDelay:I

    .line 315
    return-void
.end method

.method public final c(J)V
    .locals 1

    .prologue
    .line 276
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lakw;->mTimestamp:Ljava/lang/Long;

    .line 277
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lakw;->mId:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 249
    iput-boolean p1, p0, Lakw;->mIsSavedByRecipient:Z

    .line 250
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0}, Lakw;->P()Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 27
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    iget-object v0, p0, Lakw;->mTimestamp:Ljava/lang/Long;

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    if-nez v0, :cond_0

    instance-of v1, p1, Lakw;

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lakw;->mSeqNum:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast p1, Lakw;

    iget-wide v2, p1, Lakw;->mSeqNum:J

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
    .line 327
    iget-object v0, p0, Lakw;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final d(J)V
    .locals 1

    .prologue
    .line 284
    iput-wide p1, p0, Lakw;->mReleasedTimestamp:J

    .line 285
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lakw;->mIterToken:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public final e(J)V
    .locals 1

    .prologue
    .line 300
    iput-wide p1, p0, Lakw;->mDisplayedTimestamp:J

    .line 301
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lakw;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lakw;->r()Z

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
    .line 393
    instance-of v0, p1, Lakw;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lakw;->mId:Ljava/lang/String;

    check-cast p1, Lakw;

    iget-object v1, p1, Lakw;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 396
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(J)V
    .locals 1

    .prologue
    .line 304
    iput-wide p1, p0, Lakw;->mDisplayedTimestamp:J

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lakw;->mIsDisplayedToRecipient:Z

    .line 306
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lakw;->mIsSavedBySender:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lakw;->mIsSavedByRecipient:Z

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
    .line 341
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    .line 342
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 346
    :goto_0
    return v0

    .line 343
    :cond_0
    invoke-static {p0}, Layg;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-boolean v0, p0, Lakw;->mIsSavedBySender:Z

    goto :goto_0

    .line 346
    :cond_1
    iget-boolean v0, p0, Lakw;->mIsSavedByRecipient:Z

    goto :goto_0
.end method

.method public g(J)Z
    .locals 5

    .prologue
    .line 322
    iget-boolean v0, p0, Lakw;->mIsDisplayedToRecipient:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lakw;->mIsReleasedByRecipient:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lakw;->mDisplayedTimestamp:J

    iget v2, p0, Lakw;->mReleaseDelay:I

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
    .line 401
    iget-object v0, p0, Lakw;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Lbif;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lakw;->mChatMessage:Lbif;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lakw;->mIterToken:Ljava/lang/String;

    return-object v0
.end method

.method public final m()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 158
    invoke-static {p0}, Layg;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iput-boolean v1, p0, Lakw;->mIsSavedBySender:Z

    .line 160
    iget v0, p0, Lakw;->mSenderMessageStateVersionNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lakw;->mSenderMessageStateVersionNumber:I

    .line 166
    :goto_0
    return v0

    .line 162
    :cond_0
    iput-boolean v1, p0, Lakw;->mIsSavedByRecipient:Z

    .line 163
    iget v0, p0, Lakw;->mRecipientMessageStateVersionNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lakw;->mRecipientMessageStateVersionNumber:I

    goto :goto_0
.end method

.method public final n()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-static {p0}, Layg;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iput-boolean v1, p0, Lakw;->mIsSavedBySender:Z

    .line 174
    iget v0, p0, Lakw;->mSenderMessageStateVersionNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lakw;->mSenderMessageStateVersionNumber:I

    .line 180
    :goto_0
    return v0

    .line 176
    :cond_0
    iput-boolean v1, p0, Lakw;->mIsSavedByRecipient:Z

    .line 177
    iget v0, p0, Lakw;->mRecipientMessageStateVersionNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lakw;->mRecipientMessageStateVersionNumber:I

    goto :goto_0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lakw;->mIsReleasedByRecipient:Z

    return v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lakw;->mAckId:Ljava/lang/String;

    return-object v0
.end method

.method public final t()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lakw;->mSeqNum:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x27

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Chat{mId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lakw;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAckId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lakw;->mAckId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecipient=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mRecipients:Ljava/util/List;

    const-string v2, ","

    invoke-static {v1, v2}, Lavz;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

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

    iget-boolean v1, p0, Lakw;->mIsSavedBySender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSavedByRecipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lakw;->mIsSavedByRecipient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSenderMessageStateVersionNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lakw;->mSenderMessageStateVersionNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecipientMessageStateVersionNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lakw;->mRecipientMessageStateVersionNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsReleasedByRecipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lakw;->mIsReleasedByRecipient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lakw;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReleasedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lakw;->mReleasedTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lakw;->mUserText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakw;->mUserText:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatusText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lakw;->mStatusText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSeqNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lakw;->mSeqNum:J

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

    iget-object v1, p0, Lakw;->mIterToken:Ljava/lang/String;

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
    iget-object v0, p0, Lakw;->mUserText:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget-object v4, p0, Lakw;->mUserText:Ljava/lang/String;

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
    .line 221
    iget v0, p0, Lakw;->mSenderMessageStateVersionNumber:I

    return v0
.end method

.method public final v()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lakw;->mRecipientMessageStateVersionNumber:I

    return v0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lakw;->mIsSavedBySender:Z

    return v0
.end method

.method public final x()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lakw;->mIsSavedByRecipient:Z

    return v0
.end method

.method public final y()J
    .locals 2

    .prologue
    .line 280
    iget-wide v0, p0, Lakw;->mReleasedTimestamp:J

    return-wide v0
.end method

.method public final z()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lakw;->mIsDisplayedToRecipient:Z

    return v0
.end method
