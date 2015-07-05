.class Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->processEvent(Lcom/brightcove/player/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;


# direct methods
.method constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1$1;->this$2:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 732
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1$1;->this$2:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2400(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    const-string v1, "play"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 733
    return-void
.end method
