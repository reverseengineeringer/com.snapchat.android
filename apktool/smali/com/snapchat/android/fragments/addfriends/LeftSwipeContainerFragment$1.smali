.class final Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->a(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;)Lmu;

    move-result-object v0

    iget-object v0, v0, Lmu;->a:Landroid/support/v4/app/Fragment;

    .line 95
    if-nez p1, :cond_0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->b(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 99
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 100
    instance-of v1, v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$a;

    if-eqz v1, :cond_0

    .line 101
    check-cast v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$a;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$a;->H()V

    .line 104
    :cond_0
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method
