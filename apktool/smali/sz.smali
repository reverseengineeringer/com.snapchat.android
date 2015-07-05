.class public final Lsz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAmount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field private final mCurrencyCode:Ljava/lang/String;
    .annotation build Lcgb;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->USD:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    invoke-virtual {v0}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsz;->mCurrencyCode:Ljava/lang/String;

    .line 16
    iput p1, p0, Lsz;->mAmount:I

    .line 17
    return-void
.end method
