.class public final Lrx;
.super Lqv;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQUpdateReceivedCashPaymentBlocker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lqv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 25
    iget-object v0, p1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    new-instance v1, Lrx$1;

    invoke-direct {v1, p0, p1}, Lrx$1;-><init>(Lrx;Lcom/snapchat/android/model/CashTransaction;)V

    new-instance v2, Lsg;

    invoke-direct {v2, v0, v1}, Lsg;-><init>(Ljava/lang/String;Lsk;)V

    invoke-virtual {v2}, Lsg;->f()V

    .line 59
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
    .line 64
    invoke-super {p0, p1, p2}, Lqv;->a(Ljava/util/List;Z)V

    .line 65
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
    .line 70
    invoke-super {p0, p1, p2}, Lqv;->b(Ljava/util/List;Z)V

    .line 71
    return-void
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_UPDATE_RECEIVED_CASH_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
