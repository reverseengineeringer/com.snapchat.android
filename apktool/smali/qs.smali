.class public abstract Lqs;
.super Ltw;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqs$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/snapchat/android/api2/cash/ScCashResponsePayload;",
        ">",
        "Ltw;",
        "Lui$b",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BasicScCashRequestTask"


# instance fields
.field private final mCallback:Lqs$a;


# direct methods
.method protected constructor <init>(Lqs$a;)V
    .locals 0
    .param p1    # Lqs$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ltw;-><init>()V

    .line 19
    iput-object p1, p0, Lqs;->mCallback:Lqs$a;

    .line 20
    return-void
.end method


# virtual methods
.method public synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12
    check-cast p1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget v2, p2, Lus;->mResponseCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p2, Lus;->mCaughtException:Ljava/lang/Exception;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;->a()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->OK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lqs;->mCallback:Lqs$a;

    invoke-interface {v0, p1}, Lqs$a;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lqs;->mCallback:Lqs$a;

    iget-object v1, p1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;->status:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    iget v2, p2, Lus;->mResponseCode:I

    invoke-interface {v0, v1, v2}, Lqs$a;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lqs;->mCallback:Lqs$a;

    sget-object v1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->UNKNOWN:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    iget v2, p2, Lus;->mResponseCode:I

    invoke-interface {v0, v1, v2}, Lqs$a;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lqs;->mCallback:Lqs$a;

    sget-object v1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->NO_NETWORK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    invoke-interface {v0, v1, v3}, Lqs$a;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;I)V

    goto :goto_0
.end method
