.class public final Layn;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layn$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecureChatSessionOutputThread"


# instance fields
.field public final mAckTracker:Layk;

.field public final mMessageQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lbji;",
            ">;"
        }
    .end annotation
.end field

.field public final mOutputStreamQueue:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Layj;",
            ">;"
        }
    .end annotation
.end field

.field public final mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mStreamProcessingStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Layf;",
            ">;"
        }
    .end annotation
.end field

.field public final mThreadState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Layn$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Layk;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Layn;->mMessageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 37
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v0, p0, Layn;->mOutputStreamQueue:Ljava/util/concurrent/SynchronousQueue;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Layn;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Layn$a;->AWAITING_CONNECTION:Layn$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Layn;->mThreadState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Layn;->mStreamProcessingStateListeners:Ljava/util/List;

    .line 44
    const-string v0, "SecureChatSessionOutputThread"

    invoke-virtual {p0, v0}, Layn;->setName(Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Layn;->mAckTracker:Layk;

    .line 46
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Layn;->mStreamProcessingStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layf;

    .line 127
    invoke-interface {v0, p1}, Layf;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 74
    :cond_0
    iget-object v1, p0, Layn;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    .line 77
    :try_start_0
    iget-object v1, p0, Layn;->mOutputStreamQueue:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Layj;

    .line 78
    iget-object v2, p0, Layn;->mThreadState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Layn$a;->CONNECTED:Layn$a;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 80
    iget-object v2, p0, Layn;->mStreamProcessingStateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Layf;

    invoke-interface {v2}, Layf;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 97
    :goto_1
    iget-object v1, p0, Layn;->mThreadState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Layn$a;->AWAITING_CONNECTION:Layn$a;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 98
    invoke-direct {p0, v2}, Layn;->a(Ljava/lang/Exception;)V

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v3, p0, Layn;->mMessageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbji;

    .line 102
    iget-object v5, p0, Layn;->mAckTracker:Layk;

    invoke-virtual {v1}, Lbji;->k()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_ERROR:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception in SecureChatSessionOutputThread: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v6, v7}, Layk;->a(Ljava/lang/String;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto :goto_2

    .line 81
    :cond_1
    :goto_3
    :try_start_1
    iget-object v2, p0, Layn;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    .line 82
    iget-object v2, p0, Layn;->mMessageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lbji;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "CHAT-LOG: SecureChatSessionOutputThread writing message "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1, v3}, Layj;->a(Lbji;)V

    .line 86
    iget-object v2, p0, Layn;->mAckTracker:Layk;

    invoke-virtual {v3}, Lbji;->k()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Layk;->mMessageCallbacksPendingWrite:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    sget-object v6, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SUCCESS:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const/4 v7, 0x0

    invoke-interface {v2, v5, v6, v7}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 87
    :catch_1
    move-exception v1

    .line 88
    :try_start_3
    iget-object v2, p0, Layn;->mAckTracker:Layk;

    invoke-virtual {v3}, Lbji;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_ERROR:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6}, Layk;->a(Ljava/lang/String;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v2, v1

    .line 90
    goto/16 :goto_1

    :cond_2
    move-object v2, v4

    .line 92
    goto/16 :goto_1

    .line 106
    :cond_3
    return-void
.end method
