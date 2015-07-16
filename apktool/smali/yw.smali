.class public final Lyw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyw$b;,
        Lyw$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lqt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lnq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lyw;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;IZ)Lcom/snapchat/android/model/chat/CashFeedItem;
    .locals 4
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/snapchat/android/model/CashTransaction$a;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/snapchat/android/model/CashTransaction$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-boolean p2, v0, Lcom/snapchat/android/model/CashTransaction$a;->mFromRain:Z

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction$a;->a()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    .line 68
    invoke-static {}, Lakr;->ao()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mProvider:Ljava/lang/String;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)J

    move-result-wide v2

    .line 72
    iput-wide v2, v0, Lcom/snapchat/android/model/CashTransaction;->mCreatedTimestamp:J

    .line 73
    iput-wide v2, v0, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    .line 75
    new-instance v1, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {v1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;-><init>(Lcom/snapchat/android/model/CashTransaction;)V

    .line 76
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 77
    return-object v1
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;)Lqt$a;
    .locals 1
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lchc;
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
            "Lqt$a;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lyw$6;

    invoke-direct {v0, p0, p2, p3, p1}, Lyw$6;-><init>(Lyw;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;Lcom/snapchat/android/model/chat/ChatConversation;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    sget-object v0, Lyw;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 288
    if-nez v0, :cond_3

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 291
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 292
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 294
    :cond_2
    sget-object v0, Lyw;->c:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic b(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lyw;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lyw;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/chat/CashFeedItem;Lyw$a;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lyw$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->Z()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 83
    iget-object v0, p0, Lyw;->a:Lqt;

    new-instance v1, Lyw$1;

    invoke-direct {v1, p0, p1, p2}, Lyw$1;-><init>(Lyw;Lcom/snapchat/android/model/chat/CashFeedItem;Lyw$a;)V

    invoke-virtual {v0, p1, v1}, Lqt;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lqt$a;)V

    .line 96
    return-void
.end method

.method protected final a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 136
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 137
    iget-object v0, p0, Lyw;->a:Lqt;

    new-instance v1, Lyw$3;

    invoke-direct {v1, p0, p2, p1}, Lyw$3;-><init>(Lyw;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0, p2, v1}, Lqt;->c(Lcom/snapchat/android/model/chat/CashFeedItem;Lqt$a;)V

    .line 156
    sget-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENDING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {p1, p2, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 157
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lbca;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;Lyw$b;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lyw$b;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 100
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->Z()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p2, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p3

    :goto_0
    aput-object v0, v1, v2

    .line 103
    iget-object v0, p2, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object p3, v0, Lcom/snapchat/android/model/CashTransaction;->mMessage:Ljava/lang/String;

    .line 104
    iget-boolean v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v0, :cond_0

    .line 105
    iput-boolean v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    .line 107
    :cond_0
    iget-object v0, p0, Lyw;->a:Lqt;

    new-instance v1, Lyw$2;

    invoke-direct {v1, p0, p2, p1, p4}, Lyw$2;-><init>(Lyw;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/ChatConversation;Lyw$b;)V

    invoke-virtual {v0, p2, v1}, Lqt;->b(Lcom/snapchat/android/model/chat/CashFeedItem;Lqt$a;)V

    .line 130
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lyw$b;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lyw$b;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SendingCashManager fetchTransactionStatusAndResolveBlockers should only be called on failed CashFeedItems!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->o()V

    .line 169
    sget-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENDING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {p1, p2, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 171
    iget-object v0, p2, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v0, v0, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    if-nez v0, :cond_1

    .line 172
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 174
    iget-object v0, p0, Lyw;->a:Lqt;

    new-instance v1, Lyw$4;

    invoke-direct {v1, p0, p2, p3, p1}, Lyw$4;-><init>(Lyw;Lcom/snapchat/android/model/chat/CashFeedItem;Lyw$b;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0, p2, v1}, Lqt;->d(Lcom/snapchat/android/model/chat/CashFeedItem;Lqt$a;)V

    .line 220
    :goto_0
    return-void

    .line 195
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 199
    iget-object v0, p0, Lyw;->a:Lqt;

    new-instance v1, Lyw$5;

    invoke-direct {v1, p0, p2, p3, p1}, Lyw$5;-><init>(Lyw;Lcom/snapchat/android/model/chat/CashFeedItem;Lyw$b;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0, p2, v1}, Lqt;->c(Lcom/snapchat/android/model/chat/CashFeedItem;Lqt$a;)V

    .line 217
    sget-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENDING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {p1, p2, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 218
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lchc;
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 224
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    invoke-interface {p2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 226
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->P()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SendingCashManager retrySendCash should only be called on failed CashFeedItems!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->o()V

    .line 233
    iget-object v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v1, v1, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    if-nez v1, :cond_2

    .line 234
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 236
    iget-object v1, p0, Lyw;->a:Lqt;

    invoke-direct {p0, p1, v0, p2}, Lyw;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;)Lqt$a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lqt;->d(Lcom/snapchat/android/model/chat/CashFeedItem;Lqt$a;)V

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 239
    :cond_2
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 243
    iget-object v1, p0, Lyw;->a:Lqt;

    invoke-direct {p0, p1, v0, p2}, Lyw;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;)Lqt$a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lqt;->c(Lcom/snapchat/android/model/chat/CashFeedItem;Lqt$a;)V

    goto :goto_0
.end method

.method public final b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lchc;
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
    .line 306
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-static {v0, p2}, Lyw;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 307
    sget-object v0, Lyw;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 308
    if-nez v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 313
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 314
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->i()Z

    move-result v3

    if-nez v3, :cond_7

    .line 318
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    iget-object v3, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v3, v3, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 320
    invoke-static {v0}, Layg;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 321
    sget-object v4, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->EXPIRED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v4, :cond_4

    .line 322
    iget-object v3, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->r(Ljava/lang/String;)V

    .line 333
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 323
    :cond_4
    sget-object v4, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v4, :cond_3

    .line 324
    iget-object v3, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->s(Ljava/lang/String;)V

    goto :goto_2

    .line 327
    :cond_5
    sget-object v4, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v4, :cond_6

    .line 328
    iget-object v3, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->p(Ljava/lang/String;)V

    goto :goto_2

    .line 329
    :cond_6
    sget-object v4, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->RECIPIENT_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v4, :cond_3

    .line 330
    const-string v3, "USER_DETERMINED_INELIGIBLE"

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->q(Ljava/lang/String;)V

    goto :goto_2

    .line 335
    :cond_7
    iget-object v3, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v3, v3, Lcom/snapchat/android/model/CashTransaction;->mFailToSendReleaseMessage:Z

    if-eqz v3, :cond_2

    .line 336
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 340
    :cond_8
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 346
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    new-instance v3, Lyw$7;

    invoke-direct {v3, p0, v1, p1}, Lyw$7;-><init>(Lyw;Ljava/util/Map;Lcom/snapchat/android/model/chat/ChatConversation;)V

    new-instance v1, Lrf;

    invoke-direct {v1, v0, v2, v3}, Lrf;-><init>(Ljava/util/Collection;Ljava/lang/String;Lrf$a;)V

    invoke-virtual {v1}, Lrf;->execute()V

    goto/16 :goto_0
.end method
