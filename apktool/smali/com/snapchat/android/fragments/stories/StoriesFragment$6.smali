.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/StoryGroup;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Lcom/snapchat/android/model/StoryGroup;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$6;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$6;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$6;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->n(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 814
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$6;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 815
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 819
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$6;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$6;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 809
    return-void
.end method
