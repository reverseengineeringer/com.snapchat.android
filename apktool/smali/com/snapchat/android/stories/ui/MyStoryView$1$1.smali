.class final Lcom/snapchat/android/stories/ui/MyStoryView$1$1;
.super Laqb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/stories/ui/MyStoryView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/stories/ui/MyStoryView$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/stories/ui/MyStoryView$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/snapchat/android/stories/ui/MyStoryView$1$1;->a:Lcom/snapchat/android/stories/ui/MyStoryView$1;

    invoke-direct {p0, p2, p3, p4, p5}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView$1$1;->a:Lcom/snapchat/android/stories/ui/MyStoryView$1;

    iget-object v0, v0, Lcom/snapchat/android/stories/ui/MyStoryView$1;->a:Lcom/snapchat/android/stories/ui/MyStoryView;

    invoke-static {v0}, Lcom/snapchat/android/stories/ui/MyStoryView;->e(Lcom/snapchat/android/stories/ui/MyStoryView;)Laom;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/stories/ui/MyStoryView$1$1;->a:Lcom/snapchat/android/stories/ui/MyStoryView$1;

    iget-object v1, v1, Lcom/snapchat/android/stories/ui/MyStoryView$1;->a:Lcom/snapchat/android/stories/ui/MyStoryView;

    invoke-static {v1}, Lcom/snapchat/android/stories/ui/MyStoryView;->b(Lcom/snapchat/android/stories/ui/MyStoryView;)Lcom/snapchat/android/model/StorySnapLogbook;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/stories/ui/MyStoryView$1$1$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/stories/ui/MyStoryView$1$1$1;-><init>(Lcom/snapchat/android/stories/ui/MyStoryView$1$1;)V

    invoke-virtual {v0, v1, v2}, Laom;->a(Lcom/snapchat/android/model/StorySnapLogbook;Laom$a;)V

    .line 136
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method
