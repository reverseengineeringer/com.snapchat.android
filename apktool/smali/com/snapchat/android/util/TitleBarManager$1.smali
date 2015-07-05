.class final Lcom/snapchat/android/util/TitleBarManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/TitleBarManager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/util/TitleBarManager;

.field final synthetic val$titleBarUpdateWasInProgress:Z


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/TitleBarManager;Z)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/snapchat/android/util/TitleBarManager$1;->this$0:Lcom/snapchat/android/util/TitleBarManager;

    iput-boolean p2, p0, Lcom/snapchat/android/util/TitleBarManager$1;->val$titleBarUpdateWasInProgress:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/snapchat/android/util/TitleBarManager$1;->this$0:Lcom/snapchat/android/util/TitleBarManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarUpdateInProgress:Z

    .line 167
    iget-boolean v0, p0, Lcom/snapchat/android/util/TitleBarManager$1;->val$titleBarUpdateWasInProgress:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/util/TitleBarManager$1;->this$0:Lcom/snapchat/android/util/TitleBarManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/TitleBarManager;->a()V

    .line 170
    :cond_0
    return-void
.end method
