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

.field final synthetic val$localInputStream:Layi;

.field final synthetic val$localOutputStream:Layj;

.field final synthetic val$localSslSocket:Ljavax/net/ssl/SSLSocket;

.field final synthetic val$timeoutCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSession$a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljavax/net/ssl/SSLSocket;Layj;Layi;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->this$1:Lcom/snapchat/android/util/chat/SecureChatSession$a;

    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$timeoutCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$localSslSocket:Ljavax/net/ssl/SSLSocket;

    iput-object p4, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$localOutputStream:Layj;

    iput-object p5, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$localInputStream:Layi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$timeoutCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$localSslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Lbgo;->a(Ljava/net/Socket;)V

    .line 478
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$localOutputStream:Layj;

    invoke-static {v0}, Lbgo;->a(Ljava/io/Closeable;)V

    .line 479
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;->val$localInputStream:Layi;

    invoke-static {v0}, Lbgo;->a(Ljava/io/Closeable;)V

    .line 481
    :cond_0
    return-void
.end method
