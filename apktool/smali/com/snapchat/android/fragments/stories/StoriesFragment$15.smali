.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 506
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$15;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 509
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$15;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-boolean v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$15;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->e(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$15;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lbfa;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lbfa;->a(IZ)V

    .line 511
    return-void
.end method
