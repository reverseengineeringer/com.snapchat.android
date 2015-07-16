.class final Lzk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic b:Laka;

.field final synthetic c:Lzk;


# direct methods
.method constructor <init>(Lzk;Lcom/snapchat/android/model/chat/ChatConversation;Laka;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lzk$1;->c:Lzk;

    iput-object p2, p0, Lzk$1;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iput-object p3, p0, Lzk$1;->b:Laka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lzk$1;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x1

    iget-object v2, p0, Lzk$1;->b:Laka;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(ILaka;)I

    .line 291
    return-void
.end method
