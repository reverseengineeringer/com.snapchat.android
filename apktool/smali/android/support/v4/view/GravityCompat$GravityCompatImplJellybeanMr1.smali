.class final Landroid/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/GravityCompat$GravityCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/GravityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GravityCompatImplJellybeanMr1"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 0

    .prologue
    .line 77
    invoke-static/range {p1 .. p8}, Landroid/support/v4/view/GravityCompatJellybeanMr1;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V

    .line 79
    return-void
.end method

.method public final apply$1d198dab(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 71
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/GravityCompatJellybeanMr1;->apply$1d198dab(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 72
    return-void
.end method

.method public final applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    .prologue
    .line 83
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/GravityCompatJellybeanMr1;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 84
    return-void
.end method

.method public final getAbsoluteGravity(II)I
    .locals 1

    .prologue
    .line 65
    invoke-static {p1, p2}, Landroid/support/v4/view/GravityCompatJellybeanMr1;->getAbsoluteGravity(II)I

    move-result v0

    return v0
.end method
