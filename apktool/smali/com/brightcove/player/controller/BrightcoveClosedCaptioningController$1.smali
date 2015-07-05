.class Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 140
    iput-object p1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$1;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/brightcove/player/R$id;->enable_captions_btn:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 145
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 146
    const-string v2, "boolean"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v2, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$1;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    # getter for: Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v2}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->access$000(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    const-string v3, "setCaptionsState"

    invoke-interface {v2, v3, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    iget-object v1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$1;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->saveClosedCaptioningState(Z)V

    .line 151
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
