.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/model/StoryGroup;Z)V
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
    .line 902
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$7;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$7;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 918
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$7;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->o()V

    .line 911
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$7;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    .line 912
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$7;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 913
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 923
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$7;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$7;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 906
    return-void
.end method
