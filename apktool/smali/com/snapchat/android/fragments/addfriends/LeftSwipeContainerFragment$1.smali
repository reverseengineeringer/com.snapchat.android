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
    .line 77
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 2

    .prologue
    .line 80
    if-nez p1, :cond_0

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->a(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 86
    :cond_0
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
