.class Lcom/addlive/view/CircleVideoTextureView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/view/CircleVideoTextureView;->resolutionChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/view/CircleVideoTextureView;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/addlive/view/CircleVideoTextureView;II)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/addlive/view/CircleVideoTextureView$3;->this$0:Lcom/addlive/view/CircleVideoTextureView;

    iput p2, p0, Lcom/addlive/view/CircleVideoTextureView$3;->val$width:I

    iput p3, p0, Lcom/addlive/view/CircleVideoTextureView$3;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView$3;->this$0:Lcom/addlive/view/CircleVideoTextureView;

    # getter for: Lcom/addlive/view/CircleVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;
    invoke-static {v0}, Lcom/addlive/view/CircleVideoTextureView;->access$200(Lcom/addlive/view/CircleVideoTextureView;)Lcom/addlive/view/VideoRenderer;

    move-result-object v0

    iget v1, p0, Lcom/addlive/view/CircleVideoTextureView$3;->val$width:I

    iget v2, p0, Lcom/addlive/view/CircleVideoTextureView$3;->val$height:I

    invoke-virtual {v0, v1, v2}, Lcom/addlive/view/VideoRenderer;->onResolutionChanged(II)V

    .line 126
    return-void
.end method
