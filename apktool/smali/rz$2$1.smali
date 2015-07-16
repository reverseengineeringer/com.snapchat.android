.class final Lrz$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrz$2;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrz$2;


# direct methods
.method constructor <init>(Lrz$2;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lrz$2$1;->this$1:Lrz$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lsy;)V
    .locals 5
    .param p1    # Lsy;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lrz$2$1;->this$1:Lrz$2;

    iget-object v2, v2, Lrz$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, v2, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 166
    iget-object v0, p0, Lrz$2$1;->this$1:Lrz$2;

    iget-object v0, v0, Lrz$2;->val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->l()V

    .line 168
    const/4 v0, 0x0

    .line 169
    if-eqz p1, :cond_2

    .line 170
    iget-object v1, p1, Lsy;->blockers:Ltq;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lsy;->blockers:Ltq;

    invoke-virtual {v1}, Ltq;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v0, p1, Lsy;->blockers:Ltq;

    invoke-virtual {v0}, Ltq;->b()Ljava/util/List;

    move-result-object v0

    .line 174
    :cond_0
    iget-object v1, p1, Lsy;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    .line 175
    if-eqz v1, :cond_2

    .line 176
    iget-object v2, v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mState:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    iget-object v3, v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mCancellationReason:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v2, v3}, Ltd;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    .line 180
    iget-object v3, p0, Lrz$2$1;->this$1:Lrz$2;

    iget-object v3, v3, Lrz$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3, v2}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 181
    iget-object v3, v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mState:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    sget-object v4, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    if-ne v3, v4, :cond_2

    .line 182
    iget-object v0, v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mCancellationReason:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v0}, Ltd;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)V

    .line 184
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v2, v0, :cond_1

    .line 188
    iget-object v0, p0, Lrz$2$1;->this$1:Lrz$2;

    iget-object v0, v0, Lrz$2;->this$0:Lrz;

    invoke-static {v0}, Lrz;->d(Lrz;)V

    .line 200
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lrz$2$1;->this$1:Lrz$2;

    iget-object v0, v0, Lrz$2;->this$0:Lrz;

    invoke-static {v0}, Lrz;->e(Lrz;)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v1, p0, Lrz$2$1;->this$1:Lrz$2;

    iget-object v1, v1, Lrz$2;->this$0:Lrz;

    invoke-static {v1, v0}, Lrz;->c(Lrz;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Lsy;I)V
    .locals 4
    .param p1    # Lsy;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lrz$2$1;->this$1:Lrz$2;

    iget-object v3, v3, Lrz$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v3, v3, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 206
    iget-object v0, p0, Lrz$2$1;->this$1:Lrz$2;

    iget-object v0, v0, Lrz$2;->this$0:Lrz;

    invoke-static {v0, p2}, Ltd;->a(Lrl;I)Ljava/util/List;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lrz$2$1;->this$1:Lrz$2;

    iget-object v1, v1, Lrz$2;->this$0:Lrz;

    invoke-static {v1, v0}, Lrz;->d(Lrz;Ljava/util/List;)V

    .line 223
    :goto_0
    return-void

    .line 212
    :cond_0
    if-eqz p1, :cond_1

    .line 213
    iget-object v0, p1, Lsy;->type:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 216
    :goto_1
    iget-object v2, p0, Lrz$2$1;->this$1:Lrz$2;

    iget-object v2, v2, Lrz$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object v1, v2, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    .line 218
    iget-object v1, p0, Lrz$2$1;->this$1:Lrz$2;

    iget-object v1, v1, Lrz$2;->val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v1, v0, p2}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a(Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
