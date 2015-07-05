.class final Lcom/snapchat/android/util/debug/BugReportFragment$10;
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
    .line 351
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    .line 354
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->p(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->o(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 375
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->a(Lcom/snapchat/android/util/debug/BugReportFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->b(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->h(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->f(Lcom/snapchat/android/util/debug/BugReportFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->q(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->q(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 364
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->r(Lcom/snapchat/android/util/debug/BugReportFragment;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v8, v0, [Ljava/io/File;

    .line 365
    const/4 v0, 0x0

    :goto_3
    array-length v1, v8

    if-ge v0, v1, :cond_3

    .line 366
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v4}, Lcom/snapchat/android/util/debug/BugReportFragment;->r(Lcom/snapchat/android/util/debug/BugReportFragment;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    aput-object v1, v8, v0

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 359
    :cond_1
    const-string v2, "null"

    goto :goto_1

    .line 362
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 369
    :cond_3
    new-instance v1, Lazs;

    invoke-direct {v1}, Lazs;-><init>()V

    .line 370
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->s(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->l(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->p(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lauh;->SERIAL_EXECUTOR_FOR_DEBUGGING:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lazs$1;

    invoke-direct/range {v0 .. v9}, Lazs$1;-><init>(Lazs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10, v0}, Lbgp;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    .line 374
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$10;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method
