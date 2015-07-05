.class public abstract Landroid/support/v4/widget/ViewDragHelper$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOrderedChildIndex(I)I
    .locals 0

    .prologue
    .line 249
    return p0
.end method

.method private static getViewVerticalDragRange$3c7ec8d0()I
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clampViewPositionHorizontal$17e143b0(Landroid/view/View;I)I
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public clampViewPositionVertical$17e143b0(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public onEdgeLock$134632()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouched$255f295()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public onViewCaptured$5359dc9a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onViewPositionChanged$5b6f797d(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onViewReleased$17e2ac03(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public abstract tryCaptureView$5359dc96(Landroid/view/View;)Z
.end method
