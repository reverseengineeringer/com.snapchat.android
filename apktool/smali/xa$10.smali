.class final Lxa$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/CameraOperationHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxa;->d()V
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
    .line 136
    iput-object p1, p0, Lxa$10;->a:Lxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lxa$10;->a:Lxa;

    iget-object v0, v0, Lxa;->b:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lxa$10;->a:Lxa;

    iget-object v0, v0, Lxa;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    goto :goto_0
.end method
