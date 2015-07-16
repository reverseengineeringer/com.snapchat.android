.class final Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$1;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$1;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$1;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(II)V

    .line 460
    return-void
.end method
