.class Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;


# direct methods
.method constructor <init>(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$2;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "boolean"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 171
    iget-object v1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$2;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->setVideoHasCaptions(Ljava/lang/Boolean;)V

    .line 172
    return-void
.end method
