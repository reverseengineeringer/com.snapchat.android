.class public Lcom/snapchat/android/util/debug/BugReportActivity;
.super Lcom/snapchat/android/SnapchatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$a;


# instance fields
.field private mRemoteLogFriendName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportActivity;->mRemoteLogFriendName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/SnapchatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 65
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 66
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 67
    invoke-static {v0, p0}, Lavp;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 68
    if-nez v1, :cond_1

    .line 69
    const v0, 0x7f0c01d1

    invoke-static {v0, p0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {p0, v1}, Lbaf;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 75
    const v0, 0x7f0a0087

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final onBackStackChanged()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 52
    if-lez v0, :cond_0

    .line 53
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 54
    instance-of v1, v0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$a;

    if-eqz v1, :cond_0

    .line 55
    check-cast v0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$a;

    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportActivity;->mRemoteLogFriendName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$a;->a(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/snapchat/android/util/debug/BugReportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/snapchat/android/util/debug/BugReportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

    .line 27
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f040010

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportActivity;->setContentView(I)V

    .line 30
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Someone directly hacked and called  an activity they are not supposed to!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 34
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onStart()V

    .line 41
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportActivity;->mShakeReporter:Lbau;

    invoke-virtual {v0}, Lbau;->a()V

    .line 42
    return-void
.end method
