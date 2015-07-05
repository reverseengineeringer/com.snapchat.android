.class final Lcom/snapchat/android/util/chat/SecureChatService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatService;->a(Lbii;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/util/chat/SecureChatService;

.field final synthetic val$message:Lbii;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatService;Lbii;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatService$2;->this$0:Lcom/snapchat/android/util/chat/SecureChatService;

    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatService$2;->val$message:Lbii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService$2;->this$0:Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatService;->b(Lcom/snapchat/android/util/chat/SecureChatService;)Lyo;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatService$2;->val$message:Lbii;

    invoke-virtual {v0, v1}, Lyo;->a(Lbii;)V

    .line 161
    return-void
.end method
