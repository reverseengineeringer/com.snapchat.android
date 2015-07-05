.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

.field private b:Lahc;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahc;)V
    .locals 0

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;->b:Lahc;

    .line 1014
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1018
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1019
    const v1, 0x7f0a03ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    .line 1020
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a03cb

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewParent;

    .line 1021
    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;->b:Lahc;

    invoke-virtual {v4}, Lahc;->r()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->a:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    invoke-virtual {v4}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->getHeight()I

    move-result v4

    iget-object v5, v0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->a:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    invoke-virtual {v5}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    if-lez v4, :cond_0

    move v4, v2

    :goto_0
    if-nez v4, :cond_1

    .line 1022
    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setEnabled(Z)V

    .line 1023
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1024
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;->b:Lahc;

    invoke-virtual {v0}, Lahc;->t()Z

    .line 1025
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;->b:Lahc;

    invoke-virtual {v0, v2}, Lahc;->d(Z)V

    move v0, v2

    .line 1028
    :goto_1
    return v0

    :cond_0
    move v4, v3

    .line 1021
    goto :goto_0

    :cond_1
    move v0, v3

    .line 1028
    goto :goto_1
.end method
