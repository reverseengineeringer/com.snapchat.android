.class Lcom/brightcove/player/view/BrightcovePlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BrightcovePlayer;->onStart()V
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
    .line 219
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcovePlayer$1;->this$0:Lcom/brightcove/player/view/BrightcovePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer$1;->this$0:Lcom/brightcove/player/view/BrightcovePlayer;

    # getter for: Lcom/brightcove/player/view/BrightcovePlayer;->position:I
    invoke-static {v0}, Lcom/brightcove/player/view/BrightcovePlayer;->access$000(Lcom/brightcove/player/view/BrightcovePlayer;)I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer$1;->this$0:Lcom/brightcove/player/view/BrightcovePlayer;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayer$1;->this$0:Lcom/brightcove/player/view/BrightcovePlayer;

    # getter for: Lcom/brightcove/player/view/BrightcovePlayer;->position:I
    invoke-static {v1}, Lcom/brightcove/player/view/BrightcovePlayer;->access$000(Lcom/brightcove/player/view/BrightcovePlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->seekTo(I)V

    .line 225
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer$1;->this$0:Lcom/brightcove/player/view/BrightcovePlayer;

    const/4 v1, -0x1

    # setter for: Lcom/brightcove/player/view/BrightcovePlayer;->position:I
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BrightcovePlayer;->access$002(Lcom/brightcove/player/view/BrightcovePlayer;I)I

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer$1;->this$0:Lcom/brightcove/player/view/BrightcovePlayer;

    # getter for: Lcom/brightcove/player/view/BrightcovePlayer;->wasPlaying:Z
    invoke-static {v0}, Lcom/brightcove/player/view/BrightcovePlayer;->access$100(Lcom/brightcove/player/view/BrightcovePlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer$1;->this$0:Lcom/brightcove/player/view/BrightcovePlayer;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 230
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer$1;->this$0:Lcom/brightcove/player/view/BrightcovePlayer;

    const/4 v1, 0x0

    # setter for: Lcom/brightcove/player/view/BrightcovePlayer;->wasPlaying:Z
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BrightcovePlayer;->access$102(Lcom/brightcove/player/view/BrightcovePlayer;Z)Z

    .line 232
    :cond_1
    return-void
.end method
