.class final Lcom/snapchat/android/util/chat/SecureChatSession$3;
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
    .line 264
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$3;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$3;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;)I

    move-result v0

    sget v1, Lcom/snapchat/android/util/chat/SecureChatSession$b;->CONNECTED$7133d94d:I

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$3;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->d(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    .line 271
    :cond_0
    return-void
.end method
