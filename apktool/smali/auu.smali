.class public abstract Lauu;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapchatPagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

.field public final mFragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 22
    iput-object v0, p0, Lauu;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 23
    iput-object v0, p0, Lauu;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 26
    iput-object p1, p0, Lauu;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 27
    return-void
.end method

.method public static a(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:switcher:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/ViewGroup;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lauu;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lauu;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lauu;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 81
    :cond_0
    const-string v1, "SnapchatPagerAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Detaching item #"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": f="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " v="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p3

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lauu;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    check-cast p3, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 84
    return-void
.end method

.method public final finishUpdate$52bc874c()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lauu;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lauu;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lauu;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 107
    iget-object v0, p0, Lauu;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 109
    :cond_0
    return-void
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    iget-object v0, p0, Lauu;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lauu;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lauu;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0, p2}, Lauu;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lauu;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    const-string v1, "SnapchatPagerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attaching item #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": f="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lauu;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 63
    :cond_1
    :goto_0
    iget-object v1, p0, Lauu;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 64
    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 65
    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 68
    :cond_2
    return-object v0

    .line 57
    :cond_3
    invoke-virtual {p0, p1, p2}, Lauu;->a(Landroid/view/ViewGroup;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 58
    const-string v1, "SnapchatPagerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding item #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": f="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v1, p0, Lauu;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-static {v3, p2}, Lauu;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 113
    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setPrimaryItem$30510aeb(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    check-cast p1, Landroid/support/v4/app/Fragment;

    .line 89
    iget-object v0, p0, Lauu;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq p1, v0, :cond_2

    .line 90
    iget-object v0, p0, Lauu;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lauu;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 92
    iget-object v0, p0, Lauu;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 94
    :cond_0
    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 96
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 98
    :cond_1
    iput-object p1, p0, Lauu;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 100
    :cond_2
    return-void
.end method

.method public final startUpdate$52bc874c()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
