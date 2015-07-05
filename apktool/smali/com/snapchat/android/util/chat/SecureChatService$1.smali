.class public final Lcom/snapchat/android/util/chat/SecureChatService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/chat/SecureChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/util/chat/SecureChatService;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/chat/SecureChatService;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatService$1;->this$0:Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService$1;->this$0:Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatService;->a(Lcom/snapchat/android/util/chat/SecureChatService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService$1;->this$0:Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatService;->stopSelf()V

    .line 129
    :cond_0
    return-void
.end method
