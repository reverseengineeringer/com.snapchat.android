.class public Lcom/snapchat/android/model/chat/CashFeedItem;
.super Lcom/snapchat/android/model/chat/StatefulChatFeedItem;
.source "SourceFile"

# interfaces
.implements Lakn;
.implements Lako;
.implements Lqv$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/chat/CashFeedItem$3;,
        Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;
    }
.end annotation


# static fields
.field protected static final MAX_NUM_OF_RETRIES_FOR_FAILURES:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mBlockerPriorityQueue:Ljava/util/PriorityQueue;
    .annotation build Lcgb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lqv;",
            ">;"
        }
    .end annotation
.end field

.field public mCanShowSparkle:Z

.field public final mCashTransaction:Lcom/snapchat/android/model/CashTransaction;
    .annotation build Lcgb;
    .end annotation
.end field

.field private mContinueForwardListener:Lqd$a;
    .annotation build Lcgc;
    .end annotation
.end field

.field private mHasSeenRain:Z

.field public mHasSparkled:Z

.field public mIterToken:Ljava/lang/String;

.field private mNumberOfFailedRetryAttempts:I

.field protected mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

.field public mSendingClientId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p1, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    iget-object v1, p1, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    invoke-static {v1}, Latv;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 50
    new-instance v0, Lavg;

    invoke-direct {v0}, Lavg;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    .line 54
    iput v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mNumberOfFailedRetryAttempts:I

    .line 55
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mHasSeenRain:Z

    .line 56
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mHasSparkled:Z

    .line 57
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCanShowSparkle:Z

    .line 70
    iget-boolean v0, p1, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mSendingClientId:Ljava/lang/String;

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 74
    iget-boolean v0, p1, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    if-nez v0, :cond_3

    .line 75
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->INITIATED:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    .line 76
    invoke-static {p0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p1, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

    if-nez v0, :cond_1

    .line 82
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 93
    :goto_0
    return-void

    .line 84
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    goto :goto_0

    .line 87
    :cond_2
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    goto :goto_0

    .line 90
    :cond_3
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->PRE_CONFIRMATION:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    .line 91
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/CashTransaction;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    return-object v0
.end method

.method private a(Ljava/lang/Boolean;Ljava/lang/Integer;Lqt$b;)Lqt;
    .locals 6
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 805
    new-instance v0, Lqt;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->X()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lqt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Lqt$b;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 459
    iput-object p2, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 460
    invoke-static {p0}, Latv;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Ljava/util/Collection;)V

    .line 461
    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 697
    if-eqz p1, :cond_0

    .line 698
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] ADDING NEW blockers %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v3, v3, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    .line 705
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] CONTINUING blocker resolution continueResolution[%s]"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v3, v3, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    invoke-direct {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->t()V

    .line 718
    :goto_0
    return-void

    .line 709
    :cond_2
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] FAILING because continueResolution is false and blockers remain"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v3, v3, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    invoke-static {p0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 712
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Landroid/content/Context;Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 716
    :goto_1
    invoke-direct {p0, v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->c(Z)V

    goto :goto_0

    .line 714
    :cond_3
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    goto :goto_1
.end method

.method private b(Z)I
    .locals 5

    .prologue
    .line 563
    sget-object v1, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v2, "CASH-LOG: %s cash id[%s] sender[%s] recipient[%s]"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const-string v0, "SAVING"

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v4, v4, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    invoke-static {p0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 570
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget v1, v0, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    .line 571
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v0, v0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    if-ne v0, p1, :cond_2

    :cond_0
    move v0, v1

    .line 634
    :goto_1
    return v0

    .line 563
    :cond_1
    const-string v0, "UNSAVING"

    goto :goto_0

    .line 575
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 576
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iput-boolean p1, v2, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    .line 577
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iput v0, v2, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    .line 578
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/model/chat/CashFeedItem$1;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem$1;-><init>(Lcom/snapchat/android/model/chat/CashFeedItem;ZII)V

    invoke-direct {p0, v2, v3, v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/lang/Boolean;Ljava/lang/Integer;Lqt$b;)Lqt;

    move-result-object v1

    invoke-virtual {v1}, Lqt;->f()V

    goto :goto_1

    .line 602
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget v1, v0, Lcom/snapchat/android/model/CashTransaction;->mRecipientSaveVersion:I

    .line 603
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v0, v0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

    if-ne v0, p1, :cond_5

    :cond_4
    move v0, v1

    .line 605
    goto :goto_1

    .line 607
    :cond_5
    add-int/lit8 v0, v1, 0x1

    .line 608
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iput-boolean p1, v2, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

    .line 609
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iput v0, v2, Lcom/snapchat/android/model/CashTransaction;->mRecipientSaveVersion:I

    .line 610
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/model/chat/CashFeedItem$2;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem$2;-><init>(Lcom/snapchat/android/model/chat/CashFeedItem;ZII)V

    invoke-direct {p0, v2, v3, v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/lang/Boolean;Ljava/lang/Integer;Lqt$b;)Lqt;

    move-result-object v1

    invoke-virtual {v1}, Lqt;->f()V

    goto :goto_1
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mContinueForwardListener:Lqd$a;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mContinueForwardListener:Lqd$a;

    .line 767
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mContinueForwardListener:Lqd$a;

    .line 768
    if-eqz p1, :cond_1

    .line 769
    invoke-interface {v0}, Lqd$a;->a()V

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    invoke-interface {v0}, Lqd$a;->b()V

    goto :goto_0
.end method

.method static synthetic o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private r()Z
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 377
    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->RECIPIENT_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Z
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->EXPIRED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()V
    .locals 9

    .prologue
    const/4 v3, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 728
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqv;

    .line 730
    sget-object v1, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v2, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] continueBlockerResolution attempting to resolve next blocker %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v4, v4, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    iput-object p0, v0, Lqv;->mListener:Lqv$a;

    .line 733
    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0, v1}, Lqv;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 760
    :goto_0
    return-void

    .line 738
    :cond_0
    invoke-static {p0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$3;->$SwitchMap$com$snapchat$android$model$chat$CashFeedItem$BlockerResolutionState:[I

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 752
    :goto_1
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] RESOLUTION STATE set to %s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v3, v3, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    :goto_2
    invoke-direct {p0, v5}, Lcom/snapchat/android/model/chat/CashFeedItem;->c(Z)V

    goto :goto_0

    .line 741
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->PRE_INITIATION:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    goto :goto_1

    .line 744
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->INITIATING:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    goto :goto_1

    .line 747
    :pswitch_2
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->INITIATED:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    .line 749
    :pswitch_3
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Landroid/content/Context;Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    goto :goto_1

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 756
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Landroid/content/Context;Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    goto :goto_2

    .line 739
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final W()J
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-wide v0, v0, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    return-wide v0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 6
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 409
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 410
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->O()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->FAILED:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 419
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v0

    return v0

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->N()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->SENDING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Z

    move-result v1

    if-nez v1, :cond_3

    .line 415
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0

    .line 416
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-wide v4, v1, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 417
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_SENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    const v1, 0x7f02002c

    const v0, 0x7f02002a

    .line 426
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    const v0, 0x7f020035

    .line 455
    :cond_0
    :goto_0
    new-instance v1, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    invoke-direct {v1, v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    return-object v1

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->O()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    const v0, 0x7f020127

    goto :goto_0

    .line 430
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->ao()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 431
    invoke-static {p0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->s()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->r()Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    const v0, 0x7f020037

    goto :goto_0

    .line 440
    :cond_3
    invoke-direct {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->r()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 441
    goto :goto_0

    .line 442
    :cond_4
    invoke-static {p0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 443
    invoke-direct {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 444
    goto :goto_0

    .line 446
    :cond_5
    const v0, 0x7f02003b

    goto :goto_0

    .line 449
    :cond_6
    invoke-direct {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->s()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    const v0, 0x7f02002b

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f0c0290

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 388
    invoke-static {p0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    new-array v0, v1, [Ljava/lang/Object;

    const v1, 0x7f0c012b

    invoke-static {v2, v1, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 402
    :goto_0
    return-object v0

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    new-array v0, v1, [Ljava/lang/Object;

    const v1, 0x7f0c0129

    invoke-static {v2, v1, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->s()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 394
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 396
    :cond_3
    new-array v0, v1, [Ljava/lang/Object;

    const v1, 0x7f0c021e

    invoke-static {v2, v1, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_4
    invoke-direct {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Z

    move-result v0

    if-nez v0, :cond_5

    .line 400
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_5
    invoke-super {p0}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lqv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 642
    return-void
.end method

.method public final a(Lqd$a;)V
    .locals 5
    .param p1    # Lqd$a;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 721
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] STARTING blocker resolution"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v4, v4, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    iput-object p1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mContinueForwardListener:Lqd$a;

    .line 724
    invoke-direct {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->t()V

    .line 725
    return-void
.end method

.method public final a(Lqv;)V
    .locals 6
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 656
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] onDismiss %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v3, v3, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    invoke-static {p0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Landroid/content/Context;Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 665
    :goto_0
    invoke-direct {p0, v5}, Lcom/snapchat/android/model/chat/CashFeedItem;->c(Z)V

    .line 666
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 667
    return-void

    .line 663
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    goto :goto_0
.end method

.method public final a(Lqv;Ljava/util/List;Z)V
    .locals 5
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqv;",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 647
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] onResolve REMOVING blocker %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v4, v4, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 651
    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/List;Z)V

    .line 652
    return-void
.end method

.method public final a(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 169
    invoke-static {p0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iput-boolean p1, v1, Lcom/snapchat/android/model/CashTransaction;->mIsViewedBySender:Z

    .line 178
    :goto_0
    return v0

    .line 173
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    sget-object v2, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v1, v2, :cond_2

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iput-boolean p1, v1, Lcom/snapchat/android/model/CashTransaction;->mIsViewedByRecipient:Z

    goto :goto_0

    .line 178
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final al()Ljava/lang/String;
    .locals 3
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mMessage:Ljava/lang/String;

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lxu;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :cond_0
    return-object v0
.end method

.method public final am()Z
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method public final ao()Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 193
    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v0, v1, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 206
    :goto_0
    return v0

    .line 199
    :cond_0
    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->EXPIRED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->RECIPIENT_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v0, v1, :cond_2

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Z

    move-result v0

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v0, v0, Lcom/snapchat/android/model/CashTransaction;->mIsViewedByRecipient:Z

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lqv;)V
    .locals 6
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 686
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] onHardFailure %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v3, v3, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Landroid/content/Context;Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 689
    invoke-direct {p0, v5}, Lcom/snapchat/android/model/chat/CashFeedItem;->c(Z)V

    .line 690
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 691
    return-void
.end method

.method public final b(Lqv;Ljava/util/List;Z)V
    .locals 7
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqv;",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x0

    .line 671
    sget-object v1, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v2, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] onFailure %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v4, v4, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    if-eqz p3, :cond_0

    .line 674
    iget v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mNumberOfFailedRetryAttempts:I

    if-lt v1, v6, :cond_1

    .line 676
    iput v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mNumberOfFailedRetryAttempts:I

    move p3, v0

    .line 681
    :cond_0
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/List;Z)V

    .line 682
    return-void

    .line 678
    :cond_1
    iget v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mNumberOfFailedRetryAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mNumberOfFailedRetryAttempts:I

    goto :goto_0
.end method

.method public final c(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-wide v0, v0, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    return-wide v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->O()Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 36
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-wide v0, v0, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lbfu;->a(JJ)I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Z()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->aa()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 524
    instance-of v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v0, :cond_1

    .line 525
    check-cast p1, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 526
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mSendingClientId:Ljava/lang/String;

    .line 527
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mSendingClientId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const/4 v0, 0x1

    .line 532
    :goto_0
    return v0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    iget-object v1, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 532
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v0, v0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v0, v0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

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
    .line 148
    invoke-static {p0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v0, v0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    .line 151
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v0, v0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 182
    invoke-static {p0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v0, v0, Lcom/snapchat/android/model/CashTransaction;->mIsViewedBySender:Z

    .line 185
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v0, v0, Lcom/snapchat/android/model/CashTransaction;->mIsViewedByRecipient:Z

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mIterToken:Ljava/lang/String;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->b(Z)I

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->b(Z)I

    move-result v0

    return v0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 781
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mNumberOfFailedRetryAttempts:I

    .line 782
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 783
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->INITIATING:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    .line 784
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 785
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 789
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mMessage:Ljava/lang/String;

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CashFeedItem{mId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, v2, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSenderUsername="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, v2, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRecipientUsername="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, v2, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSendReceiveStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransactionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResolutionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
