.class final Lcom/snapchat/android/preview/SnapPreviewFragment$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/preview/SnapPreviewFragment$9;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/preview/SnapPreviewFragment$9;


# direct methods
.method constructor <init>(Lcom/snapchat/android/preview/SnapPreviewFragment$9;)V
    .locals 0

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$9$1;->a:Lcom/snapchat/android/preview/SnapPreviewFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$9$1;->a:Lcom/snapchat/android/preview/SnapPreviewFragment$9;

    iget-object v0, v0, Lcom/snapchat/android/preview/SnapPreviewFragment$9;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->y(Lcom/snapchat/android/preview/SnapPreviewFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1141
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1137
    return-void
.end method
