.class Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrowScrollFocusResult"
.end annotation


# instance fields
.field private mAmountToScroll:I

.field private mSelectedPosition:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lucasr/twowayview/TwoWayView$1;)V
    .locals 0

    .prologue
    .line 6625
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToScroll()I
    .locals 1

    .prologue
    .line 6642
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 6638
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .locals 0

    .prologue
    .line 6633
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 6634
    iput p2, p0, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 6635
    return-void
.end method
