.class final Lcom/snapchat/android/fragments/chat/ChatFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$5;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$5;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->t(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lagr;

    move-result-object v0

    invoke-virtual {v0}, Lagr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$5;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->u(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$5;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$5;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->v(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ltt;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$5;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    iget-object v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ltt;->a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    move-result-object v0

    .line 1302
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$5;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V

    .line 1304
    :cond_0
    return-void
.end method
