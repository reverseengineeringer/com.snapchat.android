.class final Lrj$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrj$2;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrj$2;


# direct methods
.method constructor <init>(Lrj$2;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lrj$2$1;->this$1:Lrj$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lsi;)V
    .locals 5
    .param p1    # Lsi;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 164
    const-string v0, "SQConfirmBlocker"

    const-string v1, "CASH-LOG: ConfirmPaymentTask SUCCEEDED id[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lrj$2$1;->this$1:Lrj$2;

    iget-object v4, v4, Lrj$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v4, v4, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lrj$2$1;->this$1:Lrj$2;

    iget-object v0, v0, Lrj$2;->val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->l()V

    .line 168
    const/4 v0, 0x0

    .line 169
    if-eqz p1, :cond_2

    .line 170
    iget-object v1, p1, Lsi;->blockers:Lta;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lsi;->blockers:Lta;

    invoke-virtual {v1}, Lta;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v0, p1, Lsi;->blockers:Lta;

    invoke-virtual {v0}, Lta;->b()Ljava/util/List;

    move-result-object v0

    .line 174
    :cond_0
    iget-object v1, p1, Lsi;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    .line 175
    if-eqz v1, :cond_2

    .line 176
    iget-object v2, v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mState:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    iget-object v3, v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mCancellationReason:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v2, v3}, Lsn;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    .line 180
    iget-object v3, p0, Lrj$2$1;->this$1:Lrj$2;

    iget-object v3, v3, Lrj$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3, v2}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 181
    iget-object v3, v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mState:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    sget-object v4, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    if-ne v3, v4, :cond_2

    .line 182
    iget-object v0, v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mCancellationReason:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v0}, Lsn;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)V

    .line 184
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v2, v0, :cond_1

    .line 188
    iget-object v0, p0, Lrj$2$1;->this$1:Lrj$2;

    iget-object v0, v0, Lrj$2;->this$0:Lrj;

    invoke-static {v0}, Lrj;->d(Lrj;)V

    .line 200
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lrj$2$1;->this$1:Lrj$2;

    iget-object v0, v0, Lrj$2;->this$0:Lrj;

    invoke-static {v0}, Lrj;->e(Lrj;)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v1, p0, Lrj$2$1;->this$1:Lrj$2;

    iget-object v1, v1, Lrj$2;->this$0:Lrj;

    invoke-static {v1, v0}, Lrj;->c(Lrj;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Lsi;I)V
    .locals 6
    .param p1    # Lsi;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 203
    const-string v0, "SQConfirmBlocker"

    const-string v2, "CASH-LOG: ConfirmPaymentTask FAILED id[%s] statusCode[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lrj$2$1;->this$1:Lrj$2;

    iget-object v5, v5, Lrj$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v5, v5, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lrj$2$1;->this$1:Lrj$2;

    iget-object v0, v0, Lrj$2;->this$0:Lrj;

    invoke-static {v0, p2}, Lsn;->a(Lqv;I)Ljava/util/List;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lrj$2$1;->this$1:Lrj$2;

    iget-object v1, v1, Lrj$2;->this$0:Lrj;

    invoke-static {v1, v0}, Lrj;->d(Lrj;Ljava/util/List;)V

    .line 223
    :goto_0
    return-void

    .line 212
    :cond_0
    if-eqz p1, :cond_1

    .line 213
    iget-object v0, p1, Lsi;->type:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 216
    :goto_1
    iget-object v2, p0, Lrj$2$1;->this$1:Lrj$2;

    iget-object v2, v2, Lrj$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object v1, v2, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    .line 218
    iget-object v1, p0, Lrj$2$1;->this$1:Lrj$2;

    iget-object v1, v1, Lrj$2;->val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v1, v0, p2}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a(Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
