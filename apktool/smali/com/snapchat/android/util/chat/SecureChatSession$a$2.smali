.class final Lcom/snapchat/android/util/chat/SecureChatSession$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatSession$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/snapchat/android/util/chat/SecureChatSession$a;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSession$a;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$2;->this$1:Lcom/snapchat/android/util/chat/SecureChatSession$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$2;->this$1:Lcom/snapchat/android/util/chat/SecureChatSession$a;

    iget-object v0, v0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession ran into soft-timeout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$2;->this$1:Lcom/snapchat/android/util/chat/SecureChatSession$a;

    iget-object v0, v0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->m(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 493
    :cond_0
    return-void
.end method
