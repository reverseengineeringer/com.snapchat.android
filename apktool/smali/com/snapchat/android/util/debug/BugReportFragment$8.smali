.class final Lcom/snapchat/android/util/debug/BugReportFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/debug/BugReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

.field final synthetic val$containerId:I


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V
    .locals 1

    .prologue
    .line 317
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$8;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    const v0, 0x7f0a0083

    iput v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$8;->val$containerId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$8;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->l(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$8;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 324
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$8;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 325
    iget v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$8;->val$containerId:I

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;

    invoke-direct {v2}, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "BugReportRemoteLogListFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$8;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->m(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$8;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->n(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Remote Log"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    goto :goto_0
.end method
