.class final Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 844
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    const v4, 0x3f266666    # 0.65f

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 812
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setBackgroundViewVisibility(I)V

    .line 813
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/ui/ProfileCameraMaskView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProfileCameraMaskView;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ProfilePictureView;->getSnapcodeSvgImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProfilePictureView;->setProfilePicturesControlButtonsVisibility(I)V

    .line 817
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    iput-boolean v2, v0, Lcom/snapchat/android/ui/ProfilePictureView;->g:Z

    .line 822
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ProfilePictureView;->a(Z)V

    .line 824
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 830
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    move-result-object v0

    iget v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->d:F

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    move-result-object v1

    iget v1, v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->e:F

    sub-float/2addr v0, v1

    .line 833
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lxn;

    move-result-object v1

    invoke-interface {v1, v4, v4, v0}, Lxn;->a(FFF)V

    .line 836
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setInProfilePictureView(Z)V

    .line 838
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbfk;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v2}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 839
    return-void

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProfilePictureView;->a(Z)V

    .line 827
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 848
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 806
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProfilePictureView;->setVisibility(I)V

    .line 807
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setScrollable(Z)V

    .line 808
    return-void
.end method
