.class final Lsn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lta;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsn;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsn;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lsn;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lsn$1;->this$0:Lsn;

    iput-object p2, p0, Lsn$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lsn$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 55
    iget-object v0, p0, Lsn$1;->this$0:Lsn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lsn;->a(Ljava/util/List;Z)V

    .line 56
    return-void
.end method

.method public final a(Lcom/snapchat/android/api2/cash/square/data/CashPayment;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/api2/cash/square/data/CashPayment;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 29
    const/4 v0, 0x0

    .line 30
    iget-object v1, p1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mBlockers:Ltq;

    .line 31
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v1}, Ltq;->b()Ljava/util/List;

    move-result-object v0

    .line 44
    :cond_0
    iget-object v1, p0, Lsn$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, p1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mState:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    iget-object v3, p1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mCancellationReason:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v2, v3}, Ltd;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 46
    iget-object v1, p0, Lsn$1;->this$0:Lsn;

    invoke-virtual {v1, v0, v4}, Lsn;->a(Ljava/util/List;Z)V

    .line 47
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p0, Lsn$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, v2, Lcom/snapchat/android/model/CashTransaction;->mConversationId:Ljava/lang/String;

    iget-object v3, p0, Lsn$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v3, v3, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 49
    return-void
.end method
