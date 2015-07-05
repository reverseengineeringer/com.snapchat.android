.class Lcom/addlive/view/ALVideoTextureView$InvalidateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/InvalidateCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/view/ALVideoTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvalidateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/view/ALVideoTextureView;


# direct methods
.method private constructor <init>(Lcom/addlive/view/ALVideoTextureView;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/addlive/view/ALVideoTextureView$InvalidateCallback;->this$0:Lcom/addlive/view/ALVideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/addlive/view/ALVideoTextureView;Lcom/addlive/view/ALVideoTextureView$1;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/addlive/view/ALVideoTextureView$InvalidateCallback;-><init>(Lcom/addlive/view/ALVideoTextureView;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView$InvalidateCallback;->this$0:Lcom/addlive/view/ALVideoTextureView;

    # getter for: Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;
    invoke-static {v0}, Lcom/addlive/view/ALVideoTextureView;->access$300(Lcom/addlive/view/ALVideoTextureView;)Lcom/addlive/view/GLThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->requestRender()V

    .line 186
    return-void
.end method
