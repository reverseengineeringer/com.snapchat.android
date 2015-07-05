.class Lorg/lucasr/twowayview/TwoWayView$PositionScroller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/lucasr/twowayview/TwoWayView$PositionScroller;I)V
    .locals 0

    .prologue
    .line 6756
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$1;->this$1:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    iput p2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6758
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$1;->this$1:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$1;->val$position:I

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->start(I)V

    .line 6759
    return-void
.end method
