.class public final Lrn;
.super Lqv;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQInitiatePaymentBlocker"


# instance fields
.field protected mCashCardManager:Lxr;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

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
    .line 38
    invoke-direct {p0}, Lqv;-><init>()V

    .line 39
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lrn;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lrn;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lrn;->b()V

    return-void
.end method

.method static synthetic a(Lrn;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrn;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lrn;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lrn;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lrn;)V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrn;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lrn;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrn;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic c(Lrn;)V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lrn;->b(Ljava/util/List;Z)V

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
    .line 44
    const-string v0, "SQInitiatePaymentBlocker"

    const-string v1, "CASH-LOG: ATTEMPT resolve SQInitiatePaymentBlocker"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lrn;->mCashCardManager:Lxr;

    invoke-virtual {v0}, Lxr;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v1, Lrh;

    invoke-direct {v1}, Lrh;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrn;->b(Ljava/util/List;Z)V

    .line 137
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lrn;->mCashCardManager:Lxr;

    invoke-virtual {v0}, Lxr;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lrn$1;

    invoke-direct {v1, p0, p1}, Lrn$1;-><init>(Lrn;Lcom/snapchat/android/model/CashTransaction;)V

    new-instance v2, Lsc;

    invoke-direct {v2, p1, v0, v1}, Lsc;-><init>(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;Lsk;)V

    invoke-virtual {v2}, Lsc;->f()V

    goto :goto_0
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_INITIATE_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
