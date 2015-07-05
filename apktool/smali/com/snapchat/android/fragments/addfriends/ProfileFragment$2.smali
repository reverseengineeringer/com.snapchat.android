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
    .line 750
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 791
    const-string v0, "ProfileFragment"

    const-string v1, "profile images - animating to profile picture view has been canceled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    const v4, 0x3f266666    # 0.65f

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 759
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setBackgroundViewVisibility(I)V

    .line 760
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/ui/ProfileCameraMaskView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/ProfileCameraMaskView;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ProfilePictureView;->getSnapcodeSvgImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/ProfilePictureView;->setProfilePicturesControlButtonsVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    iput-boolean v2, v0, Lcom/snapchat/android/ui/ProfilePictureView;->g:Z

    .line 769
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ProfilePictureView;->a(Z)V

    .line 771
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 777
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    move-result-object v0

    iget v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->d:F

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    move-result-object v1

    iget v1, v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->e:F

    sub-float/2addr v0, v1

    .line 780
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lwr;

    move-result-object v1

    invoke-interface {v1, v4, v4, v0}, Lwr;->a(FFF)V

    .line 783
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setInProfilePictureView(Z)V

    .line 785
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbel;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v2}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 786
    const-string v0, "ProfileFragment"

    const-string v1, "profile images - animated into profile picture view"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/ProfilePictureView;->a(Z)V

    .line 774
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 795
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 753
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProfilePictureView;->setVisibility(I)V

    .line 754
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setScrollable(Z)V

    .line 755
    return-void
.end method
