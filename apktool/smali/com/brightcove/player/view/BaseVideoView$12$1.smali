.class Lcom/brightcove/player/view/BaseVideoView$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BaseVideoView$12;->processEvent(Lcom/brightcove/player/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brightcove/player/view/BaseVideoView$12;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BaseVideoView$12;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView$12$1;->this$1:Lcom/brightcove/player/view/BaseVideoView$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$12$1;->this$1:Lcom/brightcove/player/view/BaseVideoView$12;

    iget-object v0, v0, Lcom/brightcove/player/view/BaseVideoView$12;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BaseVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 541
    return-void
.end method
