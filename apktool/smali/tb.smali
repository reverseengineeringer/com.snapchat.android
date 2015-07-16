.class public abstract Ltb;
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
.field private static final TAG:Ljava/lang/String; = "SquareCashPaymentTask"


# instance fields
.field private final mCallback:Lta;


# direct methods
.method protected constructor <init>(Lta;)V
    .locals 1
    .param p1    # Lta;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0}, Ltg;-><init>()V

    .line 22
    iput-object p1, p0, Ltb;->mCallback:Lta;

    .line 24
    const-class v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    invoke-virtual {p0, v0, p0}, Ltb;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 25
    return-void
.end method


# virtual methods
.method public synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 3

    .prologue
    .line 13
    check-cast p1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p2, Lus;->mResponseCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p2, Lus;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltb;->mCallback:Lta;

    invoke-interface {v0, p1}, Lta;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ltb;->mCallback:Lta;

    iget v1, p2, Lus;->mResponseCode:I

    invoke-interface {v0, v1}, Lta;->a(I)V

    goto :goto_0
.end method
