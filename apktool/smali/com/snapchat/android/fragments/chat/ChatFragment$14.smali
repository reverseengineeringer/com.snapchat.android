.class final Lcom/snapchat/android/fragments/chat/ChatFragment$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;->onChatLinkClickedEvent(Lbby;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

.field final synthetic b:Lalj;

.field final synthetic c:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/util/chat/SnapchatUrlSpan;Lalj;)V
    .locals 0

    .prologue
    .line 2460
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$14;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$14;->a:Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    iput-object p3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$14;->b:Lalj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 2463
    packed-switch p2, :pswitch_data_0

    .line 2482
    :cond_0
    :goto_0
    return-void

    .line 2465
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$14;->a:Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    invoke-virtual {v2}, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2467
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$14;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2470
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$14;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$14;->b:Lalj;

    invoke-interface {v0}, Lalj;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2471
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$14;->b:Lalj;

    instance-of v0, v0, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->x()Ljava/lang/String;

    move-result-object v0

    .line 2473
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$14;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->x(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lzh;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$14;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$14;->b:Lalj;

    invoke-virtual {v1, v2, v3, v0}, Lzh;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lalj;Ljava/lang/String;)V

    .line 2475
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$14;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->t(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lagr;

    move-result-object v0

    invoke-virtual {v0}, Lagr;->notifyDataSetChanged()V

    goto :goto_0

    .line 2471
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2479
    :pswitch_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 2463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
