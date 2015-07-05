.class final Lcom/snapchat/android/util/AlertDialogUtils$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$length:I

.field final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 161
    iput p1, p0, Lcom/snapchat/android/util/AlertDialogUtils$20;->val$length:I

    iput-object p2, p0, Lcom/snapchat/android/util/AlertDialogUtils$20;->val$string:Ljava/lang/String;

    iput-object p3, p0, Lcom/snapchat/android/util/AlertDialogUtils$20;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    iget v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$20;->val$length:I

    invoke-static {v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(I)I

    move-result v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$20;->val$string:Ljava/lang/String;

    invoke-static {v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$20;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/snapchat/android/util/AlertDialogUtils$20;->val$string:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 169
    invoke-static {}, Lcom/snapchat/android/util/AlertDialogUtils;->b()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v0, "AlertDialogUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Toasting wayyy too many times "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/util/AlertDialogUtils$20;->val$string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v1, "AlertDialogUtils"

    const-string v2, "Well, this is awkward."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    const-string v1, "AlertDialogUtils"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
