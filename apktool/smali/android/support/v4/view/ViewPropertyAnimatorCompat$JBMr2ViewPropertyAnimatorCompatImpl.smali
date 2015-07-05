.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;
.super Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBMr2ViewPropertyAnimatorCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolator$38b20421(Landroid/view/View;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 583
    invoke-static {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompatJellybeanMr2;->getInterpolator(Landroid/view/View;)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method
