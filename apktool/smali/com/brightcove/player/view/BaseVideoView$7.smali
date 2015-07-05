.class Lcom/brightcove/player/view/BaseVideoView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BaseVideoView;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BaseVideoView;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BaseVideoView;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView$7;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2

    .prologue
    .line 492
    const-string v0, "seekPosition"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 493
    if-ltz v0, :cond_0

    .line 494
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$7;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iput v0, v1, Lcom/brightcove/player/view/BaseVideoView;->playheadPosition:I

    .line 496
    :cond_0
    return-void
.end method
