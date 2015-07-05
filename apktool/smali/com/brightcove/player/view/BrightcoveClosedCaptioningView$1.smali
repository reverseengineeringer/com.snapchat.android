.class Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$1;
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
    .line 736
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$1;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2

    .prologue
    .line 739
    const-string v0, "playheadPosition"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 740
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$1;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->doUpdateCaption(Ljava/lang/Integer;)V

    .line 741
    return-void
.end method
