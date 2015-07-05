.class final Lrh$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrh$1;->a(Lqv;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrh$1;


# direct methods
.method constructor <init>(Lrh$1;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lrh$1$1;->this$1:Lrh$1;

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
    const/4 v1, 0x0

    .line 115
    const-string v0, "SQCardFormBlocker"

    const-string v2, "CASH-LOG: SUCCESS resolve SQCardFormBlocker"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 117
    check-cast v0, Lsd$b;

    .line 119
    iget-object v2, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v2, v2, Lrh$1;->this$0:Lrh;

    iget-object v2, v2, Lrh;->mCashCardManager:Lxr;

    iget-object v0, v0, Lsd$b;->cardToken:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lxr;->a(Ljava/lang/String;)V

    .line 122
    iget-object v0, p1, Lsi;->blockers:Lta;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lsi;->blockers:Lta;

    invoke-virtual {v0}, Lta;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p1, Lsi;->blockers:Lta;

    invoke-virtual {v0}, Lta;->b()Ljava/util/List;

    move-result-object v0

    .line 126
    :goto_0
    iget-object v1, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v1, v1, Lrh$1;->this$0:Lrh;

    invoke-static {v1}, Lrh;->a(Lrh;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lsi;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v1, v1, Lrh$1;->this$0:Lrh;

    invoke-static {v1}, Lrh;->a(Lrh;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    iget-object v2, p1, Lsi;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    iget-object v2, v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mState:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    iget-object v3, p1, Lsi;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    iget-object v3, v3, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mCancellationReason:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v2, v3}, Lsn;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v1, v1, Lrh$1;->this$0:Lrh;

    iget-object v1, v1, Lrh;->mSquareProvider:Lsn;

    invoke-virtual {v1}, Lsn;->a()V

    .line 136
    iget-object v1, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v1, v1, Lrh$1;->val$callback:Lqw;

    invoke-interface {v1}, Lqw;->a()V

    .line 137
    iget-object v1, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v1, v1, Lrh$1;->this$0:Lrh;

    invoke-static {v1, v0}, Lrh;->a(Lrh;Ljava/util/List;)V

    .line 141
    :goto_1
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v0, v0, Lrh$1;->val$callback:Lqw;

    invoke-static {v1}, Lrh;->a(Lcom/snapchat/android/api2/cash/square/data/ErrorType;)Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    move-result-object v1

    invoke-interface {v0, v1}, Lqw;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lsi;I)V
    .locals 6
    .param p1    # Lsi;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 145
    const-string v0, "SQCardFormBlocker"

    const-string v1, "CASH-LOG: FAILED resolve SQCardFormBlocker statusCode[%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    const/16 v0, 0x194

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v0, v0, Lrh$1;->this$0:Lrh;

    invoke-static {v0}, Lrh;->a(Lrh;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v0, v0, Lrh$1;->this$0:Lrh;

    invoke-static {v0}, Lrh;->b(Lrh;)Lcom/snapchat/android/model/CashTransaction;

    .line 151
    new-instance v0, Lsd;

    iget-object v1, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v1, v1, Lrh$1;->val$pan:Ljava/lang/String;

    iget-object v2, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v2, v2, Lrh$1;->val$expiry:Ljava/lang/String;

    iget-object v3, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v3, v3, Lrh$1;->val$cvv:Ljava/lang/String;

    iget-object v4, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v4, v4, Lrh$1;->val$zip:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lsd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsh$a;)V

    invoke-virtual {v0}, Lsd;->f()V

    .line 168
    :goto_0
    return-void

    .line 152
    :cond_0
    const/16 v0, 0x191

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v0, v0, Lrh$1;->this$0:Lrh;

    invoke-static {v0}, Lrh;->c(Lrh;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v0, v0, Lrh$1;->this$0:Lrh;

    invoke-static {v0}, Lrh;->d(Lrh;)Z

    .line 156
    iget-object v0, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v0, v0, Lrh$1;->this$0:Lrh;

    iget-object v1, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v1, v1, Lrh$1;->val$pan:Ljava/lang/String;

    iget-object v2, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v2, v2, Lrh$1;->val$expiry:Ljava/lang/String;

    iget-object v3, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v3, v3, Lrh$1;->val$cvv:Ljava/lang/String;

    iget-object v4, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v4, v4, Lrh$1;->val$zip:Ljava/lang/String;

    iget-object v5, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v5, v5, Lrh$1;->val$callback:Lqw;

    invoke-static/range {v0 .. v5}, Lrh;->a(Lrh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lqw;)V

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
    iget-object v1, p0, Lrh$1$1;->this$1:Lrh$1;

    iget-object v1, v1, Lrh$1;->val$callback:Lqw;

    invoke-static {v0}, Lrh;->a(Lcom/snapchat/android/api2/cash/square/data/ErrorType;)Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    move-result-object v0

    invoke-interface {v1, v0}, Lqw;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

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
    iget-object v0, p1, Lsi;->type:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    goto :goto_1
.end method
