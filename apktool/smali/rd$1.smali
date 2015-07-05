.class final Lrd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrd;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrd;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lrd;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lrd$1;->this$0:Lrd;

    iput-object p2, p0, Lrd$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

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
    .line 37
    const/4 v0, 0x0

    .line 38
    if-eqz p1, :cond_1

    .line 39
    iget-object v1, p1, Lsi;->blockers:Lta;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lsi;->blockers:Lta;

    invoke-virtual {v1}, Lta;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v0, p1, Lsi;->blockers:Lta;

    invoke-virtual {v0}, Lta;->b()Ljava/util/List;

    move-result-object v0

    .line 43
    :cond_0
    iget-object v1, p0, Lrd$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lsi;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lrd$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, p1, Lsi;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    iget-object v2, v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mState:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    iget-object v3, p1, Lsi;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    iget-object v3, v3, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->mCancellationReason:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v2, v3}, Lsn;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 49
    :cond_1
    invoke-static {}, Lajx;->ak()V

    .line 50
    iget-object v1, p0, Lrd$1;->this$0:Lrd;

    invoke-static {v1, v0}, Lrd;->a(Lrd;Ljava/util/List;)V

    .line 51
    return-void
.end method

.method public final a(Lsi;I)V
    .locals 2
    .param p1    # Lsi;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 54
    iget-object v0, p0, Lrd$1;->this$0:Lrd;

    invoke-static {v0, p2}, Lsn;->a(Lqv;I)Ljava/util/List;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lrd$1;->this$0:Lrd;

    invoke-static {v1, v0}, Lrd;->b(Lrd;Ljava/util/List;)V

    .line 69
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lrd$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lrd$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    const-string v0, "SQUARE_ACCEPT_TERMS_FAILED"

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;I)V

    .line 62
    const v0, 0x7f0c01aa

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lqg;->a(I[Ljava/lang/Object;)V

    .line 67
    :cond_1
    :goto_1
    iget-object v0, p0, Lrd$1;->this$0:Lrd;

    invoke-static {v0}, Lrd;->a(Lrd;)V

    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "SQUARE_ACCEPT_TERMS_FAILED"

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Ljava/lang/String;I)V

    goto :goto_1
.end method
