.class public final Layk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laye;


# instance fields
.field public final mMessageCallbacksPendingAcks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mMessageCallbacksPendingWrite:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mTimeoutInMillis:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x2

    const/high16 v1, 0x3f400000    # 0.75f

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Layk;->mMessageCallbacksPendingWrite:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Layk;->mMessageCallbacksPendingAcks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    iput-object p1, p0, Layk;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Layk;->mTimeoutInMillis:J

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lbji;)V
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p1}, Lbji;->j()Lbji$a;

    move-result-object v0

    sget-object v1, Lbji$a;->CONVERSATION_MESSAGE_RESPONSE:Lbji$a;

    if-ne v0, v1, :cond_0

    .line 44
    check-cast p1, Lbim;

    iget-object v0, p0, Layk;->mMessageCallbacksPendingAcks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lbim;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbim;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SUCCESS:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_NACK:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    invoke-virtual {p1}, Lbim;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Layk;->mMessageCallbacksPendingWrite:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, v1, p2, p3}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Layk;->mMessageCallbacksPendingAcks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    .line 77
    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0, v1, p2, p3}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 80
    :cond_1
    return-void
.end method
