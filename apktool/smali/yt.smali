.class public Lyt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected a:Lqx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lqt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lyt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lyt;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lyt;)V

    .line 40
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lyt;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    .line 105
    invoke-static {}, Lzi;->a()Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 108
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 110
    iget-object v2, p0, Lyt;->b:Lqt;

    new-instance v3, Lyt$2;

    invoke-direct {v3, p0, v0}, Lyt$2;-><init>(Lyt;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    invoke-virtual {v2, v0, v3}, Lqt;->f(Lcom/snapchat/android/model/chat/CashFeedItem;Lqt$a;)V

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/chat/CashFeedItem;Lyt$a;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lyt$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 48
    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->INITIATED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v0, v1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ReceivingCashManager resolveBlockers should only be called on INITIATED or WAITING_ON_RECIPIENT CashFeedItems!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 56
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 57
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lyt;->b:Lqt;

    new-instance v1, Lyt$1;

    invoke-direct {v1, p0, p1, p2}, Lyt$1;-><init>(Lyt;Lcom/snapchat/android/model/chat/CashFeedItem;Lyt$a;)V

    invoke-virtual {v0, p1, v1}, Lqt;->e(Lcom/snapchat/android/model/chat/CashFeedItem;Lqt$a;)V

    .line 77
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 85
    iget-object v2, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, v2, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    sget-object v3, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v2, v3, :cond_0

    .line 87
    iget-object v2, p0, Lyt;->a:Lqx;

    iget-object v3, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v3, v3, Lcom/snapchat/android/model/CashTransaction;->mProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lqx;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 90
    iget-object v2, p0, Lyt;->a:Lqx;

    iget-object v3, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v3, v3, Lcom/snapchat/android/model/CashTransaction;->mProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lqx;->a(Ljava/lang/String;)Lre;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_0

    .line 92
    invoke-interface {v2, v0}, Lre;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)V

    goto :goto_0

    .line 97
    :cond_1
    return-void
.end method
