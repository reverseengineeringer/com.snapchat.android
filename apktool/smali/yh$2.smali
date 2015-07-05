.class final Lyh$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyh;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lyh;


# direct methods
.method constructor <init>(Lyh;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lyh$2;->b:Lyh;

    iput-object p2, p0, Lyh$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lyh$2;->b:Lyh;

    iget-object v0, v0, Lyh;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lyh$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lyh$2;->b:Lyh;

    iget-object v1, p0, Lyh$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lyh;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "ChatGapDetector"

    const-string v1, "CHAT-LOG: Executing conversation refresh"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lyh$2;->b:Lyh;

    iget-object v0, v0, Lyh;->a:Ltd;

    iget-object v1, p0, Lyh$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ltd;->a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v0, "ChatGapDetector"

    const-string v1, "CHAT-LOG: Not executing conversation refresh because connection seqNum gap is filled"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
