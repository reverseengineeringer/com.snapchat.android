.class final Lxa$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/CameraOperationHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxa;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lxa;


# direct methods
.method constructor <init>(Lxa;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lxa$7;->a:Lxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lxa$7;->a:Lxa;

    iget-object v0, v0, Lxa;->b:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lxa$7;->a:Lxa;

    iget-object v0, v0, Lxa;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 98
    iget-object v0, p0, Lxa$7;->a:Lxa;

    iput-object v1, v0, Lxa;->b:Landroid/hardware/Camera;

    .line 99
    iget-object v0, p0, Lxa$7;->a:Lxa;

    iput-object v1, v0, Lxa;->c:Landroid/hardware/Camera$Parameters;

    goto :goto_0
.end method
