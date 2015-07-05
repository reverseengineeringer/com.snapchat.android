.class final Lcom/snapchat/android/model/chat/ChatConversation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/model/chat/ChatConversation;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation$2;->this$0:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 205
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation$2;->this$0:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Lbic;

    .line 206
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation$2;->this$0:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    .line 207
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcp;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation$2;->this$0:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Lcom/snapchat/android/model/chat/ChatConversation;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "presence timeout (16000 seconds)"

    invoke-direct {v1, v2, v3, v4}, Lbcp;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 210
    return-void
.end method
