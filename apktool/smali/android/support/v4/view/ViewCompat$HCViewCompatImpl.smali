.class Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HCViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlpha(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 759
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getAlpha(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method final getFrameTime()J
    .locals 2

    .prologue
    .line 755
    invoke-static {}, Landroid/support/v4/view/ViewCompatHC;->getFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLayerType(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 767
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getLayerType(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 787
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredHeightAndState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final getMeasuredState(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 791
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 783
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final getPivotX(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 886
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getPivotX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final getPivotY(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 890
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getPivotY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final getRotation(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 861
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getRotation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final getRotationX(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 866
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getRotationX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final getRotationY(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 871
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getRotationY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final getScaleX(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 876
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getScaleX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final getScaleY(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 881
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getScaleY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final getTranslationX(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 795
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getTranslationX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final getTranslationY(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 799
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getTranslationY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final getX(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 851
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final getY(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 856
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 894
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    .line 895
    return-void
.end method

.method public final resolveSizeAndState(III)I
    .locals 1

    .prologue
    .line 779
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatHC;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public final setAlpha(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 811
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setAlpha(Landroid/view/View;F)V

    .line 812
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 773
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getLayerType(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0, p2}, Landroid/support/v4/view/ViewCompatHC;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 775
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 776
    return-void
.end method

.method public final setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 763
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatHC;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 764
    return-void
.end method

.method public final setPivotX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 843
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setPivotX(Landroid/view/View;F)V

    .line 844
    return-void
.end method

.method public final setPivotY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 847
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setPivotY(Landroid/view/View;F)V

    .line 848
    return-void
.end method

.method public final setRotation(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 823
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setRotation(Landroid/view/View;F)V

    .line 824
    return-void
.end method

.method public final setRotationX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 827
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setRotationX(Landroid/view/View;F)V

    .line 828
    return-void
.end method

.method public final setRotationY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 831
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setRotationY(Landroid/view/View;F)V

    .line 832
    return-void
.end method

.method public final setScaleX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 835
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setScaleX(Landroid/view/View;F)V

    .line 836
    return-void
.end method

.method public final setScaleY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 839
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setScaleY(Landroid/view/View;F)V

    .line 840
    return-void
.end method

.method public final setTranslationX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 803
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setTranslationX(Landroid/view/View;F)V

    .line 804
    return-void
.end method

.method public final setTranslationY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 807
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setTranslationY(Landroid/view/View;F)V

    .line 808
    return-void
.end method

.method public final setX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 815
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setX(Landroid/view/View;F)V

    .line 816
    return-void
.end method

.method public final setY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 819
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setY(Landroid/view/View;F)V

    .line 820
    return-void
.end method
