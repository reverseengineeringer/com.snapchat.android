.class final Lcom/snapchat/android/stories/ui/MyStoryView$5;
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
.field final synthetic a:Lapu;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/snapchat/android/stories/ui/MyStoryView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/stories/ui/MyStoryView;Lapu;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/snapchat/android/stories/ui/MyStoryView$5;->d:Lcom/snapchat/android/stories/ui/MyStoryView;

    iput-object p2, p0, Lcom/snapchat/android/stories/ui/MyStoryView$5;->a:Lapu;

    iput-object p3, p0, Lcom/snapchat/android/stories/ui/MyStoryView$5;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/snapchat/android/stories/ui/MyStoryView$5;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView$5;->d:Lcom/snapchat/android/stories/ui/MyStoryView;

    invoke-static {v0}, Lcom/snapchat/android/stories/ui/MyStoryView;->d(Lcom/snapchat/android/stories/ui/MyStoryView;)Lcom/snapchat/android/stories/ui/MyStoryView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/stories/ui/MyStoryView$a;->a()V

    .line 240
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView$5;->d:Lcom/snapchat/android/stories/ui/MyStoryView;

    invoke-static {v0}, Lcom/snapchat/android/stories/ui/MyStoryView;->f(Lcom/snapchat/android/stories/ui/MyStoryView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView$5;->d:Lcom/snapchat/android/stories/ui/MyStoryView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/stories/ui/MyStoryView;->a(Lcom/snapchat/android/stories/ui/MyStoryView;Z)Z

    .line 242
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView$5;->d:Lcom/snapchat/android/stories/ui/MyStoryView;

    iget-object v1, p0, Lcom/snapchat/android/stories/ui/MyStoryView$5;->a:Lapu;

    iget-object v2, p0, Lcom/snapchat/android/stories/ui/MyStoryView$5;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/snapchat/android/stories/ui/MyStoryView$5;->c:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/stories/ui/MyStoryView;->a(Lcom/snapchat/android/stories/ui/MyStoryView;Lapu;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 244
    :cond_0
    return-void
.end method
