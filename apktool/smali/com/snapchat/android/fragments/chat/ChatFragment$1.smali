.class final Lcom/snapchat/android/fragments/chat/ChatFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lts$b",
        "<",
        "Lcom/snapchat/android/api2/cash/ScCashResponsePayload;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$1;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 605
    check-cast p1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;->a()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ChatFragment"

    const-string v2, "CASH-LOG: Got CASH ELIGIBILITY for %s: %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$1;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$1;->a:Lcom/snapchat/android/model/Friend;

    iput-object v0, v1, Lcom/snapchat/android/model/Friend;->mCashEligibility:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$1$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$1$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$1;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ChatFragment"

    const-string v1, "CASH-LOG: FAILED to get CASH ELIGIBILITY for %s with status code %d and null json response status"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$1;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p2, Luc;->mResponseCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "ChatFragment"

    const-string v1, "CASH-LOG: FAILED to get CASH ELIGIBILITY for %s status code %d"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$1;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p2, Luc;->mResponseCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
