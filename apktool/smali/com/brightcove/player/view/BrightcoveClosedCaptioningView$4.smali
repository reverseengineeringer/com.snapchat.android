.class Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$4;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "boolean"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 796
    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$4;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    sget-object v1, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;->ON:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->setMode(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;)V

    .line 798
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$4;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->setVisibility(I)V

    .line 799
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$4;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->bringToFront()V

    .line 800
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$4;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->registerProgressListener()V

    .line 806
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$4;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    sget-object v1, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;->OFF:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->setMode(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;)V

    .line 803
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$4;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$4;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->cancelProgressListener()V

    goto :goto_0
.end method
