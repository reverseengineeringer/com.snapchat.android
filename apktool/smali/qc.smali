.class public abstract Lqc;
.super Ltg;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/snapchat/android/api2/cash/ScCashResponsePayload;",
        ">",
        "Ltg;",
        "Lts$b",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BasicScCashRequestTask"


# instance fields
.field private final mCallback:Lqc$a;


# direct methods
.method protected constructor <init>(Lqc$a;)V
    .locals 0
    .param p1    # Lqc$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ltg;-><init>()V

    .line 19
    iput-object p1, p0, Lqc;->mCallback:Lqc$a;

    .line 20
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 12
    check-cast p1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;

    const-string v0, "BasicScCashRequestTask"

    const-string v1, "CASH-LOG: %s finished with status code %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p2, Luc;->mResponseCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p2, Luc;->mCaughtException:Ljava/lang/Exception;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;->a()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->OK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lqc;->mCallback:Lqc$a;

    invoke-interface {v0, p1}, Lqc$a;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lqc;->mCallback:Lqc$a;

    iget-object v1, p1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;->status:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    iget v2, p2, Luc;->mResponseCode:I

    invoke-interface {v0, v1, v2}, Lqc$a;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lqc;->mCallback:Lqc$a;

    sget-object v1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->UNKNOWN:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    iget v2, p2, Luc;->mResponseCode:I

    invoke-interface {v0, v1, v2}, Lqc$a;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lqc;->mCallback:Lqc$a;

    sget-object v1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->NO_NETWORK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    invoke-interface {v0, v1, v5}, Lqc$a;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;I)V

    goto :goto_0
.end method
