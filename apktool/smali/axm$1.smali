.class public final Laxm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laxm;

.field final synthetic val$messageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Laxm;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Laxm$1;->this$0:Laxm;

    iput-object p2, p0, Laxm$1;->val$messageId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Laxm$1;->this$0:Laxm;

    iget-object v1, p0, Laxm$1;->val$messageId:Ljava/lang/String;

    iget-object v0, v0, Laxm;->mMessageCallbacksPendingAcks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_TIMEOUT_ERROR:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v3, "Message timed out"

    invoke-interface {v0, v1, v2, v3}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method
