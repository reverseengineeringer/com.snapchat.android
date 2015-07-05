.class public final Lrt;
.super Lqv;
.source "SourceFile"


# instance fields
.field protected mCashErrorReporter:Lqg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSquareProvider:Lsn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lqv;-><init>()V

    .line 33
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lrt;)V

    .line 34
    return-void
.end method

.method static synthetic a(Lrt;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lrt;->b()V

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
    .line 38
    iget-object v0, p1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    new-instance v1, Lrt$1;

    invoke-direct {v1, p0, p1}, Lrt$1;-><init>(Lrt;Lcom/snapchat/android/model/CashTransaction;)V

    new-instance v2, Lsg;

    invoke-direct {v2, v0, v1}, Lsg;-><init>(Ljava/lang/String;Lsk;)V

    invoke-virtual {v2}, Lsg;->f()V

    .line 89
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
    .line 94
    invoke-super {p0, p1, p2}, Lqv;->a(Ljava/util/List;Z)V

    .line 95
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
    .line 100
    invoke-super {p0, p1, p2}, Lqv;->b(Ljava/util/List;Z)V

    .line 101
    return-void
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_RETRIEVE_SENDING_CASH_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
