.class final Lcom/snapchat/android/util/AlertDialogUtils$22;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/AlertDialogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$stringResToToast:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 225
    iput-object p1, p0, Lcom/snapchat/android/util/AlertDialogUtils$22;->val$stringResToToast:Ljava/lang/String;

    const-wide/16 v0, 0x7d0

    const-wide/16 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Lcom/snapchat/android/util/AlertDialogUtils;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$22;->val$stringResToToast:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .prologue
    .line 227
    return-void
.end method
