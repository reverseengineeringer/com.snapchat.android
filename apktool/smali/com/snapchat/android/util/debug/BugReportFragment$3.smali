.class final Lcom/snapchat/android/util/debug/BugReportFragment$3;
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
    .line 178
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$3;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$3;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 182
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$3;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->d(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportFragment$3;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v2}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Included Screenshot"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Include"

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportFragment$3$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$3$3;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Remove"

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportFragment$3$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$3$2;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Choose from Gallery"

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportFragment$3$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$3$1;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 211
    return-void
.end method
