.class public Lcom/snapchat/android/SnapkidzHomeActivity;
.super Lcom/snapchat/android/SnapchatActivity;
.source "SourceFile"


# instance fields
.field public a:Lbej;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/SnapkidzHomeActivity;->b:Z

    return-void
.end method

.method private a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 141
    const v1, 0x7f0a0246

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 143
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 144
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x2c3

    if-ne p2, v0, :cond_0

    .line 58
    invoke-static {p0}, Latq;->a(Landroid/app/Activity;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 67
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbq;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 69
    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onBackPressed()V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

    .line 105
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Laxy;->a(Ljava/io/File;Ljava/io/File;)V

    .line 107
    invoke-static {}, Lapz;->a()Lapz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lapz;->a(Landroid/content/Context;)V

    .line 109
    const/4 v0, 0x1

    invoke-static {v0}, Lakr;->f(Z)V

    .line 110
    const v0, 0x7f0400ac

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapkidzHomeActivity;->setContentView(I)V

    .line 111
    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 113
    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 115
    new-instance v0, Lcom/snapchat/android/camera/CameraFragment;

    invoke-direct {v0}, Lcom/snapchat/android/camera/CameraFragment;-><init>()V

    const-string v1, "CameraFragment"

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/SnapkidzHomeActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;)V

    .line 119
    const v0, 0x7f0a0246

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapkidzHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/SnapkidzHomeActivity$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapkidzHomeActivity$1;-><init>(Lcom/snapchat/android/SnapkidzHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 126
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onDestroy()V

    .line 94
    invoke-static {}, Lapz;->a()Lapz;

    move-result-object v0

    invoke-virtual {v0}, Lapz;->b()V

    .line 95
    return-void
.end method

.method public onImageSnapBitmapReadyForSnapPreview(Lbda;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p1, Lbda;->mBitmap:Landroid/graphics/Bitmap;

    .line 195
    iget-object v1, p0, Lcom/snapchat/android/SnapkidzHomeActivity;->a:Lbej;

    iget-object v1, v1, Lbej;->mMediabryo:Laji;

    iput-object v0, v1, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    .line 196
    iget-object v0, p0, Lcom/snapchat/android/SnapkidzHomeActivity;->a:Lbej;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapkidzHomeActivity;->onSnapCapturedEvent(Lbej;)V

    .line 197
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 75
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    .line 77
    :cond_0
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcv;

    invoke-direct {v1, p1, p2}, Lbcv;-><init>(ILandroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 78
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/SnapchatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/snapchat/android/SnapkidzHomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onPause()V

    .line 84
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 85
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lakp;->a(Lakp$b;)V

    .line 89
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onResume()V

    .line 131
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 133
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 134
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/SnapkidzHomeActivity;->b:Z

    .line 137
    :cond_0
    return-void
.end method

.method public onSnapCapturedEvent(Lbej;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 173
    iput-object p1, p0, Lcom/snapchat/android/SnapkidzHomeActivity;->a:Lbej;

    .line 177
    iget-object v0, p1, Lbej;->mMediabryo:Laji;

    invoke-virtual {v0}, Laji;->h()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lbej;->mMediabryo:Laji;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 186
    new-instance v0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-direct {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;-><init>()V

    const-string v1, "preview"

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/SnapkidzHomeActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onWindowFocusChanged(Z)V

    .line 154
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/SnapkidzHomeActivity;->b:Z

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/SnapkidzHomeActivity;->b:Z

    .line 158
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdg;

    invoke-direct {v1}, Lbdg;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 160
    :cond_0
    return-void
.end method
