.class public final Ltb;
.super Lth;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltb$a;
    }
.end annotation


# instance fields
.field private mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

.field private mConversationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Lth;-><init>()V

    .line 22
    iput-object p1, p0, Ltb;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 23
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    iput-object v0, p0, Ltb;->mConversationId:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Luc;)V
    .locals 4
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-super {p0, p1}, Lth;->a(Luc;)V

    .line 50
    invoke-virtual {p1}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v0

    iget-object v1, p0, Ltb;->mConversationId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lakc;->b(Ljava/lang/String;Z)V

    .line 57
    :goto_0
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 58
    return-void

    .line 53
    :cond_0
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c022b

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Ltb;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mBeingCleared:Z

    goto :goto_0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ltb$a;

    iget-object v1, p0, Ltb;->mConversationId:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ltb$a;-><init>(Ltb;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "/loq/clear_conversation"

    return-object v0
.end method
