.class Lcom/addlive/view/ALVideoTextureView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/view/ALVideoTextureView;->resolutionChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/view/ALVideoTextureView;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/addlive/view/ALVideoTextureView;II)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/addlive/view/ALVideoTextureView$3;->this$0:Lcom/addlive/view/ALVideoTextureView;

    iput p2, p0, Lcom/addlive/view/ALVideoTextureView$3;->val$width:I

    iput p3, p0, Lcom/addlive/view/ALVideoTextureView$3;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView$3;->this$0:Lcom/addlive/view/ALVideoTextureView;

    # getter for: Lcom/addlive/view/ALVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;
    invoke-static {v0}, Lcom/addlive/view/ALVideoTextureView;->access$200(Lcom/addlive/view/ALVideoTextureView;)Lcom/addlive/view/VideoRenderer;

    move-result-object v0

    iget v1, p0, Lcom/addlive/view/ALVideoTextureView$3;->val$width:I

    iget v2, p0, Lcom/addlive/view/ALVideoTextureView$3;->val$height:I

    invoke-virtual {v0, v1, v2}, Lcom/addlive/view/VideoRenderer;->onResolutionChanged(II)V

    .line 135
    return-void
.end method
