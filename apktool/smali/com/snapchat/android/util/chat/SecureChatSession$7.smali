.class final Lcom/snapchat/android/util/chat/SecureChatSession$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatSession;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/util/chat/SecureChatSession;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$7;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 345
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession CONNECT after being disconnected due to ping timeout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$7;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->b()V

    .line 347
    return-void
.end method
