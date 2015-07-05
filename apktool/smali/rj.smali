.class public final Lrj;
.super Lqv;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQConfirmBlocker"


# instance fields
.field protected mCashErrorReporter:Lqg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mRequiresPasscode:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requires_passcode"
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
    .line 46
    invoke-direct {p0}, Lqv;-><init>()V

    .line 47
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lrj;)V

    .line 48
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Lsh$a;)Lsa;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Lsh$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 245
    new-instance v0, Lsa;

    invoke-direct {v0, p0, p1, p2}, Lsa;-><init>(Ljava/lang/String;Ljava/lang/String;Lsh$a;)V

    return-object v0
.end method

.method static synthetic a(Lrj;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lrj;->b()V

    return-void
.end method

.method static synthetic a(Lrj;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrj;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lrj;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lrj;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lrj;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrj;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lrj;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrj;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic c(Lrj;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lrj;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic c(Lrj;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrj;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic d(Lrj;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lrj;->b()V

    return-void
.end method

.method static synthetic d(Lrj;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrj;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic e(Lrj;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrj;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic e(Lrj;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrj;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic f(Lrj;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lrj;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 52
    const-string v0, "SQConfirmBlocker"

    const-string v1, "CASH-LOG: ATTEMPT resolve SQConfirmBlocker id[%s] recipient[%s] amount[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-boolean v0, p0, Lrj;->mRequiresPasscode:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    .line 57
    :goto_0
    iget-boolean v1, p0, Lrj;->mRequiresPasscode:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    new-instance v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;-><init>()V

    .line 59
    new-instance v1, Lrj$2;

    invoke-direct {v1, p0, p1, v0}, Lrj$2;-><init>(Lrj;Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V

    iput-object v1, v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;

    .line 60
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbdw;

    invoke-direct {v2, v0}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 145
    :goto_1
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    new-instance v2, Lrj$1;

    invoke-direct {v2, p0, p1}, Lrj$1;-><init>(Lrj;Lcom/snapchat/android/model/CashTransaction;)V

    invoke-static {v1, v0, v2}, Lrj;->a(Ljava/lang/String;Ljava/lang/String;Lsh$a;)Lsa;

    move-result-object v0

    invoke-virtual {v0}, Lsa;->f()V

    goto :goto_1
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_CONFIRM_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
