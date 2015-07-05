.class final Lcom/snapchat/android/preview/SnapPreviewFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/preview/SnapPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/preview/SnapPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V
    .locals 0

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$9;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1157
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1153
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 1132
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1133
    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1134
    new-instance v1, Lcom/snapchat/android/preview/SnapPreviewFragment$9$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$9$1;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment$9;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1148
    iget-object v1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$9;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v1}, Lcom/snapchat/android/preview/SnapPreviewFragment;->y(Lcom/snapchat/android/preview/SnapPreviewFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1149
    return-void
.end method
