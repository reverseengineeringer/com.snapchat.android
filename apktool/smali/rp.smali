.class public final Lrp;
.super Lqv;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQInitiationConfirmBlocker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lqv;-><init>()V

    return-void
.end method

.method static synthetic a(Lrp;)V
    .locals 2

    .prologue
    .line 15
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrp;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lrp;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lrp;->a()V

    return-void
.end method

.method static synthetic c(Lrp;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lrp;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 20
    const-string v0, "SQInitiationConfirmBlocker"

    const-string v1, "CASH-LOG: ATTEMPT resolve SQInitiationConfirmBlocker transaction_id[%s] recipient[%s] amount [%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p1, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p1, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;-><init>()V

    .line 25
    new-instance v1, Lrp$1;

    invoke-direct {v1, p0, p1, v0}, Lrp$1;-><init>(Lrp;Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V

    iput-object v1, v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;

    .line 26
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbdw;

    invoke-direct {v2, v0}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v5}, Lrp;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_INITIATION_CONFIRM_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
