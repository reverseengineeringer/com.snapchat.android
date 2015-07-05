.class final Lwe$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/CameraOperationHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwe;->a(Lwf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwf;

.field final synthetic b:Lwe;


# direct methods
.method constructor <init>(Lwe;Lwf;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lwe$13;->b:Lwe;

    iput-object p2, p0, Lwe$13;->a:Lwf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lwe$13;->b:Lwe;

    iget-object v0, v0, Lwe;->b:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lwe$13;->b:Lwe;

    iget-object v0, v0, Lwe;->b:Landroid/hardware/Camera;

    iget-object v1, p0, Lwe$13;->a:Lwf;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method
