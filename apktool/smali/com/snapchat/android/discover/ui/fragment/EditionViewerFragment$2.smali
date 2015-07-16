.class final Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 345
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lafm;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lafm;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lafm;->a(Ljava/util/List;)V

    .line 348
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lafm;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lafm;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;I)I

    .line 351
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Ljava/lang/String;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->g(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 355
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->h(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v0

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->g(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setCurrentItem(IZ)V

    .line 358
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setPanel(I)V

    .line 359
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Z

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Opening page to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->g(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " longform? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->h(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lafm;

    move-result-object v1

    invoke-virtual {v1}, Lafm;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Z

    .line 366
    :cond_1
    return-void

    .line 355
    :cond_2
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v0

    goto :goto_0
.end method
