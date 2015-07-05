.class public abstract Lsl;
.super Lsq;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsq;",
        "Lts$b",
        "<",
        "Lcom/snapchat/android/api2/cash/square/data/CashPayment;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SquareCashPaymentTask"


# instance fields
.field private final mCallback:Lsk;


# direct methods
.method protected constructor <init>(Lsk;)V
    .locals 1
    .param p1    # Lsk;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0}, Lsq;-><init>()V

    .line 22
    iput-object p1, p0, Lsl;->mCallback:Lsk;

    .line 24
    const-class v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    invoke-virtual {p0, v0, p0}, Lsl;->a(Ljava/lang/Class;Lts$b;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 5

    .prologue
    .line 13
    check-cast p1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    const-string v0, "SquareCashPaymentTask"

    const-string v1, "CASH-LOG: %s finished with status code %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p2, Luc;->mResponseCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p2, Luc;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lsl;->mCallback:Lsk;

    invoke-interface {v0, p1}, Lsk;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsl;->mCallback:Lsk;

    iget v1, p2, Luc;->mResponseCode:I

    invoke-interface {v0, v1}, Lsk;->a(I)V

    goto :goto_0
.end method
