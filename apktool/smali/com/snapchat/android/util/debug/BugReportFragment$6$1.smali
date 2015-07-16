.class final Lcom/snapchat/android/util/debug/BugReportFragment$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/debug/BugReportFragment$6;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/snapchat/android/util/debug/BugReportFragment$6;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportFragment$6;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$6$1;->this$1:Lcom/snapchat/android/util/debug/BugReportFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 287
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lbhp;->a(J)V

    .line 288
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$6$1;->this$1:Lcom/snapchat/android/util/debug/BugReportFragment$6;

    iget-object v0, v0, Lcom/snapchat/android/util/debug/BugReportFragment$6;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z

    .line 289
    return-void
.end method
