.class public Lcom/snapchat/android/model/CashTransaction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/CashTransaction$a;,
        Lcom/snapchat/android/model/CashTransaction$TransactionStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mAmount:I

.field public mCashRecipientId:Ljava/lang/String;

.field public mCashSenderId:Ljava/lang/String;

.field public mConversationId:Ljava/lang/String;

.field public mCreatedTimestamp:J

.field public mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

.field public mFailToSendReleaseMessage:Z

.field public mFromRain:Z

.field public mIsFromServer:Z

.field public mIsInFlight:Z

.field private mIsInvisible:Z

.field public mIsSavedByRecipient:Z

.field public mIsSavedBySender:Z

.field public mIsViewedByRecipient:Z

.field public mIsViewedBySender:Z

.field public mMessage:Ljava/lang/String;

.field public mProvider:Ljava/lang/String;

.field public mRecipientBankStatementMessage:Ljava/lang/String;

.field public mRecipientSaveVersion:I

.field public mRecipientUsername:Ljava/lang/String;

.field public mSecurityCode:Ljava/lang/String;

.field public mSenderBankStatementMessage:Ljava/lang/String;

.field public mSenderSaveVersion:I

.field public mSenderUsername:Ljava/lang/String;

.field public mSignature:Ljava/lang/String;

.field public mTransactionId:Ljava/lang/String;

.field public mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

.field public mUpdatedTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/model/CashTransaction;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/CashTransaction;->mFailToSendReleaseMessage:Z

    .line 62
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    invoke-static {v0, v1}, Layg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mConversationId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/model/CashTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/model/CashTransaction;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/model/CashTransaction;J)J
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/snapchat/android/model/CashTransaction;->mCreatedTimestamp:J

    return-wide p1
.end method

.method static synthetic a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/util/CashUtils$CurrencyCode;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mCashSenderId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/model/CashTransaction;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mFromRain:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/model/CashTransaction;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/snapchat/android/model/CashTransaction;->mRecipientSaveVersion:I

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/model/CashTransaction;J)J
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    return-wide p1
.end method

.method static synthetic b(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mCashRecipientId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/snapchat/android/model/CashTransaction;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsFromServer:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/snapchat/android/model/CashTransaction;)Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/CashTransaction;->mIsInvisible:Z

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/model/CashTransaction;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsViewedBySender:Z

    return p1
.end method

.method static synthetic d(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mProvider:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/snapchat/android/model/CashTransaction;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsViewedByRecipient:Z

    return p1
.end method

.method static synthetic e(Lcom/snapchat/android/model/CashTransaction;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    return p1
.end method

.method static synthetic f(Lcom/snapchat/android/model/CashTransaction;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

    return p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 120
    iget v0, p0, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_0

    .line 121
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%.2f"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 239
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 240
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 265
    iget-boolean v0, p1, Lcom/snapchat/android/model/CashTransaction;->mIsViewedBySender:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/CashTransaction;->mIsViewedBySender:Z

    .line 266
    iget v0, p0, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    iget v1, p1, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    if-ge v0, v1, :cond_0

    .line 267
    iget-boolean v0, p1, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    .line 268
    iget v0, p1, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    iput v0, p0, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    .line 270
    :cond_0
    return-void
.end method

.method public final b(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 273
    iget-boolean v0, p1, Lcom/snapchat/android/model/CashTransaction;->mIsViewedByRecipient:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/CashTransaction;->mIsViewedByRecipient:Z

    .line 274
    iget v0, p0, Lcom/snapchat/android/model/CashTransaction;->mRecipientSaveVersion:I

    iget v1, p1, Lcom/snapchat/android/model/CashTransaction;->mRecipientSaveVersion:I

    if-ge v0, v1, :cond_0

    .line 275
    iget-boolean v0, p1, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

    .line 276
    iget v0, p1, Lcom/snapchat/android/model/CashTransaction;->mRecipientSaveVersion:I

    iput v0, p0, Lcom/snapchat/android/model/CashTransaction;->mRecipientSaveVersion:I

    .line 278
    :cond_0
    return-void
.end method
