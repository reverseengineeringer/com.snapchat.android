.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 645
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;

    iget-object v1, v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;->a:Lcom/snapchat/android/model/Friend;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;

    iget-object v2, v2, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;->b:Lahc;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lahc;)V

    .line 646
    return-void
.end method
