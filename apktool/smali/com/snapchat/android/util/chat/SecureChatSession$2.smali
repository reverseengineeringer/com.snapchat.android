.class final Lcom/snapchat/android/util/chat/SecureChatSession$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/chat/SecureChatSession;
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
    .line 237
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$2;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->W()V

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$2;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;)I

    move-result v0

    sget v1, Lcom/snapchat/android/util/chat/SecureChatSession$b;->DISCONNECTED$7133d94d:I

    if-eq v0, v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$2;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->b(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->DISCONNECTED:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-eq v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$2;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    goto :goto_0
.end method
