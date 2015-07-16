.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment$16;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesFragment$16;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment$16;Z)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$16$1;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment$16;

    iput-boolean p2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$16$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$16$1;->a:Z

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$16$1;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment$16;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$16;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->setFilled(Z)V

    .line 523
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$16$1;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment$16;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$16;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    move-result-object v0

    const-string v1, "Filled"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 528
    :goto_0
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$16$1;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment$16;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$16;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->setFilled(Z)V

    .line 526
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$16$1;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment$16;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$16;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    move-result-object v0

    const-string v1, "Not Filled"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
