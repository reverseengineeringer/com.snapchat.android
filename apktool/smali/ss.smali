.class public final Lss;
.super Ltb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss$a;
    }
.end annotation


# instance fields
.field final mCardToken:Ljava/lang/String;

.field final mCashTransaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;Lta;)V
    .locals 0
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lta;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0, p3}, Ltb;-><init>(Lta;)V

    .line 24
    iput-object p1, p0, Lss;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 25
    iput-object p2, p0, Lss;->mCardToken:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "cash/payments"

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lss$a;

    invoke-direct {v0, p0}, Lss$a;-><init>(Lss;)V

    return-object v0
.end method
