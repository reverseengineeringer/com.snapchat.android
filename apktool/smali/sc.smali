.class public final Lsc;
.super Lsl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsc$a;
    }
.end annotation


# instance fields
.field final mCardToken:Ljava/lang/String;

.field final mCashTransaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;Lsk;)V
    .locals 0
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lsk;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0, p3}, Lsl;-><init>(Lsk;)V

    .line 24
    iput-object p1, p0, Lsc;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 25
    iput-object p2, p0, Lsc;->mCardToken:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lsc$a;

    invoke-direct {v0, p0}, Lsc$a;-><init>(Lsc;)V

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "cash/payments"

    return-object v0
.end method
