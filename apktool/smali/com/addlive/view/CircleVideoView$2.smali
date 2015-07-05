.class Lcom/addlive/view/CircleVideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/view/CircleVideoView;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/view/CircleVideoView;


# direct methods
.method constructor <init>(Lcom/addlive/view/CircleVideoView;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/addlive/view/CircleVideoView$2;->this$0:Lcom/addlive/view/CircleVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/addlive/view/CircleVideoView$2;->this$0:Lcom/addlive/view/CircleVideoView;

    # getter for: Lcom/addlive/view/CircleVideoView;->renderer:Lcom/addlive/view/VideoRenderer;
    invoke-static {v0}, Lcom/addlive/view/CircleVideoView;->access$100(Lcom/addlive/view/CircleVideoView;)Lcom/addlive/view/VideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addlive/view/VideoRenderer;->onStopRendering()V

    .line 99
    iget-object v0, p0, Lcom/addlive/view/CircleVideoView$2;->this$0:Lcom/addlive/view/CircleVideoView;

    invoke-virtual {v0}, Lcom/addlive/view/CircleVideoView;->requestRender()V

    .line 100
    return-void
.end method
