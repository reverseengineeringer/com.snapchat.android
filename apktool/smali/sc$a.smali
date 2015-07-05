.class final Lsc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Ltx;
.end annotation


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

.field private cardToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_token"
    .end annotation
.end field

.field private extras:Lsy;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extras"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private money:Lsz;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount_money"
    .end annotation
.end field

.field private recipient:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient"
    .end annotation
.end field

.field private recipientCustomization:Lsx;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient_customization"
    .end annotation
.end field

.field private senderCustomization:Lsx;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sender_customization"
    .end annotation
.end field

.field private signature:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signature"
    .end annotation
.end field

.field final synthetic this$0:Lsc;


# direct methods
.method constructor <init>(Lsc;)V
    .locals 2

    .prologue
    .line 34
    iput-object p1, p0, Lsc$a;->this$0:Lsc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-object v0, p0, Lsc$a;->this$0:Lsc;

    iget-object v0, v0, Lsc;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    iput-object v0, p0, Lsc$a;->id:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;->SEND:Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsc$a;->action:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashCustomer;

    iget-object v1, p0, Lsc$a;->this$0:Lsc;

    iget-object v1, v1, Lsc;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/cash/square/data/CashCustomer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsc$a;->recipient:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;

    .line 41
    new-instance v0, Lsz;

    iget-object v1, p0, Lsc$a;->this$0:Lsc;

    iget-object v1, v1, Lsc;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget v1, v1, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    invoke-direct {v0, v1}, Lsz;-><init>(I)V

    iput-object v0, p0, Lsc$a;->money:Lsz;

    .line 43
    iget-object v0, p0, Lsc$a;->this$0:Lsc;

    iget-object v0, v0, Lsc;->mCardToken:Ljava/lang/String;

    iput-object v0, p0, Lsc$a;->cardToken:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lsc$a;->this$0:Lsc;

    iget-object v0, v0, Lsc;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mSignature:Ljava/lang/String;

    iput-object v0, p0, Lsc$a;->signature:Ljava/lang/String;

    .line 47
    new-instance v0, Lsy;

    iget-object v1, p0, Lsc$a;->this$0:Lsc;

    iget-object v1, v1, Lsc;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v1, v1, Lcom/snapchat/android/model/CashTransaction;->mFromRain:Z

    invoke-direct {v0, v1}, Lsy;-><init>(Z)V

    iput-object v0, p0, Lsc$a;->extras:Lsy;

    .line 49
    new-instance v0, Lsx;

    iget-object v1, p0, Lsc$a;->this$0:Lsc;

    iget-object v1, v1, Lsc;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mSenderBankStatementMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lsx;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsc$a;->senderCustomization:Lsx;

    .line 52
    new-instance v0, Lsx;

    iget-object v1, p0, Lsc$a;->this$0:Lsc;

    iget-object v1, v1, Lsc;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mRecipientBankStatementMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lsx;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsc$a;->recipientCustomization:Lsx;

    return-void
.end method
