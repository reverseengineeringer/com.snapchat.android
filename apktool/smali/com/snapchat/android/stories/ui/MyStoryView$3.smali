.class final Lcom/snapchat/android/stories/ui/MyStoryView$3;
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
    .line 178
    iput-object p1, p0, Lcom/snapchat/android/stories/ui/MyStoryView$3;->a:Lcom/snapchat/android/stories/ui/MyStoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView$3;->a:Lcom/snapchat/android/stories/ui/MyStoryView;

    invoke-static {v0}, Lcom/snapchat/android/stories/ui/MyStoryView;->d(Lcom/snapchat/android/stories/ui/MyStoryView;)Lcom/snapchat/android/stories/ui/MyStoryView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/stories/ui/MyStoryView$a;->b()V

    .line 182
    return-void
.end method
