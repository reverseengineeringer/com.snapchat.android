.class final Lrq$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrq$1;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrq$1;


# direct methods
.method constructor <init>(Lrq$1;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lrq$1$1;->this$1:Lrq$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lsi;)V
    .locals 4
    .param p1    # Lsi;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p1, :cond_1

    .line 58
    iget-object v1, p1, Lsi;->blockers:Lta;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lsi;->blockers:Lta;

    invoke-virtual {v1}, Lta;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v0, p1, Lsi;->blockers:Lta;

    invoke-virtual {v0}, Lta;->b()Ljava/util/List;

    move-result-object v0

    .line 62
    :cond_0
    iget-object v1, p0, Lrq$1$1;->this$1:Lrq$1;

    iget-object v1, v1, Lrq$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lsi;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lrq$1$1;->this$1:Lrq$1;

    iget-object v1, v1, Lrq$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, p1, Lsi;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    iget-object v2, v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mState:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    iget-object v3, p1, Lsi;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    iget-object v3, v3, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mCancellationReason:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v2, v3}, Lsn;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 68
    :cond_1
    iget-object v1, p0, Lrq$1$1;->this$1:Lrq$1;

    iget-object v1, v1, Lrq$1;->this$0:Lrq;

    invoke-static {v1, v0}, Lrq;->a(Lrq;Ljava/util/List;)V

    .line 69
    return-void
.end method

.method public final a(Lsi;I)V
    .locals 5
    .param p1    # Lsi;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 73
    const-string v0, "SQPhoneNumberBlocker"

    const-string v1, "CASH-LOG: FAILED resolve SQPhoneNumberBlocker statusCode[%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lrq$1$1;->this$1:Lrq$1;

    iget-object v0, v0, Lrq$1;->this$0:Lrq;

    invoke-static {v0}, Lrq;->b(Lrq;)V

    .line 75
    return-void
.end method
