.class Lcom/brightcove/player/view/BrightcovePlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BrightcovePlayer;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcovePlayer;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BrightcovePlayer;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcovePlayer$2;->this$0:Lcom/brightcove/player/view/BrightcovePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 1
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer$2;->this$0:Lcom/brightcove/player/view/BrightcovePlayer;

    # getter for: Lcom/brightcove/player/view/BrightcovePlayer;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/view/BrightcovePlayer;->access$200(Lcom/brightcove/player/view/BrightcovePlayer;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    invoke-interface {v0}, Lcom/brightcove/player/event/EventEmitter;->off()V

    .line 284
    return-void
.end method
