.class final Lrs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrs;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrs;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lrs;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lrs$1;->this$0:Lrs;

    iput-object p2, p0, Lrs$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lrs$1;->this$0:Lrs;

    invoke-static {v0, p1}, Lsn;->a(Lqv;I)Ljava/util/List;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lrs$1;->this$0:Lrs;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lrs;->b(Ljava/util/List;Z)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lrs$1;->this$0:Lrs;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lrs;->b(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/api2/cash/square/data/CashPayment;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/api2/cash/square/data/CashPayment;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 25
    iget-object v0, p0, Lrs$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, p1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mState:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    iget-object v2, p1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mCancellationReason:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v1, v2}, Lsn;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 28
    const/4 v0, 0x0

    .line 29
    iget-object v1, p1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mBlockers:Lta;

    .line 30
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v1}, Lta;->b()Ljava/util/List;

    move-result-object v0

    .line 34
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 35
    iget-object v1, p0, Lrs$1;->this$0:Lrs;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lrs;->a(Ljava/util/List;Z)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lrs$1;->this$0:Lrs;

    invoke-virtual {v0}, Lrs;->a()V

    goto :goto_0
.end method
