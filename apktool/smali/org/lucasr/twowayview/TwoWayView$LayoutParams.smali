.class public Lorg/lucasr/twowayview/TwoWayView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field forceAdd:Z

.field id:J

.field scrappedFromPosition:I

.field viewType:I


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 5893
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5873
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->id:J

    .line 5895
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    if-ne v0, v3, :cond_0

    .line 5896
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    .line 5902
    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    if-ne v0, v3, :cond_1

    .line 5903
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    .line 5908
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 5911
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5873
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->id:J

    .line 5913
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    if-ne v0, v2, :cond_0

    .line 5914
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    .line 5920
    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    if-ne v0, v2, :cond_1

    .line 5921
    const/4 v0, -0x2

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    .line 5926
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 5929
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5873
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->id:J

    .line 5931
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    if-ne v0, v3, :cond_0

    .line 5932
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    .line 5938
    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    if-ne v0, v3, :cond_1

    .line 5939
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    .line 5944
    :cond_1
    return-void
.end method
