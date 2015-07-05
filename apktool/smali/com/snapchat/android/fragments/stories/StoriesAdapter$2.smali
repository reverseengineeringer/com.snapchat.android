.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;
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
.field final synthetic a:Lcom/snapchat/android/model/StoryGroup;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StoryGroup;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 558
    new-instance v0, Lapx;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->d(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {v0, v1, v2}, Lapx;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/StoryGroup;)V

    iget-object v1, v0, Lapx;->b:Lcom/snapchat/android/model/StoryGroup;

    sget-object v2, Lcom/snapchat/android/model/StoryGroup$ActionState;->CONFIRMING_SAVE:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    iget-object v1, v0, Lapx;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lajx;->aH()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lapx;->a:Landroid/content/Context;

    const v3, 0x7f0c01fd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c01fb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Lapx$1;

    invoke-direct {v5, v0}, Lapx$1;-><init>(Lapx;)V

    invoke-static {v2, v3, v1, v4, v5}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/snapchat/android/util/AlertDialogUtils$a;)V

    .line 559
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-virtual {v0}, Lapx;->a()V

    goto :goto_0
.end method
