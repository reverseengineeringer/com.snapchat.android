.class public Lsw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBlockers:Lta;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "blockers"
    .end annotation
.end field

.field public mCardSummary:Lsv;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_summary"
    .end annotation
.end field

.field public mCustomer:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer"
    .end annotation
.end field

.field public mNumberOfPayments:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number_of_payments"
    .end annotation
.end field

.field public mPasswordConfirmationEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "passcode_confirmation_enabled"
    .end annotation
.end field

.field private mPayments:Ljava/util/List;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/cash/square/data/CashPayment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lsw;->mNumberOfPayments:I

    return-void
.end method
