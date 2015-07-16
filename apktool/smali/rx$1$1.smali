.class final Lrx$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx$1;->a(Lrl;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx$1;


# direct methods
.method constructor <init>(Lrx$1;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lrx$1$1;->this$1:Lrx$1;

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
    const/4 v1, 0x0

    .line 115
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 117
    check-cast v0, Lst$b;

    .line 119
    iget-object v2, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v2, v2, Lrx$1;->this$0:Lrx;

    iget-object v2, v2, Lrx;->mCashCardManager:Lyn;

    iget-object v0, v0, Lst$b;->cardToken:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lyn;->a(Ljava/lang/String;)V

    .line 122
    iget-object v0, p1, Lsy;->blockers:Ltq;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lsy;->blockers:Ltq;

    invoke-virtual {v0}, Ltq;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p1, Lsy;->blockers:Ltq;

    invoke-virtual {v0}, Ltq;->b()Ljava/util/List;

    move-result-object v0

    .line 126
    :goto_0
    iget-object v1, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v1, v1, Lrx$1;->this$0:Lrx;

    invoke-static {v1}, Lrx;->a(Lrx;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lsy;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v1, v1, Lrx$1;->this$0:Lrx;

    invoke-static {v1}, Lrx;->a(Lrx;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    iget-object v2, p1, Lsy;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    iget-object v2, v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mState:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    iget-object v3, p1, Lsy;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    iget-object v3, v3, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mCancellationReason:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v2, v3}, Ltd;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v1, v1, Lrx$1;->this$0:Lrx;

    iget-object v1, v1, Lrx;->mSquareProvider:Ltd;

    invoke-virtual {v1}, Ltd;->a()V

    .line 136
    iget-object v1, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v1, v1, Lrx$1;->val$callback:Lrm;

    invoke-interface {v1}, Lrm;->a()V

    .line 137
    iget-object v1, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v1, v1, Lrx$1;->this$0:Lrx;

    invoke-static {v1, v0}, Lrx;->a(Lrx;Ljava/util/List;)V

    .line 141
    :goto_1
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v0, v0, Lrx$1;->val$callback:Lrm;

    invoke-static {v1}, Lrx;->a(Lcom/snapchat/android/api2/cash/square/data/ErrorType;)Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    move-result-object v1

    invoke-interface {v0, v1}, Lrm;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lsy;I)V
    .locals 6
    .param p1    # Lsy;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 146
    const/16 v0, 0x194

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v0, v0, Lrx$1;->this$0:Lrx;

    invoke-static {v0}, Lrx;->a(Lrx;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v0, v0, Lrx$1;->this$0:Lrx;

    invoke-static {v0}, Lrx;->b(Lrx;)Lcom/snapchat/android/model/CashTransaction;

    .line 151
    new-instance v0, Lst;

    iget-object v1, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v1, v1, Lrx$1;->val$pan:Ljava/lang/String;

    iget-object v2, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v2, v2, Lrx$1;->val$expiry:Ljava/lang/String;

    iget-object v3, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v3, v3, Lrx$1;->val$cvv:Ljava/lang/String;

    iget-object v4, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v4, v4, Lrx$1;->val$zip:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lst;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsx$a;)V

    invoke-virtual {v0}, Lst;->execute()V

    .line 168
    :goto_0
    return-void

    .line 152
    :cond_0
    const/16 v0, 0x191

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v0, v0, Lrx$1;->this$0:Lrx;

    invoke-static {v0}, Lrx;->c(Lrx;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v0, v0, Lrx$1;->this$0:Lrx;

    invoke-static {v0}, Lrx;->d(Lrx;)Z

    .line 156
    iget-object v0, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v0, v0, Lrx$1;->this$0:Lrx;

    iget-object v1, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v1, v1, Lrx$1;->val$pan:Ljava/lang/String;

    iget-object v2, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v2, v2, Lrx$1;->val$expiry:Ljava/lang/String;

    iget-object v3, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v3, v3, Lrx$1;->val$cvv:Ljava/lang/String;

    iget-object v4, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v4, v4, Lrx$1;->val$zip:Ljava/lang/String;

    iget-object v5, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v5, v5, Lrx$1;->val$callback:Lrm;

    invoke-static/range {v0 .. v5}, Lrx;->a(Lrx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrm;)V

    goto :goto_0

    .line 158
    :cond_1
    const/4 v0, 0x0

    .line 159
    const/16 v1, 0x1ad

    if-ne p2, v1, :cond_3

    .line 160
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->TOO_MANY_ATTEMPTS:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 166
    :cond_2
    :goto_1
    iget-object v1, p0, Lrx$1$1;->this$1:Lrx$1;

    iget-object v1, v1, Lrx$1;->val$callback:Lrm;

    invoke-static {v0}, Lrx;->a(Lcom/snapchat/android/api2/cash/square/data/ErrorType;)Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    move-result-object v0

    invoke-interface {v1, v0}, Lrm;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    goto :goto_0

    .line 161
    :cond_3
    if-nez p2, :cond_4

    .line 162
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->NETWORK_FAILURE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    goto :goto_1

    .line 163
    :cond_4
    if-eqz p1, :cond_2

    .line 164
    iget-object v0, p1, Lsy;->type:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    goto :goto_1
.end method
