.class final Lcom/snapchat/android/fragments/chat/ChatFragment$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic b:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 3116
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 3119
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->L(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lzf;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Lzf;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v0

    .line 3121
    if-eqz v0, :cond_0

    .line 3122
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->L(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lzf;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    sget-object v2, Lbju$a;->RELEASE:Lbju$a;

    invoke-virtual {v0, v1, v2}, Lzf;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbju$a;)V

    .line 3123
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->r()V

    .line 3125
    :cond_0
    return-void
.end method
