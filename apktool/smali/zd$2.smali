.class final Lzd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzd;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lzd;


# direct methods
.method constructor <init>(Lzd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lzd$2;->b:Lzd;

    iput-object p2, p0, Lzd$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lzd$2;->b:Lzd;

    iget-object v0, v0, Lzd;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lzd$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lzd$2;->b:Lzd;

    iget-object v1, p0, Lzd$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzd;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lzd$2;->b:Lzd;

    iget-object v0, v0, Lzd;->a:Ltt;

    iget-object v1, p0, Lzd$2;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltt;->a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    .line 147
    :cond_0
    return-void
.end method
