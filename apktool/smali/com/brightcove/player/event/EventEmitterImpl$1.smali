.class Lcom/brightcove/player/event/EventEmitterImpl$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/event/EventEmitterImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/event/EventEmitterImpl;


# direct methods
.method constructor <init>(Lcom/brightcove/player/event/EventEmitterImpl;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/brightcove/player/event/EventEmitterImpl$1;->this$0:Lcom/brightcove/player/event/EventEmitterImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 59
    const-string v1, "event"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    new-instance v2, Lcom/brightcove/player/event/Event;

    invoke-direct {v2, v1}, Lcom/brightcove/player/event/Event;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/brightcove/player/event/EventEmitterImpl$1;->this$0:Lcom/brightcove/player/event/EventEmitterImpl;

    # invokes: Lcom/brightcove/player/event/EventEmitterImpl;->unpackProperties(Ljava/util/Map;Lcom/brightcove/player/event/Event;)V
    invoke-static {v3, v0, v2}, Lcom/brightcove/player/event/EventEmitterImpl;->access$000(Lcom/brightcove/player/event/EventEmitterImpl;Ljava/util/Map;Lcom/brightcove/player/event/Event;)V

    .line 65
    iget-object v0, p0, Lcom/brightcove/player/event/EventEmitterImpl$1;->this$0:Lcom/brightcove/player/event/EventEmitterImpl;

    const-string v3, "*"

    # invokes: Lcom/brightcove/player/event/EventEmitterImpl;->invokeListenersForEventType(Lcom/brightcove/player/event/Event;Ljava/lang/String;)V
    invoke-static {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitterImpl;->access$100(Lcom/brightcove/player/event/EventEmitterImpl;Lcom/brightcove/player/event/Event;Ljava/lang/String;)V

    .line 67
    const-string v0, "response"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/brightcove/player/event/EventEmitterImpl$1;->this$0:Lcom/brightcove/player/event/EventEmitterImpl;

    # invokes: Lcom/brightcove/player/event/EventEmitterImpl;->invokeResponseListener(Lcom/brightcove/player/event/Event;)V
    invoke-static {v0, v2}, Lcom/brightcove/player/event/EventEmitterImpl;->access$200(Lcom/brightcove/player/event/EventEmitterImpl;Lcom/brightcove/player/event/Event;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/event/EventEmitterImpl$1;->this$0:Lcom/brightcove/player/event/EventEmitterImpl;

    # invokes: Lcom/brightcove/player/event/EventEmitterImpl;->invokeListenersForEvent(Lcom/brightcove/player/event/Event;)V
    invoke-static {v0, v2}, Lcom/brightcove/player/event/EventEmitterImpl;->access$300(Lcom/brightcove/player/event/EventEmitterImpl;Lcom/brightcove/player/event/Event;)V

    goto :goto_0
.end method
