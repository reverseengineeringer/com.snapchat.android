.class Lcom/addlive/view/ALVideoTextureView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/view/ALVideoTextureView;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/view/ALVideoTextureView;

.field final synthetic val$rendererId:I


# direct methods
.method constructor <init>(Lcom/addlive/view/ALVideoTextureView;I)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/addlive/view/ALVideoTextureView$1;->this$0:Lcom/addlive/view/ALVideoTextureView;

    iput p2, p0, Lcom/addlive/view/ALVideoTextureView$1;->val$rendererId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView$1;->this$0:Lcom/addlive/view/ALVideoTextureView;

    # getter for: Lcom/addlive/view/ALVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;
    invoke-static {v0}, Lcom/addlive/view/ALVideoTextureView;->access$200(Lcom/addlive/view/ALVideoTextureView;)Lcom/addlive/view/VideoRenderer;

    move-result-object v0

    iget v1, p0, Lcom/addlive/view/ALVideoTextureView$1;->val$rendererId:I

    iget-object v2, p0, Lcom/addlive/view/ALVideoTextureView$1;->this$0:Lcom/addlive/view/ALVideoTextureView;

    # getter for: Lcom/addlive/view/ALVideoTextureView;->mirror:Z
    invoke-static {v2}, Lcom/addlive/view/ALVideoTextureView;->access$100(Lcom/addlive/view/ALVideoTextureView;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/addlive/view/VideoRenderer;->onStartRendering(IZ)V

    .line 85
    return-void
.end method
