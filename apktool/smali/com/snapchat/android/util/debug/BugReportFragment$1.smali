.class final Lcom/snapchat/android/util/debug/BugReportFragment$1;
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


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->a(Lcom/snapchat/android/util/debug/BugReportFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0, v4}, Lcom/snapchat/android/util/debug/BugReportFragment;->a(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->b(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Send this report only to yourself?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v2}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 133
    const-string v2, "SHAKE_TO_REPORT_SEND_TO_SELF_EMAIL"

    invoke-static {v2}, Lava;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xd

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 142
    :goto_1
    const-string v3, "Please enter your email"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "Okay"

    new-instance v4, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment$1;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 139
    :cond_1
    const-string v3, "@snapchat.com"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1
.end method
