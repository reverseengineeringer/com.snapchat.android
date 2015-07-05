.class final Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$17;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lcom/snapchat/android/fragments/chat/ChatFragment$17;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$17;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 0

    .prologue
    .line 2513
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$17;

    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$17;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    .line 2517
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$17;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lya;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$17;

    iget-object v1, v1, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    const-string v3, ""

    new-instance v4, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1$1;

    invoke-direct {v4, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;Lya$b;)V

    .line 2532
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 2537
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$17;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->q(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 2538
    return-void
.end method
