.class final Lwe$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/CameraOperationHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwe;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lwe;


# direct methods
.method constructor <init>(Lwe;I)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lwe$5;->b:Lwe;

    iput p2, p0, Lwe$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lwe$5;->b:Lwe;

    iget-object v0, v0, Lwe;->b:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lwe$5;->b:Lwe;

    iget-object v0, v0, Lwe;->b:Landroid/hardware/Camera;

    iget v1, p0, Lwe$5;->a:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0
.end method
