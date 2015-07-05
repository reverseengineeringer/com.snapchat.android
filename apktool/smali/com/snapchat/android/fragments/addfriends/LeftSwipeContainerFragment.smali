.class public Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field public a:Lcom/snapchat/android/LeftSwipeViewPager;

.field private b:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

.field private c:Landroid/os/Bundle;

.field private d:Lmc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public static a(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;)Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;
    .locals 3
    .param p0    # Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 41
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content_fragment"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/util/fragment/SnapchatFragment;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->d:Lmc;

    iget-object v0, v0, Lmc;->a:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    return-object v0
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method protected final e()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 108
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->f(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->a()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->a:Lcom/snapchat/android/LeftSwipeViewPager;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/LeftSwipeViewPager;->setLeftSwipeEnable(Z)V

    .line 116
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    const-string v0, "content_fragment"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->b:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    .line 62
    const-string v0, "content_fragment_arguments"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->c:Landroid/os/Bundle;

    .line 64
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->b:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create LeftSwipeContainerFragment with null ContentFragment!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 71
    const v0, 0x7f040072

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->mFragmentLayout:Landroid/view/View;

    .line 72
    const v0, 0x7f0a0267

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LeftSwipeViewPager;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->a:Lcom/snapchat/android/LeftSwipeViewPager;

    .line 73
    new-instance v0, Lmc;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->b:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->c:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3}, Lmc;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->d:Lmc;

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->a:Lcom/snapchat/android/LeftSwipeViewPager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->d:Lmc;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/LeftSwipeViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->a:Lcom/snapchat/android/LeftSwipeViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/LeftSwipeViewPager;->setCurrentItem(I)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->a:Lcom/snapchat/android/LeftSwipeViewPager;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/LeftSwipeViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method
