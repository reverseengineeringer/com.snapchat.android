.class Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$3;
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
    .line 785
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$3;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$3;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->refreshCaptions()V

    .line 789
    return-void
.end method
