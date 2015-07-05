.class final Lcom/snapchat/android/util/AlertDialogUtils$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/AlertDialogUtils;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Lcom/snapchat/android/util/AlertDialogUtils;->b()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/snapchat/android/util/AlertDialogUtils;->b()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 191
    :cond_0
    return-void
.end method
