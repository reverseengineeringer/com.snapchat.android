.class public final Lwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwc$b;
.implements Lwc;


# instance fields
.field final a:Lws;

.field b:Landroid/hardware/Camera;
    .annotation build Lcgc;
    .end annotation
.end field

.field c:Landroid/hardware/Camera$Parameters;

.field d:Z

.field private final e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    .line 51
    invoke-static {}, Lws;->a()Lws;

    move-result-object v0

    iput-object v0, p0, Lwe;->a:Lws;

    .line 52
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lwe;->a(Z)V

    .line 83
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->SET_ORIENTATION:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lwe$5;

    invoke-direct {v2, p0, p1}, Lwe$5;-><init>(Lwe;I)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 244
    return-void
.end method

.method public final a(ILwh;)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->OPEN:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lwe$1;

    invoke-direct {v2, p0, p1, p2}, Lwe$1;-><init>(Lwe;ILwh;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 63
    return-void
.end method

.method public final a(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->SET_TEXTURE:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lwe$4;

    invoke-direct {v2, p0, p1}, Lwe$4;-><init>(Lwe;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 233
    return-void
.end method

.method public final a(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->SET_PARAMETERS:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lwe$8;

    invoke-direct {v2, p0, p1}, Lwe$8;-><init>(Lwe;Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public final a(Lwf;)V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->AUTOFOCUS:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lwe$13;

    invoke-direct {v2, p0, p1}, Lwe$13;-><init>(Lwe;Lwf;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 184
    return-void
.end method

.method public final a(Lwi;)V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->SET_CALLBACK_WITH_BUFFER:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lwe$3;

    invoke-direct {v2, p0, p1}, Lwe$3;-><init>(Lwe;Lwi;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 218
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->RELEASE:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lwe$7;

    invoke-direct {v2, p0}, Lwe$7;-><init>(Lwe;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 102
    if-eqz p1, :cond_0

    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->waitDone()Z

    .line 103
    :cond_0
    return-void
.end method

.method public final a([B)V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ADD_CALLBACK_BUFFER:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lwe$6;

    invoke-direct {v2, p0, p1}, Lwe$6;-><init>(Lwe;[B)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 256
    return-void
.end method

.method public final b()Landroid/hardware/Camera;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lwe;->b:Landroid/hardware/Camera;

    return-object v0
.end method

.method public final b(Z)V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->STOP_PREVIEW:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lwe$2;

    invoke-direct {v2, p0}, Lwe$2;-><init>(Lwe;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    if-eqz p1, :cond_0

    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->waitDone()Z

    .line 207
    :cond_0
    return-void
.end method

.method public final c()Landroid/hardware/Camera$Parameters;
    .locals 3
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->GET_PARAMETERS:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lwe$9;

    invoke-direct {v2, p0}, Lwe$9;-><init>(Lwe;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 130
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->waitDone()Z

    .line 131
    iget-object v0, p0, Lwe;->c:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->UNLOCK:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lwe$10;

    invoke-direct {v2, p0}, Lwe$10;-><init>(Lwe;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 143
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->waitDone()Z

    .line 144
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->LOCK:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lwe$11;

    invoke-direct {v2, p0}, Lwe$11;-><init>(Lwe;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method

.method public final f()Z
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->RECONNECT:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lwe$12;

    invoke-direct {v2, p0}, Lwe$12;-><init>(Lwe;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 170
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->waitDone()Z

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lwe;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->START_PREVIEW:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lwe$14;

    invoke-direct {v2, p0}, Lwe$14;-><init>(Lwe;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 195
    return-void
.end method
