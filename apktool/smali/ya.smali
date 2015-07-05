.class public final Lya;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lya$b;,
        Lya$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected a:Lqd;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lmz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;IZ)Lcom/snapchat/android/model/chat/CashFeedItem;
    .locals 4
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/snapchat/android/model/CashTransaction$a;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/snapchat/android/model/CashTransaction$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-boolean p2, v0, Lcom/snapchat/android/model/CashTransaction$a;->mFromRain:Z

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction$a;->a()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    .line 67
    invoke-static {}, Lajx;->ap()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mProvider:Ljava/lang/String;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)J

    move-result-wide v2

    .line 71
    iput-wide v2, v0, Lcom/snapchat/android/model/CashTransaction;->mCreatedTimestamp:J

    .line 72
    iput-wide v2, v0, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    .line 74
    new-instance v1, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {v1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;-><init>(Lcom/snapchat/android/model/CashTransaction;)V

    .line 75
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 76
    return-object v1
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;)Lqd$a;
    .locals 1
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;)",
            "Lqd$a;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lya$6;

    invoke-direct {v0, p0, p2, p3, p1}, Lya$6;-><init>(Lya;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;Lcom/snapchat/android/model/chat/ChatConversation;)V

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lyn;->a()Lyn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaz;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbaz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/chat/CashFeedItem;Lya$a;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lya$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 80
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager CONFIRM cash id[%s] recipient[%s] amount[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lya;->a:Lqd;

    new-instance v1, Lya$1;

    invoke-direct {v1, p0, p1, p2}, Lya$1;-><init>(Lya;Lcom/snapchat/android/model/chat/CashFeedItem;Lya$a;)V

    invoke-virtual {v0, p1, v1}, Lqd;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lqd$a;)V

    .line 95
    return-void
.end method

.method protected final a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 135
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager INITIATING cash id[%s]"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lya;->a:Lqd;

    new-instance v1, Lya$3;

    invoke-direct {v1, p0, p2, p1}, Lya$3;-><init>(Lya;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0, p2, v1}, Lqd;->c(Lcom/snapchat/android/model/chat/CashFeedItem;Lqd$a;)V

    .line 153
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaz;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->X()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lbaz;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 154
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;Lya$b;)V
    .locals 7
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lya$b;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 99
    const-string v1, "SendingCashManager"

    const-string v2, "CASH-LOG: SendingCashManager SEND cash id[%s] recipient[%s] amount[%s] message[%s]"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p2, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p3

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v0, p2, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object p3, v0, Lcom/snapchat/android/model/CashTransaction;->mMessage:Ljava/lang/String;

    .line 103
    iget-boolean v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v0, :cond_0

    .line 104
    iput-boolean v6, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    .line 106
    :cond_0
    iget-object v0, p0, Lya;->a:Lqd;

    new-instance v1, Lya$2;

    invoke-direct {v1, p0, p2, p1, p4}, Lya$2;-><init>(Lya;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/ChatConversation;Lya$b;)V

    invoke-virtual {v0, p2, v1}, Lqd;->b(Lcom/snapchat/android/model/chat/CashFeedItem;Lqd$a;)V

    .line 129
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lya$b;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lya$b;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 160
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SendingCashManager fetchTransactionStatusAndResolveBlockers should only be called on failed CashFeedItems!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->n()V

    .line 166
    invoke-static {}, Lyn;->a()Lyn;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 169
    iget-object v0, p2, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v0, v0, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    if-nez v0, :cond_1

    .line 170
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers RETRIEVING sending cash transaction id[%s]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lya;->a:Lqd;

    new-instance v1, Lya$4;

    invoke-direct {v1, p0, p2, p3, p1}, Lya$4;-><init>(Lya;Lcom/snapchat/android/model/chat/CashFeedItem;Lya$b;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0, p2, v1}, Lqd;->d(Lcom/snapchat/android/model/chat/CashFeedItem;Lqd$a;)V

    .line 214
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers RE-INITIATING cash transaction id[%s]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lya;->a:Lqd;

    new-instance v1, Lya$5;

    invoke-direct {v1, p0, p2, p3, p1}, Lya$5;-><init>(Lya;Lcom/snapchat/android/model/chat/CashFeedItem;Lya$b;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0, p2, v1}, Lqd;->c(Lcom/snapchat/android/model/chat/CashFeedItem;Lqd$a;)V

    .line 211
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaz;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbaz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 212
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 218
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    invoke-interface {p2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 220
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->O()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SendingCashManager retrySendCash should only be called on failed CashFeedItems!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->n()V

    .line 227
    iget-object v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v1, v1, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    if-nez v1, :cond_2

    .line 228
    const-string v1, "SendingCashManager"

    const-string v2, "CASH-LOG: SendingCashManager retrySendCash RETRIEVING cash transaction id[%s]"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v1, p0, Lya;->a:Lqd;

    invoke-direct {p0, p1, v0, p2}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;)Lqd$a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lqd;->d(Lcom/snapchat/android/model/chat/CashFeedItem;Lqd$a;)V

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    const-string v1, "SendingCashManager"

    const-string v2, "CASH-LOG: SendingCashManager retrySendCash RE-INITIATING cash transaction id[%s]"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lya;->a:Lqd;

    invoke-direct {p0, p1, v0, p2}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;)Lqd$a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lqd;->c(Lcom/snapchat/android/model/chat/CashFeedItem;Lqd$a;)V

    goto :goto_0
.end method

.method public final b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 284
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 289
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 290
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Z

    move-result v3

    if-nez v3, :cond_2

    .line 294
    invoke-virtual {v0, v5}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    iget-object v3, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v3, v3, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 296
    invoke-static {v0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 297
    sget-object v4, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->EXPIRED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v4, :cond_4

    .line 298
    iget-object v3, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->s(Ljava/lang/String;)V

    .line 309
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 299
    :cond_4
    sget-object v4, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v4, :cond_3

    .line 300
    iget-object v3, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->t(Ljava/lang/String;)V

    goto :goto_2

    .line 303
    :cond_5
    sget-object v4, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v4, :cond_6

    .line 304
    iget-object v3, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->q(Ljava/lang/String;)V

    goto :goto_2

    .line 305
    :cond_6
    sget-object v4, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->RECIPIENT_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v4, :cond_3

    .line 306
    const-string v3, "USER_DETERMINED_INELIGIBLE"

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->r(Ljava/lang/String;)V

    goto :goto_2

    .line 314
    :cond_7
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    const-string v0, "SendingCashManager"

    const-string v2, "CASH-LOG: SendingCashManager mark as viewed %d items"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    new-instance v3, Lya$7;

    invoke-direct {v3, p0, v1}, Lya$7;-><init>(Lya;Ljava/util/HashMap;)V

    new-instance v1, Lqp;

    invoke-direct {v1, v0, v2, v3}, Lqp;-><init>(Ljava/util/Collection;Ljava/lang/String;Lqp$a;)V

    invoke-virtual {v1}, Lqp;->f()V

    goto/16 :goto_0
.end method
