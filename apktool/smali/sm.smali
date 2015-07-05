.class public final Lsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqn;


# instance fields
.field private final mCardSummary:Lsv;
    .annotation build Lcgc;
    .end annotation
.end field

.field private final mCashCustomer:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;
    .annotation build Lcgc;
    .end annotation
.end field

.field private final mCashCustomerStatus:Lsw;
    .annotation build Lcgb;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsw;)V
    .locals 1
    .param p1    # Lsw;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lsm;->mCashCustomerStatus:Lsw;

    .line 23
    iget-object v0, p1, Lsw;->mCustomer:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;

    iput-object v0, p0, Lsm;->mCashCustomer:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;

    .line 24
    iget-object v0, p1, Lsw;->mCardSummary:Lsv;

    iput-object v0, p0, Lsm;->mCardSummary:Lsv;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lsm;->mCardSummary:Lsv;

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lsm;->mCashCustomerStatus:Lsw;

    iget-boolean v0, v0, Lsw;->mPasswordConfirmationEnabled:Z

    return v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lsm;->mCashCustomerStatus:Lsw;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lsm;->mCashCustomerStatus:Lsw;

    iget v1, v1, Lsw;->mNumberOfPayments:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 81
    :cond_0
    return v0
.end method

.method public final d()Lcom/snapchat/android/api2/cash/square/data/CardBrand;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lsm;->mCardSummary:Lsv;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lsm;->mCardSummary:Lsv;

    iget-object v0, v0, Lsv;->mBrand:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lsm;->mCardSummary:Lsv;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lsm;->mCardSummary:Lsv;

    iget-object v0, v0, Lsv;->mPanSuffix:Ljava/lang/String;

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
