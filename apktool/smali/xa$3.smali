.class final Lxa$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/CameraOperationHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxa;->a(Lxe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lxe;

.field final synthetic b:Lxa;


# direct methods
.method constructor <init>(Lxa;Lxe;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lxa$3;->b:Lxa;

    iput-object p2, p0, Lxa$3;->a:Lxe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lxa$3;->b:Lxa;

    iget-object v0, v0, Lxa;->b:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lxa$3;->b:Lxa;

    iget-object v0, v0, Lxa;->b:Landroid/hardware/Camera;

    iget-object v1, p0, Lxa$3;->a:Lxe;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method
