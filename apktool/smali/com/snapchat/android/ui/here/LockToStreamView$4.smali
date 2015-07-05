.class final Lcom/snapchat/android/ui/here/LockToStreamView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/here/LockToStreamView;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/here/LockToStreamView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/LockToStreamView;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/snapchat/android/ui/here/LockToStreamView$4;->a:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 414
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 415
    iget-object v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView$4;->a:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-static {v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->c(Lcom/snapchat/android/ui/here/LockToStreamView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 416
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView$4;->a:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->invalidate()V

    .line 417
    return-void
.end method
