.class final Lsg$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg$1;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsg$1;


# direct methods
.method constructor <init>(Lsg$1;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lsg$1$1;->this$1:Lsg$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lsy;)V
    .locals 4
    .param p1    # Lsy;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p1, :cond_1

    .line 58
    iget-object v1, p1, Lsy;->blockers:Ltq;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lsy;->blockers:Ltq;

    invoke-virtual {v1}, Ltq;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v0, p1, Lsy;->blockers:Ltq;

    invoke-virtual {v0}, Ltq;->b()Ljava/util/List;

    move-result-object v0

    .line 62
    :cond_0
    iget-object v1, p0, Lsg$1$1;->this$1:Lsg$1;

    iget-object v1, v1, Lsg$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lsy;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lsg$1$1;->this$1:Lsg$1;

    iget-object v1, v1, Lsg$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, p1, Lsy;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    iget-object v2, v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mState:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    iget-object v3, p1, Lsy;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    iget-object v3, v3, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mCancellationReason:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v2, v3}, Ltd;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 68
    :cond_1
    iget-object v1, p0, Lsg$1$1;->this$1:Lsg$1;

    iget-object v1, v1, Lsg$1;->this$0:Lsg;

    invoke-static {v1, v0}, Lsg;->a(Lsg;Ljava/util/List;)V

    .line 69
    return-void
.end method

.method public final a(Lsy;I)V
    .locals 3
    .param p1    # Lsy;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 74
    iget-object v0, p0, Lsg$1$1;->this$1:Lsg$1;

    iget-object v0, v0, Lsg$1;->this$0:Lsg;

    invoke-static {v0}, Lsg;->b(Lsg;)V

    .line 75
    return-void
.end method
