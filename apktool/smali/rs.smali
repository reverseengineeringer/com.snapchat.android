.class public final Lrs;
.super Lqv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lqv;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lqv;->a()V

    .line 72
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 21
    iget-object v0, p1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    new-instance v1, Lrs$1;

    invoke-direct {v1, p0, p1}, Lrs$1;-><init>(Lrs;Lcom/snapchat/android/model/CashTransaction;)V

    new-instance v2, Lsg;

    invoke-direct {v2, v0, v1}, Lsg;-><init>(Ljava/lang/String;Lsk;)V

    invoke-virtual {v2}, Lsg;->f()V

    .line 54
    return-void
.end method

.method protected final a(Ljava/util/List;Z)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lqv;->a(Ljava/util/List;Z)V

    .line 60
    return-void
.end method

.method protected final b(Ljava/util/List;Z)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lqv;->b(Ljava/util/List;Z)V

    .line 66
    return-void
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_RETRIEVE_RECEIVING_CASH_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
