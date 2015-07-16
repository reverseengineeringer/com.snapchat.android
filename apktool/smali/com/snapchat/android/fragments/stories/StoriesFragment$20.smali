.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 589
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$20;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 592
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$20;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-boolean v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$20;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$20;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 599
    :cond_0
    return v2
.end method
