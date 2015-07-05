.class final Lcom/snapchat/android/util/debug/BugReportFragment$3$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/debug/BugReportFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/snapchat/android/util/debug/BugReportFragment$3;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportFragment$3;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$3$3;->this$1:Lcom/snapchat/android/util/debug/BugReportFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$3$3;->this$1:Lcom/snapchat/android/util/debug/BugReportFragment$3;

    iget-object v0, v0, Lcom/snapchat/android/util/debug/BugReportFragment$3;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->f(Lcom/snapchat/android/util/debug/BugReportFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$3$3;->this$1:Lcom/snapchat/android/util/debug/BugReportFragment$3;

    iget-object v0, v0, Lcom/snapchat/android/util/debug/BugReportFragment$3;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->b(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$3$3;->this$1:Lcom/snapchat/android/util/debug/BugReportFragment$3;

    iget-object v0, v0, Lcom/snapchat/android/util/debug/BugReportFragment$3;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->g(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    :cond_0
    return-void
.end method
