.class Lcom/addlive/view/ALVideoTextureView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/view/ALVideoTextureView;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/view/ALVideoTextureView;


# direct methods
.method constructor <init>(Lcom/addlive/view/ALVideoTextureView;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/addlive/view/ALVideoTextureView$2;->this$0:Lcom/addlive/view/ALVideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView$2;->this$0:Lcom/addlive/view/ALVideoTextureView;

    # getter for: Lcom/addlive/view/ALVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;
    invoke-static {v0}, Lcom/addlive/view/ALVideoTextureView;->access$200(Lcom/addlive/view/ALVideoTextureView;)Lcom/addlive/view/VideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addlive/view/VideoRenderer;->onStopRendering()V

    .line 106
    return-void
.end method
