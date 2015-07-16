.class public final Lrk;
.super Lqs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrk$b;,
        Lrk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqs",
        "<",
        "Lrk$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAmount:I

.field private final mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

.field private final mIsRain:Z

.field private final mMessage:Ljava/lang/String;

.field private final mRecipient:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/snapchat/android/util/CashUtils$CurrencyCode;Ljava/lang/String;ZLqs$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/util/CashUtils$CurrencyCode;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Lqs$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0, p6}, Lqs;-><init>(Lqs$a;)V

    .line 32
    iput-object p1, p0, Lrk;->mRecipient:Ljava/lang/String;

    .line 33
    iput p2, p0, Lrk;->mAmount:I

    .line 34
    iput-object p3, p0, Lrk;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    .line 35
    iput-object p4, p0, Lrk;->mMessage:Ljava/lang/String;

    .line 36
    iput-boolean p5, p0, Lrk;->mIsRain:Z

    .line 38
    const-class v0, Lrk$b;

    invoke-virtual {p0, v0, p0}, Lrk;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lrk;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lrk;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lrk;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lrk;->mAmount:I

    return v0
.end method

.method static synthetic c(Lrk;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lrk;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    return-object v0
.end method

.method static synthetic d(Lrk;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lrk;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lrk;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lrk;->mIsRain:Z

    return v0
.end method


# virtual methods
.method protected final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "/cash/validate_transaction"

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lrk$a;

    invoke-direct {v0, p0}, Lrk$a;-><init>(Lrk;)V

    return-object v0
.end method
