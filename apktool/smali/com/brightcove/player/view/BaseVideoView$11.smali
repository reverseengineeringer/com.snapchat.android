.class Lcom/brightcove/player/view/BaseVideoView$11;
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
    .line 525
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView$11;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$11;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    const/4 v1, 0x0

    # invokes: Lcom/brightcove/player/view/BaseVideoView;->setCurrentlyPlaying(Z)V
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->access$700(Lcom/brightcove/player/view/BaseVideoView;Z)V

    .line 529
    return-void
.end method
