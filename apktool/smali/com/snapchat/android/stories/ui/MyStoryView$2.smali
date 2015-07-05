.class final Lcom/snapchat/android/stories/ui/MyStoryView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/stories/ui/MyStoryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/stories/ui/MyStoryView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/stories/ui/MyStoryView;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/snapchat/android/stories/ui/MyStoryView$2;->a:Lcom/snapchat/android/stories/ui/MyStoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView$2;->a:Lcom/snapchat/android/stories/ui/MyStoryView;

    invoke-static {v0}, Lcom/snapchat/android/stories/ui/MyStoryView;->e(Lcom/snapchat/android/stories/ui/MyStoryView;)Laom;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/stories/ui/MyStoryView$2;->a:Lcom/snapchat/android/stories/ui/MyStoryView;

    invoke-static {v1}, Lcom/snapchat/android/stories/ui/MyStoryView;->b(Lcom/snapchat/android/stories/ui/MyStoryView;)Lcom/snapchat/android/model/StorySnapLogbook;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/stories/ui/MyStoryView$2$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/stories/ui/MyStoryView$2$1;-><init>(Lcom/snapchat/android/stories/ui/MyStoryView$2;)V

    invoke-virtual {v0, v1, v2}, Laom;->b(Lcom/snapchat/android/model/StorySnapLogbook;Laom$a;)V

    .line 171
    return-void
.end method
