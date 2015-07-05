.class Lorg/lucasr/twowayview/TwoWayView$PositionScroller$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->start(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

.field final synthetic val$boundPosition:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/lucasr/twowayview/TwoWayView$PositionScroller;II)V
    .locals 0

    .prologue
    .line 6811
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$2;->this$1:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    iput p2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$2;->val$position:I

    iput p3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$2;->val$boundPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6813
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$2;->this$1:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$2;->val$position:I

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$2;->val$boundPosition:I

    invoke-virtual {v0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->start(II)V

    .line 6814
    return-void
.end method
