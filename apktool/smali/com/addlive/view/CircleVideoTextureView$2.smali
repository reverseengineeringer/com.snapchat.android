.class Lcom/addlive/view/CircleVideoTextureView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/view/CircleVideoTextureView;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/view/CircleVideoTextureView;


# direct methods
.method constructor <init>(Lcom/addlive/view/CircleVideoTextureView;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/addlive/view/CircleVideoTextureView$2;->this$0:Lcom/addlive/view/CircleVideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView$2;->this$0:Lcom/addlive/view/CircleVideoTextureView;

    # getter for: Lcom/addlive/view/CircleVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;
    invoke-static {v0}, Lcom/addlive/view/CircleVideoTextureView;->access$200(Lcom/addlive/view/CircleVideoTextureView;)Lcom/addlive/view/VideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addlive/view/VideoRenderer;->onStopRendering()V

    .line 93
    return-void
.end method
