.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;
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
.field final synthetic a:Laia;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Laia;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;->a:Laia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 523
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbeh;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;->a:Laia;

    invoke-virtual {v2}, Laia;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v2

    invoke-direct {v1, v2}, Lbeh;-><init>(Lcom/snapchat/android/model/StoryGroup;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 524
    return-void
.end method
