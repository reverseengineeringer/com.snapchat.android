.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbgr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$19;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$19;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->m:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$19;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Latj;->a(Landroid/view/View;)V

    .line 566
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$19;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->m:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 567
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$19;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->m:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$19$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$19$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment$19;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    return-void
.end method
