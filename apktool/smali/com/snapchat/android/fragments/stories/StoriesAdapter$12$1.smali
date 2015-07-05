.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 433
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Laom;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;

    iget-object v1, v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1;)V

    invoke-virtual {v0, v1, v2}, Laom;->b(Lcom/snapchat/android/model/StorySnapLogbook;Laom$a;)V

    .line 446
    return-void
.end method
