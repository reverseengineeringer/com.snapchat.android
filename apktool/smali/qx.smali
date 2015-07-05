.class public final Lqx;
.super Lqv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lqv;-><init>()V

    return-void
.end method

.method static synthetic a(Lqx;)V
    .locals 2

    .prologue
    .line 12
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lqx;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lqx;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0}, Lqx;->a()V

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
    .line 15
    invoke-static {}, Lajx;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lqx;->a(Ljava/util/List;Z)V

    .line 32
    :goto_0
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;-><init>()V

    .line 21
    new-instance v1, Lqx$1;

    invoke-direct {v1, p0}, Lqx$1;-><init>(Lqx;)V

    iput-object v1, v0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$a;

    .line 31
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbdw;

    invoke-direct {v2, v0}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->LOCAL_SQ_ACCEPT_TERMS_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
