.class public final Lcom/snapchat/android/camera/hardware/CameraOperationHandler;
.super Lcom/snapchat/android/util/WaitDoneHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/camera/hardware/CameraOperationHandler$a;,
        Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/WaitDoneHandler;-><init>(Landroid/os/Looper;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 37
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$a;

    .line 38
    invoke-static {}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->values()[Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    .line 39
    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ADD_CALLBACK_BUFFER:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    if-eq v1, v2, :cond_0

    .line 40
    const-string v2, "CameraOperationHandler"

    const-string v3, "Camera Operation [%s] is executing"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$a;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera Operation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed to execute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v4, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v3, v4, v1}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 50
    :cond_1
    const-string v2, "CameraOperationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
