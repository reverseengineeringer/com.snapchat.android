.class public final Lrz;
.super Lrl;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQConfirmBlocker"


# instance fields
.field protected mCashErrorReporter:Lqw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mRequiresPasscode:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requires_passcode"
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
    .line 46
    invoke-direct {p0}, Lrl;-><init>()V

    .line 47
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lrz;)V

    .line 48
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Lsx$a;)Lsq;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Lsx$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 245
    new-instance v0, Lsq;

    invoke-direct {v0, p0, p1, p2}, Lsq;-><init>(Ljava/lang/String;Ljava/lang/String;Lsx$a;)V

    return-object v0
.end method

.method static synthetic a(Lrz;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lrz;->b()V

    return-void
.end method

.method static synthetic a(Lrz;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrz;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lrz;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lrz;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lrz;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrz;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lrz;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrz;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic c(Lrz;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lrz;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic c(Lrz;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrz;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic d(Lrz;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lrz;->b()V

    return-void
.end method

.method static synthetic d(Lrz;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrz;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic e(Lrz;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrz;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic e(Lrz;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrz;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic f(Lrz;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lrz;->a()V

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
    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 56
    iget-boolean v0, p0, Lrz;->mRequiresPasscode:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    .line 57
    :goto_0
    iget-boolean v1, p0, Lrz;->mRequiresPasscode:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    new-instance v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;-><init>()V

    .line 59
    new-instance v1, Lrz$2;

    invoke-direct {v1, p0, p1, v0}, Lrz$2;-><init>(Lrz;Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V

    iput-object v1, v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;

    .line 60
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbev;

    invoke-direct {v2, v0}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

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

    new-instance v2, Lrz$1;

    invoke-direct {v2, p0, p1}, Lrz$1;-><init>(Lrz;Lcom/snapchat/android/model/CashTransaction;)V

    invoke-static {v1, v0, v2}, Lrz;->a(Ljava/lang/String;Ljava/lang/String;Lsx$a;)Lsq;

    move-result-object v0

    invoke-virtual {v0}, Lsq;->execute()V

    goto :goto_1
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_CONFIRM_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
