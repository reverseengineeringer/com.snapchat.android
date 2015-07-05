.class Lcom/addlive/view/CircleVideoTextureView$InvalidateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/InvalidateCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/view/CircleVideoTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvalidateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/view/CircleVideoTextureView;


# direct methods
.method private constructor <init>(Lcom/addlive/view/CircleVideoTextureView;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/addlive/view/CircleVideoTextureView$InvalidateCallback;->this$0:Lcom/addlive/view/CircleVideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/addlive/view/CircleVideoTextureView;Lcom/addlive/view/CircleVideoTextureView$1;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/addlive/view/CircleVideoTextureView$InvalidateCallback;-><init>(Lcom/addlive/view/CircleVideoTextureView;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView$InvalidateCallback;->this$0:Lcom/addlive/view/CircleVideoTextureView;

    # getter for: Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;
    invoke-static {v0}, Lcom/addlive/view/CircleVideoTextureView;->access$300(Lcom/addlive/view/CircleVideoTextureView;)Lcom/addlive/view/GLThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->requestRender()V

    .line 177
    return-void
.end method
