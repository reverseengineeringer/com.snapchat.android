.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 602
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 603
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbei;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;->a:Lcom/snapchat/android/model/Friend;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lbei;-><init>(Lcom/snapchat/android/model/Friend;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 604
    return-void
.end method
