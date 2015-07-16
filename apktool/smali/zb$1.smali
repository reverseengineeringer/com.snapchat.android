.class public final Lzb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lzb;


# direct methods
.method public constructor <init>(Lzb;Lcom/snapchat/android/model/chat/ChatConversation;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lzb$1;->c:Lzb;

    iput-object p2, p0, Lzb$1;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iput-object p3, p0, Lzb$1;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lzb$1;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSCCPMessageSentTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 170
    iget-object v0, p0, Lzb$1;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->l()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lzb$1;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
