.class public final Lsr;
.super Ltg;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltg;",
        "Lui$b",
        "<",
        "Lcom/snapchat/android/api2/cash/square/data/CashPayment;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeleteCashPaymentTask"


# instance fields
.field private final mCashTransaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Ltg;-><init>()V

    .line 27
    const-class v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    invoke-virtual {p0, v0, p0}, Lsr;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 29
    iput-object p1, p0, Lsr;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cash/payments/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsr;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMethod()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->DELETE:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    if-eqz p2, :cond_0

    iget v0, p2, Lus;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lsr;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lsr;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lsr;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lsr;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->RECIPIENT_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p0, Lsr;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, v2, Lcom/snapchat/android/model/CashTransaction;->mConversationId:Ljava/lang/String;

    iget-object v3, p0, Lsr;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v3, v3, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lsr;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lsr;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lsr;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0
.end method
