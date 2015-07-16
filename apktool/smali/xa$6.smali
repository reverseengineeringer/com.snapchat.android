.class final Lxa$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/CameraOperationHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxa;->a([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lxa;


# direct methods
.method constructor <init>(Lxa;[B)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lxa$6;->b:Lxa;

    iput-object p2, p0, Lxa$6;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lxa$6;->b:Lxa;

    iget-object v0, v0, Lxa;->b:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lxa$6;->b:Lxa;

    iget-object v0, v0, Lxa;->b:Landroid/hardware/Camera;

    iget-object v1, p0, Lxa$6;->a:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0
.end method
