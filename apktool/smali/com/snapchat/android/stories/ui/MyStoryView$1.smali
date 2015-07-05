.class final Lcom/snapchat/android/stories/ui/MyStoryView$1;
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
    .line 96
    iput-object p1, p0, Lcom/snapchat/android/stories/ui/MyStoryView$1;->a:Lcom/snapchat/android/stories/ui/MyStoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 99
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0c00f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/snapchat/android/stories/ui/MyStoryView$1$1;

    iget-object v1, p0, Lcom/snapchat/android/stories/ui/MyStoryView$1;->a:Lcom/snapchat/android/stories/ui/MyStoryView;

    invoke-static {v1}, Lcom/snapchat/android/stories/ui/MyStoryView;->a(Lcom/snapchat/android/stories/ui/MyStoryView;)Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/stories/ui/MyStoryView$1$1;-><init>(Lcom/snapchat/android/stories/ui/MyStoryView$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/stories/ui/MyStoryView$1$1;->show()V

    .line 100
    return-void
.end method
