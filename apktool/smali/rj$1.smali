.class final Lrj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrj;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrj;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lrj;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lrj$1;->this$0:Lrj;

    iput-object p2, p0, Lrj$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lsi;)V
    .locals 6
    .param p1    # Lsi;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    const-string v0, "SQConfirmBlocker"

    const-string v3, "CASH-LOG: ConfirmPaymentTask SUCCEEDED id[%s]"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lrj$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v5, v5, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x0

    .line 72
    if-eqz p1, :cond_2

    .line 73
    iget-object v3, p1, Lsi;->blockers:Lta;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lsi;->blockers:Lta;

    invoke-virtual {v3}, Lta;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    iget-object v0, p1, Lsi;->blockers:Lta;

    invoke-virtual {v0}, Lta;->b()Ljava/util/List;

    move-result-object v3

    .line 75
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqv;

    .line 76
    invoke-virtual {v0}, Lqv;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    move-object v1, v3

    .line 83
    :goto_0
    iget-object v2, p1, Lsi;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    .line 84
    if-eqz v2, :cond_3

    .line 85
    iget-object v3, v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mState:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    iget-object v4, v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mCancellationReason:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v3, v4}, Lsn;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v3

    .line 89
    iget-object v4, p0, Lrj$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4, v3}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 90
    iget-object v4, v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mState:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    sget-object v5, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    if-ne v4, v5, :cond_3

    .line 91
    iget-object v0, v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mCancellationReason:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v0}, Lsn;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)V

    .line 93
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v0, :cond_1

    .line 97
    iget-object v0, p0, Lrj$1;->this$0:Lrj;

    invoke-static {v0}, Lrj;->a(Lrj;)V

    .line 111
    :goto_1
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lrj$1;->this$0:Lrj;

    invoke-static {v0}, Lrj;->b(Lrj;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    move v0, v2

    .line 110
    :cond_3
    iget-object v2, p0, Lrj$1;->this$0:Lrj;

    invoke-static {v2, v1, v0}, Lrj;->a(Lrj;Ljava/util/List;Z)V

    goto :goto_1

    :cond_4
    move v0, v2

    move-object v1, v3

    goto :goto_0

    :cond_5
    move-object v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public final a(Lsi;I)V
    .locals 7
    .param p1    # Lsi;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    const-string v1, "SQConfirmBlocker"

    const-string v2, "CASH-LOG: ConfirmPaymentTask FAILED id[%s] statusCode[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lrj$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v4, v4, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v1, p0, Lrj$1;->this$0:Lrj;

    invoke-static {v1, p2}, Lsn;->a(Lqv;I)Ljava/util/List;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    .line 122
    iget-object v0, p0, Lrj$1;->this$0:Lrj;

    invoke-static {v0, v1}, Lrj;->a(Lrj;Ljava/util/List;)V

    .line 142
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lrj$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object v0, v1, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    .line 126
    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p1, Lsi;->type:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 130
    :cond_1
    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->isNonRecoverableError(Lcom/snapchat/android/api2/cash/square/data/ErrorType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lrj$1;->this$0:Lrj;

    new-array v1, v6, [Lqv;

    new-instance v2, Lrt;

    invoke-direct {v2}, Lrt;-><init>()V

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lrj;->b(Lrj;Ljava/util/List;)V

    goto :goto_0

    .line 135
    :cond_2
    const-string v0, "SQUARE_SECURITY_CODE_VERIFICATION_FAILED"

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;I)V

    .line 137
    const v0, 0x7f0c01aa

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lqg;->a(I[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lrj$1;->this$0:Lrj;

    invoke-static {v0}, Lrj;->c(Lrj;)V

    goto :goto_0
.end method
