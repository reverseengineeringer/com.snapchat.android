.class public Lcom/snapchat/android/ScAcceptTermsActivity;
.super Lcom/snapchat/android/SnapchatActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 47
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 48
    if-lez v1, :cond_0

    .line 50
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    .line 52
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f0a031e

    invoke-virtual {p0}, Lcom/snapchat/android/ScAcceptTermsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/snapchat/android/ScAcceptTermsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

    .line 19
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f040090

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ScAcceptTermsActivity;->setContentView(I)V

    .line 23
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 24
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-direct {v1}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;-><init>()V

    .line 27
    const-string v2, "ScAcceptTermsFragment"

    .line 28
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 30
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onPause()V

    .line 41
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onResume()V

    .line 35
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public onStartFragmentEvent(Lbev;)V
    .locals 4
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p1, Lbev;->mFragmentToStart:Lcom/snapchat/android/util/fragment/SnapchatFragment;

    .line 63
    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0a031e

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 64
    return-void
.end method
