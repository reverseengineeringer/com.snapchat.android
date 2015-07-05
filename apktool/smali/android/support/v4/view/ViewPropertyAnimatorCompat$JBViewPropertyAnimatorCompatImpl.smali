.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;
.super Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBViewPropertyAnimatorCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 556
    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final setListener(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V
    .locals 0

    .prologue
    .line 560
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB;->setListener(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V

    .line 561
    return-void
.end method

.method public final withEndAction(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 570
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB;->withEndAction(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 571
    return-void
.end method

.method public final withLayer(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 575
    invoke-static {p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB;->withLayer(Landroid/view/View;)V

    .line 576
    return-void
.end method

.method public final withStartAction(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 565
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB;->withStartAction(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 566
    return-void
.end method
