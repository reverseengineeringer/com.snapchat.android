.class Lorg/lucasr/twowayview/TwoWayView$WindowRunnnable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lorg/lucasr/twowayview/TwoWayView;


# direct methods
.method private constructor <init>(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .prologue
    .line 6483
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$WindowRunnnable;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V
    .locals 0

    .prologue
    .line 6483
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView$WindowRunnnable;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 6487
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$WindowRunnnable;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getWindowAttachCount()I
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$3000(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView$WindowRunnnable;->mOriginalAttachCount:I

    .line 6488
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 6491
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$WindowRunnnable;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$WindowRunnnable;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getWindowAttachCount()I
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$3100(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v0

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
