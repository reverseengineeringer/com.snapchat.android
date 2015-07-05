.class final Lwe$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/CameraOperationHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwe;->c()Landroid/hardware/Camera$Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwe;


# direct methods
.method constructor <init>(Lwe;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lwe$9;->a:Lwe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lwe$9;->a:Lwe;

    iget-object v0, v0, Lwe;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwe$9;->a:Lwe;

    iget-boolean v0, v0, Lwe;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lwe$9;->a:Lwe;

    iget-object v0, v0, Lwe;->c:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 125
    :cond_0
    iget-object v0, p0, Lwe$9;->a:Lwe;

    iget-object v1, p0, Lwe$9;->a:Lwe;

    iget-object v1, v1, Lwe;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, v0, Lwe;->c:Landroid/hardware/Camera$Parameters;

    .line 126
    iget-object v0, p0, Lwe$9;->a:Lwe;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lwe;->d:Z

    .line 128
    :cond_1
    return-void
.end method
