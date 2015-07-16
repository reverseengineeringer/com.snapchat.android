.class final Lrz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrz;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrz;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lrz;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lrz$1;->this$0:Lrz;

    iput-object p2, p0, Lrz$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lsy;)V
    .locals 6
    .param p1    # Lsy;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lrz$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v3, v3, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 70
    const/4 v0, 0x0

    .line 72
    if-eqz p1, :cond_2

    .line 73
    iget-object v3, p1, Lsy;->blockers:Ltq;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lsy;->blockers:Ltq;

    invoke-virtual {v3}, Ltq;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    iget-object v0, p1, Lsy;->blockers:Ltq;

    invoke-virtual {v0}, Ltq;->b()Ljava/util/List;

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

    check-cast v0, Lrl;

    .line 76
    invoke-virtual {v0}, Lrl;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    move-object v1, v3

    .line 83
    :goto_0
    iget-object v2, p1, Lsy;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    .line 84
    if-eqz v2, :cond_3

    .line 85
    iget-object v3, v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mState:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    iget-object v4, v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mCancellationReason:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v3, v4}, Ltd;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v3

    .line 89
    iget-object v4, p0, Lrz$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4, v3}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 90
    iget-object v4, v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mState:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    sget-object v5, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    if-ne v4, v5, :cond_3

    .line 91
    iget-object v0, v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mCancellationReason:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v0}, Ltd;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)V

    .line 93
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v0, :cond_1

    .line 97
    iget-object v0, p0, Lrz$1;->this$0:Lrz;

    invoke-static {v0}, Lrz;->a(Lrz;)V

    .line 111
    :goto_1
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lrz$1;->this$0:Lrz;

    invoke-static {v0}, Lrz;->b(Lrz;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    move v0, v2

    .line 110
    :cond_3
    iget-object v2, p0, Lrz$1;->this$0:Lrz;

    invoke-static {v2, v1, v0}, Lrz;->a(Lrz;Ljava/util/List;Z)V

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

.method public final a(Lsy;I)V
    .locals 5
    .param p1    # Lsy;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lrz$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, v2, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 119
    iget-object v1, p0, Lrz$1;->this$0:Lrz;

    invoke-static {v1, p2}, Ltd;->a(Lrl;I)Ljava/util/List;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    .line 122
    iget-object v0, p0, Lrz$1;->this$0:Lrz;

    invoke-static {v0, v1}, Lrz;->a(Lrz;Ljava/util/List;)V

    .line 142
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lrz$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object v0, v1, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    .line 126
    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p1, Lsy;->type:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 130
    :cond_1
    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->isNonRecoverableError(Lcom/snapchat/android/api2/cash/square/data/ErrorType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lrz$1;->this$0:Lrz;

    new-array v1, v4, [Lrl;

    new-instance v2, Lsj;

    invoke-direct {v2}, Lsj;-><init>()V

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lrz;->b(Lrz;Ljava/util/List;)V

    goto :goto_0

    .line 135
    :cond_2
    const-string v0, "SQUARE_SECURITY_CODE_VERIFICATION_FAILED"

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;I)V

    .line 137
    const v0, 0x7f0c01aa

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lqw;->a(I[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lrz$1;->this$0:Lrz;

    invoke-static {v0}, Lrz;->c(Lrz;)V

    goto :goto_0
.end method
