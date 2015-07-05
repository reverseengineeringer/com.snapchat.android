.class public final Lrd;
.super Lqv;
.source "SourceFile"


# instance fields
.field protected mCashErrorReporter:Lqg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lqv;-><init>()V

    .line 28
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lrd;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lrd;)V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lrd;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lrd;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrd;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lrd;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrd;->b(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 33
    new-instance v0, Lrd$1;

    invoke-direct {v0, p0, p1}, Lrd$1;-><init>(Lrd;Lcom/snapchat/android/model/CashTransaction;)V

    .line 71
    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lrz;

    iget-object v2, p1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lrz;-><init>(Ljava/lang/String;Lsh$a;)V

    invoke-virtual {v1}, Lrz;->f()V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v1, Lrz;

    invoke-direct {v1, v0}, Lrz;-><init>(Lsh$a;)V

    invoke-virtual {v1}, Lrz;->f()V

    goto :goto_0
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_ACCEPT_TERMS_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method
