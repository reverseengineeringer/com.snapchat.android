.class public final Lsf;
.super Lrl;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQInitiationConfirmBlocker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lrl;-><init>()V

    return-void
.end method

.method static synthetic a(Lsf;)V
    .locals 2

    .prologue
    .line 15
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lsf;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lsf;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lsf;->a()V

    return-void
.end method

.method static synthetic c(Lsf;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lsf;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p1, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 23
    iget-object v0, p1, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;-><init>()V

    .line 25
    new-instance v1, Lsf$1;

    invoke-direct {v1, p0, p1, v0}, Lsf$1;-><init>(Lsf;Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V

    iput-object v1, v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;

    .line 26
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbev;

    invoke-direct {v2, v0}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lsf;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_INITIATION_CONFIRM_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
