.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;
.super Laqb;
.source "SourceFile"


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

.field final synthetic b:Lahc;

.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/StorySnapLogbook;Lahc;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p6, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    iput-object p7, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;->b:Lahc;

    invoke-direct {p0, p2, p3, p4, p5}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Laom;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;)V

    invoke-virtual {v0, v1, v2}, Laom;->a(Lcom/snapchat/android/model/StorySnapLogbook;Laom$a;)V

    .line 409
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 414
    return-void
.end method
