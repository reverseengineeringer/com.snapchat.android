.class final Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$1;->this$0:Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$1;->this$0:Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$a;

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$1;->this$0:Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$a;

    invoke-interface {v0, v1}, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$a;->a(Ljava/lang/String;)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$1;->this$0:Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$1;->this$0:Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "Chosen remote recipient"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
