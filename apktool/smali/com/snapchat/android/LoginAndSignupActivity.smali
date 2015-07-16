.class public Lcom/snapchat/android/LoginAndSignupActivity;
.super Lcom/snapchat/android/SnapchatCameraBackgroundActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private final b:Landroid/graphics/Rect;

.field private final c:Lakr;

.field private d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/LoginAndSignupActivity;-><init>(Lakr;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lakr;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->b:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Lcom/snapchat/android/LoginAndSignupActivity$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/LoginAndSignupActivity$1;-><init>(Lcom/snapchat/android/LoginAndSignupActivity;)V

    iput-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 65
    iput-object p1, p0, Lcom/snapchat/android/LoginAndSignupActivity;->c:Lakr;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/LoginAndSignupActivity;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static a(Lbls;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lbls;->a()Lbls$a;

    move-result-object v0

    sget-object v3, Lbls$a;->NEEDS_PHONE_VERIFIED:Lbls$a;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lakr;->a(Z)V

    .line 141
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lbls;->a()Lbls$a;

    move-result-object v0

    sget-object v3, Lbls$a;->NEEDS_CAPTCHA:Lbls$a;

    if-ne v0, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lakr;->b(Z)V

    .line 143
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lbls;->b()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lakr;->c(Ljava/lang/String;)V

    .line 144
    return-void

    :cond_0
    move v0, v2

    .line 139
    goto :goto_0

    :cond_1
    move v1, v2

    .line 141
    goto :goto_1

    .line 143
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic b(Lcom/snapchat/android/LoginAndSignupActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->a:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    const v3, 0x7f0a026d

    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->finish()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    .line 93
    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    instance-of v1, v0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;

    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->finish()V

    goto :goto_0

    .line 97
    :cond_2
    instance-of v1, v0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    if-eqz v1, :cond_3

    .line 101
    invoke-static {v2}, Lakr;->c(Z)V

    .line 103
    invoke-static {v2}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->finish()V

    goto :goto_0

    .line 106
    :cond_3
    instance-of v0, v0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-direct {v1}, Lcom/snapchat/android/fragments/signup/LoginFragment;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 110
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;

    invoke-direct {v1}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

    .line 70
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->a()V

    .line 75
    if-nez p1, :cond_0

    .line 76
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 77
    const v1, 0x7f0a026d

    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 80
    :cond_0
    const v0, 0x7f0a026e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LoginAndSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->a:Landroid/view/View;

    .line 81
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 124
    invoke-super {p0}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->onPause()V

    .line 126
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 129
    iget-object v1, p0, Lcom/snapchat/android/LoginAndSignupActivity;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 135
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 136
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/LoginAndSignupActivity;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/kxkxxk;->bОО041EО041E041E(Ljava/lang/String;)V

    .line 117
    invoke-super {p0}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->onResume()V

    .line 119
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/LoginAndSignupActivity;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 120
    return-void
.end method
