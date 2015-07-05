.class Lcom/brightcove/player/event/RegisteringEventEmitter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/event/RegisteringEventEmitter;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/event/RegisteringEventEmitter;


# direct methods
.method constructor <init>(Lcom/brightcove/player/event/RegisteringEventEmitter;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/brightcove/player/event/RegisteringEventEmitter$1;->this$0:Lcom/brightcove/player/event/RegisteringEventEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter$1;->this$0:Lcom/brightcove/player/event/RegisteringEventEmitter;

    iget-object v1, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "debug"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/brightcove/player/event/RegisteringEventEmitter;->debug:Z
    invoke-static {v0, v1}, Lcom/brightcove/player/event/RegisteringEventEmitter;->access$002(Lcom/brightcove/player/event/RegisteringEventEmitter;Z)Z

    .line 99
    return-void
.end method
