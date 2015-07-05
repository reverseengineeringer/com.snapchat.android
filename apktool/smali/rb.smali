.class public final Lrb;
.super Lqv;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ValidateTransactionBlocker"


# instance fields
.field protected mCashErrorReporter:Lqg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lqv;-><init>()V

    .line 29
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lrb;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lrb;)V
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrb;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lrb;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lrb;->b()V

    return-void
.end method

.method static synthetic c(Lrb;)V
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lrb;->b(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 7
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 34
    const-string v0, "ValidateTransactionBlocker"

    const-string v1, "CASH-LOG: ATTEMPT resolve ValidateTransactionBlocker recipient[%s] amount[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    new-instance v0, Lqu;

    iget-object v1, p1, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    iget v2, p1, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    iget-object v3, p1, Lcom/snapchat/android/model/CashTransaction;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    iget-object v4, p1, Lcom/snapchat/android/model/CashTransaction;->mMessage:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/snapchat/android/model/CashTransaction;->mFromRain:Z

    new-instance v6, Lrb$1;

    invoke-direct {v6, p0, p1}, Lrb$1;-><init>(Lrb;Lcom/snapchat/android/model/CashTransaction;)V

    invoke-direct/range {v0 .. v6}, Lqu;-><init>(Ljava/lang/String;ILcom/snapchat/android/util/CashUtils$CurrencyCode;Ljava/lang/String;ZLqc$a;)V

    invoke-virtual {v0}, Lqu;->f()V

    .line 89
    return-void
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->VALIDATE_TRANSACTION_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
