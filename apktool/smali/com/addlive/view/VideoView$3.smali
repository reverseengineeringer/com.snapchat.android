.class Lcom/addlive/view/VideoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/view/VideoView;->resolutionChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/view/VideoView;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/addlive/view/VideoView;II)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/addlive/view/VideoView$3;->this$0:Lcom/addlive/view/VideoView;

    iput p2, p0, Lcom/addlive/view/VideoView$3;->val$width:I

    iput p3, p0, Lcom/addlive/view/VideoView$3;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/addlive/view/VideoView$3;->this$0:Lcom/addlive/view/VideoView;

    # getter for: Lcom/addlive/view/VideoView;->renderer:Lcom/addlive/view/VideoRenderer;
    invoke-static {v0}, Lcom/addlive/view/VideoView;->access$100(Lcom/addlive/view/VideoView;)Lcom/addlive/view/VideoRenderer;

    move-result-object v0

    iget v1, p0, Lcom/addlive/view/VideoView$3;->val$width:I

    iget v2, p0, Lcom/addlive/view/VideoView$3;->val$height:I

    invoke-virtual {v0, v1, v2}, Lcom/addlive/view/VideoRenderer;->onResolutionChanged(II)V

    .line 130
    return-void
.end method
