.class public abstract Lcom/snapchat/android/SnapchatCameraBackgroundActivity;
.super Lcom/snapchat/android/SnapchatActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/camera/BackgroundCameraFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 13
    const v0, 0x7f040078

    invoke-super {p0, v0}, Lcom/snapchat/android/SnapchatActivity;->setContentView(I)V

    .line 16
    const v0, 0x7f0a026c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 17
    new-instance v1, Lcom/snapchat/android/camera/BackgroundCameraFragment;

    invoke-direct {v1}, Lcom/snapchat/android/camera/BackgroundCameraFragment;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->a:Lcom/snapchat/android/camera/BackgroundCameraFragment;

    .line 18
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 19
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->a:Lcom/snapchat/android/camera/BackgroundCameraFragment;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 22
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->a:Lcom/snapchat/android/camera/BackgroundCameraFragment;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/BackgroundCameraFragment;->a(I)V

    .line 27
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
