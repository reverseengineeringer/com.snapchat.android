.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;
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
.field final synthetic a:Lcom/snapchat/android/model/StorySnapLogbook;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;)V

    .line 487
    return-void
.end method
