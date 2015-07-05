.class final Lcom/snapchat/android/dev/DbBrowserActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/dev/DbBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/dev/DbBrowserActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/dev/DbBrowserActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/snapchat/android/dev/DbBrowserActivity$1;->a:Lcom/snapchat/android/dev/DbBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity$1;->a:Lcom/snapchat/android/dev/DbBrowserActivity;

    invoke-static {v0}, Lcom/snapchat/android/dev/DbBrowserActivity;->a(Lcom/snapchat/android/dev/DbBrowserActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 70
    return-void
.end method
