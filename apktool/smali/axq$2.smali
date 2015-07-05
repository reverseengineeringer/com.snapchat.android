.class final Laxq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxq;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laxq;

.field final synthetic val$pingMessage:Lbip;


# direct methods
.method constructor <init>(Laxq;Lbip;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Laxq$2;->this$0:Laxq;

    iput-object p2, p0, Laxq$2;->val$pingMessage:Lbip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 87
    if-eqz p1, :cond_1

    .line 88
    const-string v0, "SecureChatSessionPinger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHAT-LOG: SUCCEEDED SENDING PING and WAITING for response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Laxq$2;->val$pingMessage:Lbip;

    invoke-virtual {v2}, Lbip;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Laxq$2;->this$0:Laxq;

    iget-object v1, p0, Laxq$2;->val$pingMessage:Lbip;

    invoke-virtual {v1}, Lbip;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Laxq;->mPingIds:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Laxq;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Laxq$3;

    invoke-direct {v3, v0, v1}, Laxq$3;-><init>(Laxq;Ljava/lang/String;)V

    iget-wide v0, v0, Laxq;->mTimeoutMillis:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string v0, "SecureChatSessionPinger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHAT-LOG: FAILED SENDING PING "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Laxq$2;->val$pingMessage:Lbip;

    invoke-virtual {v2}, Lbip;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "with reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_MESSAGE_QUEUE_FULL:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    if-ne p2, v0, :cond_0

    .line 95
    iget-object v0, p0, Laxq$2;->this$0:Laxq;

    iget-object v0, v0, Laxq;->mInterface:Laxq$a;

    invoke-interface {v0}, Laxq$a;->f()V

    goto :goto_0
.end method
