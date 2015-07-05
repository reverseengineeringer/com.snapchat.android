.class Lcom/addlive/view/CircleVideoTextureView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/view/CircleVideoTextureView;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/view/CircleVideoTextureView;

.field final synthetic val$rendererId:I


# direct methods
.method constructor <init>(Lcom/addlive/view/CircleVideoTextureView;I)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/addlive/view/CircleVideoTextureView$1;->this$0:Lcom/addlive/view/CircleVideoTextureView;

    iput p2, p0, Lcom/addlive/view/CircleVideoTextureView$1;->val$rendererId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView$1;->this$0:Lcom/addlive/view/CircleVideoTextureView;

    # getter for: Lcom/addlive/view/CircleVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;
    invoke-static {v0}, Lcom/addlive/view/CircleVideoTextureView;->access$200(Lcom/addlive/view/CircleVideoTextureView;)Lcom/addlive/view/VideoRenderer;

    move-result-object v0

    iget v1, p0, Lcom/addlive/view/CircleVideoTextureView$1;->val$rendererId:I

    iget-object v2, p0, Lcom/addlive/view/CircleVideoTextureView$1;->this$0:Lcom/addlive/view/CircleVideoTextureView;

    # getter for: Lcom/addlive/view/CircleVideoTextureView;->mirror:Z
    invoke-static {v2}, Lcom/addlive/view/CircleVideoTextureView;->access$100(Lcom/addlive/view/CircleVideoTextureView;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/addlive/view/VideoRenderer;->onStartRendering(IZ)V

    .line 72
    return-void
.end method
