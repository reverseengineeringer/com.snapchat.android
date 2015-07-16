.class final Lrr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrr;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrr;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lrr;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lrr$1;->this$0:Lrr;

    iput-object p2, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;I)V
    .locals 3
    .param p1    # Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, v2, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 67
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-static {v0, p1}, Lqw;->a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)V

    .line 70
    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->INVALID_AMOUNT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->SERVICE_NOT_AVAILABLE_TO_RECIPIENT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-ne p1, v0, :cond_2

    .line 72
    :cond_0
    iget-object v0, p0, Lrr$1;->this$0:Lrr;

    invoke-static {v0}, Lrr;->b(Lrr;)V

    .line 78
    :goto_0
    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->SERVICE_NOT_AVAILABLE_TO_RECIPIENT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-ne p1, v0, :cond_1

    .line 79
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    iget-object v1, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lakp;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    iput-object p1, v0, Lcom/snapchat/android/model/Friend;->mCashEligibility:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    .line 87
    :cond_1
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lrr$1;->this$0:Lrr;

    invoke-static {v0}, Lrr;->c(Lrr;)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload;)V
    .locals 7
    .param p1    # Lcom/snapchat/android/api2/cash/ScCashResponsePayload;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 41
    check-cast p1, Lrk$b;

    .line 42
    iget-object v0, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, p1, Lrk$b;->transactionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, p1, Lrk$b;->recipientId:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mCashRecipientId:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, p1, Lrk$b;->senderId:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mCashSenderId:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-wide v2, p1, Lrk$b;->createdAt:J

    iput-wide v2, v0, Lcom/snapchat/android/model/CashTransaction;->mCreatedTimestamp:J

    .line 46
    iget-object v0, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-wide v2, p1, Lrk$b;->createdAt:J

    iput-wide v2, v0, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    .line 47
    iget-object v0, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, p1, Lrk$b;->signature:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mSignature:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iput-boolean v6, v0, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    .line 50
    iget-object v0, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mConversationId:Ljava/lang/String;

    invoke-static {v0}, Lzi;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    iget-wide v4, p1, Lrk$b;->createdAt:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 52
    iget-wide v2, p1, Lrk$b;->createdAt:J

    iput-wide v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    .line 55
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    aput-object v1, v0, v6

    const/4 v1, 0x1

    iget-object v2, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lrr$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, v2, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 59
    iget-object v0, p0, Lrr$1;->this$0:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)V

    .line 60
    return-void
.end method
