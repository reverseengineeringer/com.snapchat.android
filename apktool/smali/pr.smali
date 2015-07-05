.class public final Lpr;
.super Lth;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpr$b;,
        Lpr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lth;",
        "Lts$b",
        "<",
        "Lpr$b;",
        ">;"
    }
.end annotation


# instance fields
.field final mConversationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Lth;-><init>()V

    .line 27
    iput-object p1, p0, Lpr;->mConversationId:Ljava/lang/String;

    .line 29
    const-class v0, Lpr$b;

    invoke-virtual {p0, v0, p0}, Lpr;->a(Ljava/lang/Class;Lts$b;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Luc;)V
    .locals 2

    .prologue
    .line 22
    check-cast p1, Lpr$b;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lpr$b;->messagingAuth:Lbix;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lpr;->mConversationId:Ljava/lang/String;

    invoke-static {v0}, Lym;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lpr$b;->messagingAuth:Lbix;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbix;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lpr$a;

    invoke-direct {v0, p0}, Lpr$a;-><init>(Lpr;)V

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "/loq/conversation_auth_token"

    return-object v0
.end method
