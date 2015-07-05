.class final Lcom/snapchat/android/util/debug/BugReportFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$5;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 261
    if-eqz p2, :cond_0

    .line 262
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$5;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->h(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$5;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->h(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 264
    :cond_0
    return-void
.end method
