.class final Lcom/snapchat/android/ui/CustomVolumeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/CustomVolumeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/CustomVolumeView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CustomVolumeView;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/snapchat/android/ui/CustomVolumeView$1;->a:Lcom/snapchat/android/ui/CustomVolumeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView$1;->a:Lcom/snapchat/android/ui/CustomVolumeView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CustomVolumeView;->setAlpha(F)V

    .line 88
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView$1;->a:Lcom/snapchat/android/ui/CustomVolumeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CustomVolumeView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView$1;->a:Lcom/snapchat/android/ui/CustomVolumeView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CustomVolumeView;->setAlpha(F)V

    .line 84
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
