.class final Lcom/snapchat/android/util/debug/BugReportFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 381
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$2;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$2;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {}, Lcom/snapchat/android/util/debug/BugReportFragment;->i()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->a(Lcom/snapchat/android/util/debug/BugReportFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$2;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->t(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/util/debug/BugReportFragment;->i()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 386
    return-void
.end method
