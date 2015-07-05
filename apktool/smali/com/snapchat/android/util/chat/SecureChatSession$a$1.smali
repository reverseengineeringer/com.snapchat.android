.class final Lcom/snapchat/android/util/chat/SecureChatSession$a$1;
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

.field final synthetic val$localInputStream:Laxk;

.field final synthetic val$localOutputStream:Laxl;

.field final synthetic val$localSslSocket:Ljavax/net/ssl/SSLSocket;

.field final synthetic val$timeoutCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSession$a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljavax/net/ssl/SSLSocket;Laxl;Laxk;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->this$1:Lcom/snapchat/android/util/chat/SecureChatSession$a;

    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$timeoutCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$localSslSocket:Ljavax/net/ssl/SSLSocket;

    iput-object p4, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$localOutputStream:Laxl;

    iput-object p5, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$localInputStream:Laxk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 475
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$timeoutCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession DISCONNECT due to ConnectMessage timeout"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$localSslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Lbfo;->a(Ljava/net/Socket;)V

    .line 478
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$localOutputStream:Laxl;

    invoke-static {v0}, Lbfo;->a(Ljava/io/Closeable;)V

    .line 479
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$localInputStream:Laxk;

    invoke-static {v0}, Lbfo;->a(Ljava/io/Closeable;)V

    .line 481
    :cond_0
    return-void
.end method
