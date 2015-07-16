.class public final Lsd;
.super Lrl;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQInitiatePaymentBlocker"


# instance fields
.field protected mCashCardManager:Lyn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCashErrorReporter:Lqw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSquareProvider:Ltd;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lrl;-><init>()V

    .line 39
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lsd;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lsd;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lsd;->b()V

    return-void
.end method

.method static synthetic a(Lsd;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsd;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lsd;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lsd;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lsd;)V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lsd;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lsd;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsd;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic c(Lsd;)V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lsd;->b(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 44
    iget-object v0, p0, Lsd;->mCashCardManager:Lyn;

    invoke-virtual {v0}, Lyn;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v1, Lrx;

    invoke-direct {v1}, Lrx;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lsd;->b(Ljava/util/List;Z)V

    .line 137
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lsd;->mCashCardManager:Lyn;

    invoke-virtual {v0}, Lyn;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lsd$1;

    invoke-direct {v1, p0, p1}, Lsd$1;-><init>(Lsd;Lcom/snapchat/android/model/CashTransaction;)V

    new-instance v2, Lss;

    invoke-direct {v2, p1, v0, v1}, Lss;-><init>(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;Lta;)V

    invoke-virtual {v2}, Lss;->execute()V

    goto :goto_0
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_INITIATE_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
