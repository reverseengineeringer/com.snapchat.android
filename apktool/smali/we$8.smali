.class final Lwe$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/CameraOperationHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwe;->a(Landroid/hardware/Camera$Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/hardware/Camera$Parameters;

.field final synthetic b:Lwe;


# direct methods
.method constructor <init>(Lwe;Landroid/hardware/Camera$Parameters;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lwe$8;->b:Lwe;

    iput-object p2, p0, Lwe$8;->a:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lwe$8;->b:Lwe;

    iget-object v0, v0, Lwe;->b:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lwe$8;->b:Lwe;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lwe;->d:Z

    .line 113
    iget-object v0, p0, Lwe$8;->b:Lwe;

    iget-object v0, v0, Lwe;->b:Landroid/hardware/Camera;

    iget-object v1, p0, Lwe$8;->a:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
