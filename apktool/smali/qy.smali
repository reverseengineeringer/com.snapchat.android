.class public final Lqy;
.super Lqv;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneNumberBlocker"


# instance fields
.field protected mReceivingCashManager:Lxx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lqv;-><init>()V

    .line 32
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lqy;)V

    .line 33
    return-void
.end method

.method static synthetic a(Lqy;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lqy;->e()Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 47
    invoke-static {}, Lajx;->aq()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v2

    .line 48
    sget-object v3, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->NON_US_USER:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-ne v2, v3, :cond_0

    .line 49
    invoke-super {p0, v4, v1}, Lqv;->b(Ljava/util/List;Z)V

    .line 50
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbdw;

    new-instance v3, Lcom/snapchat/android/fragments/cash/IneligibleCashFragment;

    invoke-direct {v3}, Lcom/snapchat/android/fragments/cash/IneligibleCashFragment;-><init>()V

    invoke-direct {v2, v3}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 51
    iget-object v1, p0, Lqy;->mReceivingCashManager:Lxx;

    invoke-static {}, Lym;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxx;->a(Ljava/util/List;)V

    .line 57
    :goto_0
    return v0

    .line 53
    :cond_0
    invoke-static {}, Lajx;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-super {p0, v4, v0}, Lqv;->a(Ljava/util/List;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 57
    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lqv;->a()V

    .line 70
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0}, Lqy;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;-><init>()V

    .line 42
    new-instance v1, Lqy$1;

    invoke-direct {v1, p0}, Lqy$1;-><init>(Lqy;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->b:Z

    iput-object v1, v0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->a:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$a;

    .line 43
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbdw;

    invoke-direct {v2, v0}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
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
    .line 63
    invoke-super {p0, p1, p2}, Lqv;->a(Ljava/util/List;Z)V

    .line 64
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
    .line 75
    invoke-super {p0, p1, p2}, Lqv;->b(Ljava/util/List;Z)V

    .line 76
    return-void
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->PHONE_NUMBER_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
