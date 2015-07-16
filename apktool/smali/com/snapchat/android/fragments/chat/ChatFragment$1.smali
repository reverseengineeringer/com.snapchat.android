.class final Lcom/snapchat/android/fragments/chat/ChatFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui$b;


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
        "Lui$b",
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
    .line 621
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$1;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 621
    check-cast p1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;->a()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$1;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$1;->a:Lcom/snapchat/android/model/Friend;

    iput-object v0, v1, Lcom/snapchat/android/model/Friend;->mCashEligibility:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$1$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$1$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$1;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$1;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p2, Lus;->mResponseCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$1;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p2, Lus;->mResponseCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0
.end method
