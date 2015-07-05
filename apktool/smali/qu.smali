.class public final Lqu;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqu$b;,
        Lqu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqc",
        "<",
        "Lqu$b;",
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
.method public constructor <init>(Ljava/lang/String;ILcom/snapchat/android/util/CashUtils$CurrencyCode;Ljava/lang/String;ZLqc$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/util/CashUtils$CurrencyCode;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Lqc$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0, p6}, Lqc;-><init>(Lqc$a;)V

    .line 32
    iput-object p1, p0, Lqu;->mRecipient:Ljava/lang/String;

    .line 33
    iput p2, p0, Lqu;->mAmount:I

    .line 34
    iput-object p3, p0, Lqu;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    .line 35
    iput-object p4, p0, Lqu;->mMessage:Ljava/lang/String;

    .line 36
    iput-boolean p5, p0, Lqu;->mIsRain:Z

    .line 38
    const-class v0, Lqu$b;

    invoke-virtual {p0, v0, p0}, Lqu;->a(Ljava/lang/Class;Lts$b;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lqu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lqu;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lqu;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lqu;->mAmount:I

    return v0
.end method

.method static synthetic c(Lqu;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lqu;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    return-object v0
.end method

.method static synthetic d(Lqu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lqu;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lqu;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lqu;->mIsRain:Z

    return v0
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lqu$a;

    invoke-direct {v0, p0}, Lqu$a;-><init>(Lqu;)V

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "/cash/validate_transaction"

    return-object v0
.end method
