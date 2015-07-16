.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$20;
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
    name = null
.end annotation


# instance fields
.field final synthetic a:Laia;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Laia;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$20;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$20;->a:Laia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$20;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbfl;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$20;->a:Laia;

    invoke-virtual {v2}, Laia;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v2

    invoke-direct {v1, v2}, Lbfl;-><init>(Lcom/snapchat/android/model/StoryGroup;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 551
    const/4 v0, 0x1

    return v0
.end method
