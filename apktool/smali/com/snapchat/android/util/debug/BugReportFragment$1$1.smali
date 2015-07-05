.class final Lcom/snapchat/android/util/debug/BugReportFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/debug/BugReportFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/snapchat/android/util/debug/BugReportFragment$1;

.field final synthetic val$existingSendToSelfEmail:Ljava/lang/String;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportFragment$1;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;->this$1:Lcom/snapchat/android/util/debug/BugReportFragment$1;

    iput-object p2, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;->val$existingSendToSelfEmail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "@snapchat.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;->val$existingSendToSelfEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    const-string v1, "SHAKE_TO_REPORT_SEND_TO_SELF_EMAIL"

    invoke-static {v1, v0}, Lauc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;->this$1:Lcom/snapchat/android/util/debug/BugReportFragment$1;

    iget-object v1, v1, Lcom/snapchat/android/util/debug/BugReportFragment$1;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->b(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;->this$1:Lcom/snapchat/android/util/debug/BugReportFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/util/debug/BugReportFragment$1;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->a(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;->this$1:Lcom/snapchat/android/util/debug/BugReportFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/util/debug/BugReportFragment$1;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Please enter a valid @snapchat email!!"

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
