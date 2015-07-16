.class final Layo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layo;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Layo;

.field final synthetic val$pingMessage:Lbjp;


# direct methods
.method constructor <init>(Layo;Lbjp;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Layo$2;->this$0:Layo;

    iput-object p2, p0, Layo$2;->val$pingMessage:Lbjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 87
    if-eqz p1, :cond_1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CHAT-LOG: SUCCEEDED SENDING PING and WAITING for response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Layo$2;->val$pingMessage:Lbjp;

    invoke-virtual {v1}, Lbjp;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v0, p0, Layo$2;->this$0:Layo;

    iget-object v1, p0, Layo$2;->val$pingMessage:Lbjp;

    invoke-virtual {v1}, Lbjp;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Layo;->mPingIds:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Layo;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Layo$3;

    invoke-direct {v3, v0, v1}, Layo$3;-><init>(Layo;Ljava/lang/String;)V

    iget-wide v0, v0, Layo;->mTimeoutMillis:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CHAT-LOG: FAILED SENDING PING "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Layo$2;->val$pingMessage:Lbjp;

    invoke-virtual {v1}, Lbjp;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_MESSAGE_QUEUE_FULL:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    if-ne p2, v0, :cond_0

    .line 95
    iget-object v0, p0, Layo$2;->this$0:Layo;

    iget-object v0, v0, Layo;->mInterface:Layo$a;

    invoke-interface {v0}, Layo$a;->f()V

    goto :goto_0
.end method
