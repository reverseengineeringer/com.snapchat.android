.class final Lcom/snapchat/android/util/debug/BugReportFragment$3$1;
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
    .line 204
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$3$1;->this$1:Lcom/snapchat/android/util/debug/BugReportFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$3$1;->this$1:Lcom/snapchat/android/util/debug/BugReportFragment$3;

    iget-object v0, v0, Lcom/snapchat/android/util/debug/BugReportFragment$3;->this$0:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->e(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    .line 208
    return-void
.end method
