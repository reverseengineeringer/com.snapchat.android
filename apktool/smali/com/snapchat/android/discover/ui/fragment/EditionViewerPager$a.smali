.class final Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;B)V
    .locals 0

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;-><init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-static {v0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;I)I

    .line 562
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 563
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(I)V

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 568
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(I)V

    goto :goto_0

    .line 569
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;I)I

    goto :goto_0
.end method

.method public final onPageSelected(I)V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(II)V

    .line 557
    return-void
.end method
