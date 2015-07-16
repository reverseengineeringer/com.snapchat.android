.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

.field private b:Lahz;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahz;)V
    .locals 0

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;->b:Lahz;

    .line 1073
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;)Lahz;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;->b:Lahz;

    return-object v0
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1077
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1078
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1079
    const v1, 0x7f0a03c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    .line 1081
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a03c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewParent;

    .line 1082
    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1083
    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setEnabled(Z)V

    .line 1084
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$f$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$f$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1093
    :cond_0
    return v4
.end method
