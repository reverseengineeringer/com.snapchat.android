.class final Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i()V
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
    .line 874
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 903
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 891
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/ui/ProfileCameraMaskView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProfileCameraMaskView;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProfilePictureView;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setScrollable(Z)V

    .line 895
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setInProfilePictureView(Z)V

    .line 897
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbfk;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v2}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 898
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 907
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 878
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ProfilePictureView;->getSnapcodeSvgImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 879
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setBackgroundViewVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/ui/ProfileCameraMaskView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/ProfileCameraMaskView;->setVisibility(I)V

    .line 883
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    move-result-object v0

    iget v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->e:F

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    move-result-object v1

    iget v1, v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->e:F

    sub-float/2addr v0, v1

    .line 886
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lxn;

    move-result-object v1

    invoke-interface {v1, v2, v2, v0}, Lxn;->a(FFF)V

    .line 887
    return-void
.end method
