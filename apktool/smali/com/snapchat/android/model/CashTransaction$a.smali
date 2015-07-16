.class public final Lcom/snapchat/android/model/CashTransaction$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/CashTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private mAmount:I

.field public mCashRecipientId:Ljava/lang/String;

.field public mCashSenderId:Ljava/lang/String;

.field public mCreatedAt:J

.field public mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

.field public mFromRain:Z

.field public mId:Ljava/lang/String;

.field public mIsFromServer:Z

.field public mMessage:Ljava/lang/String;

.field public mProvider:Ljava/lang/String;

.field private mRecipient:Ljava/lang/String;

.field private mSender:Ljava/lang/String;

.field public mStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

.field public mUpdatedAt:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction$a;->mSender:Ljava/lang/String;

    .line 325
    iput-object p2, p0, Lcom/snapchat/android/model/CashTransaction$a;->mRecipient:Ljava/lang/String;

    .line 326
    iput p3, p0, Lcom/snapchat/android/model/CashTransaction$a;->mAmount:I

    .line 327
    sget-object v0, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->USD:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    iput-object v0, p0, Lcom/snapchat/android/model/CashTransaction$a;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/CashTransaction$a;->mCreatedAt:J

    .line 329
    iget-wide v0, p0, Lcom/snapchat/android/model/CashTransaction$a;->mCreatedAt:J

    iput-wide v0, p0, Lcom/snapchat/android/model/CashTransaction$a;->mUpdatedAt:J

    .line 330
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->INITIATED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/CashTransaction$a;->mStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 331
    return-void
.end method

.method public static a(Lbic;)Lcom/snapchat/android/model/CashTransaction;
    .locals 4

    .prologue
    .line 415
    new-instance v0, Lcom/snapchat/android/model/CashTransaction$a;

    invoke-virtual {p0}, Lbic;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lbic;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbic;->f()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/model/CashTransaction$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 419
    invoke-virtual {p0}, Lbic;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction$a;->mId:Ljava/lang/String;

    invoke-virtual {p0}, Lbic;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction$a;->mCashSenderId:Ljava/lang/String;

    invoke-virtual {p0}, Lbic;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction$a;->mCashRecipientId:Ljava/lang/String;

    invoke-virtual {p0}, Lbic;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction$a;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    invoke-virtual {p0}, Lbic;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction$a;->mMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lbic;->i()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/snapchat/android/model/CashTransaction$a;->mCreatedAt:J

    invoke-virtual {p0}, Lbic;->j()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/snapchat/android/model/CashTransaction$a;->mUpdatedAt:J

    invoke-virtual {p0}, Lbic;->s()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction$a;->mProvider:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/CashTransaction$a;->mIsFromServer:Z

    invoke-virtual {p0}, Lbic;->r()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/snapchat/android/model/CashTransaction$a;->mFromRain:Z

    .line 430
    invoke-virtual {p0}, Lbic;->k()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v1

    .line 431
    if-ltz v1, :cond_0

    invoke-static {}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->values()[Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 432
    invoke-static {}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->values()[Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction$a;->mStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 434
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction$a;->a()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    .line 435
    invoke-virtual {p0}, Lbic;->l()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->c(Lcom/snapchat/android/model/CashTransaction;Z)Z

    .line 436
    invoke-virtual {p0}, Lbic;->m()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->d(Lcom/snapchat/android/model/CashTransaction;Z)Z

    .line 437
    invoke-virtual {p0}, Lbic;->n()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->e(Lcom/snapchat/android/model/CashTransaction;Z)Z

    .line 438
    invoke-virtual {p0}, Lbic;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;I)I

    .line 439
    invoke-virtual {p0}, Lbic;->p()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->f(Lcom/snapchat/android/model/CashTransaction;Z)Z

    .line 440
    invoke-virtual {p0}, Lbic;->q()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->b(Lcom/snapchat/android/model/CashTransaction;I)I

    .line 442
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/model/CashTransaction;
    .locals 5

    .prologue
    .line 389
    new-instance v0, Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$a;->mSender:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/model/CashTransaction$a;->mRecipient:Ljava/lang/String;

    iget v3, p0, Lcom/snapchat/android/model/CashTransaction$a;->mAmount:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/model/CashTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;IB)V

    .line 395
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$a;->mId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 396
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/model/CashTransaction$a;->mId:Ljava/lang/String;

    .line 397
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$a;->mId:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    .line 400
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$a;->mCashSenderId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$a;->mCashRecipientId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->b(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 402
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$a;->mMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->c(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$a;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/util/CashUtils$CurrencyCode;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    .line 404
    iget-boolean v1, p0, Lcom/snapchat/android/model/CashTransaction$a;->mFromRain:Z

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;Z)Z

    .line 405
    iget-wide v2, p0, Lcom/snapchat/android/model/CashTransaction$a;->mCreatedAt:J

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;J)J

    .line 406
    iget-wide v2, p0, Lcom/snapchat/android/model/CashTransaction$a;->mUpdatedAt:J

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/model/CashTransaction;->b(Lcom/snapchat/android/model/CashTransaction;J)J

    .line 407
    invoke-static {v0}, Lcom/snapchat/android/model/CashTransaction;->c(Lcom/snapchat/android/model/CashTransaction;)Z

    .line 408
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$a;->mStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 409
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$a;->mProvider:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->d(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    iget-boolean v1, p0, Lcom/snapchat/android/model/CashTransaction$a;->mIsFromServer:Z

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->b(Lcom/snapchat/android/model/CashTransaction;Z)Z

    .line 411
    return-object v0
.end method
