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

.field private b:Lahz;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahz;)V
    .locals 0

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1047
    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;->b:Lahz;

    .line 1048
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1052
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1053
    const v1, 0x7f0a03c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    .line 1054
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a03c7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewParent;

    .line 1055
    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;->b:Lahz;

    invoke-virtual {v4}, Lahz;->r()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1056
    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setEnabled(Z)V

    .line 1057
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1059
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;->b:Lahz;

    invoke-virtual {v0}, Lahz;->t()Z

    .line 1060
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$e;->b:Lahz;

    invoke-virtual {v0, v2}, Lahz;->d(Z)V

    move v0, v2

    .line 1063
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method
