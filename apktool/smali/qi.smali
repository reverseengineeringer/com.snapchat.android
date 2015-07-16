.class public final Lqi;
.super Ltx;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqi$b;,
        Lqi$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltx;",
        "Lui$b",
        "<",
        "Lqi$b;",
        ">;"
    }
.end annotation


# instance fields
.field final mConversationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ltx;-><init>()V

    .line 27
    iput-object p1, p0, Lqi;->mConversationId:Ljava/lang/String;

    .line 29
    const-class v0, Lqi$b;

    invoke-virtual {p0, v0, p0}, Lqi;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "/loq/conversation_auth_token"

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lqi$a;

    invoke-direct {v0, p0}, Lqi$a;-><init>(Lqi;)V

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 2

    .prologue
    .line 22
    check-cast p1, Lqi$b;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lqi$b;->messagingAuth:Lbjy;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lqi;->mConversationId:Ljava/lang/String;

    invoke-static {v0}, Lzi;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lqi$b;->messagingAuth:Lbjy;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbjy;)V

    goto :goto_0
.end method
