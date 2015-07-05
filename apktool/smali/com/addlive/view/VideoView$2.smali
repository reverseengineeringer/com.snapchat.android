.class Lcom/addlive/view/VideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/view/VideoView;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/view/VideoView;


# direct methods
.method constructor <init>(Lcom/addlive/view/VideoView;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/addlive/view/VideoView$2;->this$0:Lcom/addlive/view/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/addlive/view/VideoView$2;->this$0:Lcom/addlive/view/VideoView;

    # getter for: Lcom/addlive/view/VideoView;->renderer:Lcom/addlive/view/VideoRenderer;
    invoke-static {v0}, Lcom/addlive/view/VideoView;->access$100(Lcom/addlive/view/VideoView;)Lcom/addlive/view/VideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addlive/view/VideoRenderer;->onStopRendering()V

    .line 102
    iget-object v0, p0, Lcom/addlive/view/VideoView$2;->this$0:Lcom/addlive/view/VideoView;

    invoke-virtual {v0}, Lcom/addlive/view/VideoView;->requestRender()V

    .line 103
    return-void
.end method
