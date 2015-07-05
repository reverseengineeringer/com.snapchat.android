.class final Laem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laem;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

.field final synthetic b:Laem;


# direct methods
.method constructor <init>(Laem;Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Laem$1;->b:Laem;

    iput-object p2, p0, Laem$1;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Laem$1;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;

    sget-object v1, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->AUTO_ADVANCE:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    invoke-interface {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setCurrentItem(I)V

    goto :goto_0
.end method
