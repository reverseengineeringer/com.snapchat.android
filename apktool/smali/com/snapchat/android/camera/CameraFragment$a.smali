.class final Lcom/snapchat/android/camera/CameraFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/CameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/CameraFragment;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/camera/CameraFragment;)V
    .locals 0

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/snapchat/android/camera/CameraFragment$a;->a:Lcom/snapchat/android/camera/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/camera/CameraFragment;B)V
    .locals 0

    .prologue
    .line 1433
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/CameraFragment$a;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    return-void
.end method


# virtual methods
.method public final a(FFF)V
    .locals 1

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$a;->a:Lcom/snapchat/android/camera/CameraFragment;

    iget-object v0, v0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/cameraview/CameraView;->setScaleX(F)V

    .line 1452
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$a;->a:Lcom/snapchat/android/camera/CameraFragment;

    iget-object v0, v0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/camera/cameraview/CameraView;->setScaleY(F)V

    .line 1453
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$a;->a:Lcom/snapchat/android/camera/CameraFragment;

    iget-object v0, v0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0, p3}, Lcom/snapchat/android/camera/cameraview/CameraView;->setTranslationY(F)V

    .line 1454
    return-void
.end method

.method public final a(Lwi;)V
    .locals 3

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$a;->a:Lcom/snapchat/android/camera/CameraFragment;

    iget-object v0, v0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-nez v0, :cond_0

    .line 1460
    :goto_0
    return-void

    .line 1459
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$a;->a:Lcom/snapchat/android/camera/CameraFragment;

    iget-object v0, v0, Lcom/snapchat/android/camera/CameraFragment;->m:Lws;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment$a;->a:Lcom/snapchat/android/camera/CameraFragment;

    iget-object v1, v1, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment$a;->a:Lcom/snapchat/android/camera/CameraFragment;

    invoke-static {v2}, Lcom/snapchat/android/camera/CameraFragment;->b(Lcom/snapchat/android/camera/CameraFragment;)Lwr;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lws;->b(Lwh;Lwi;Lwr;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$a;->a:Lcom/snapchat/android/camera/CameraFragment;

    iget-object v0, v0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$a;->a:Lcom/snapchat/android/camera/CameraFragment;

    iget-object v0, v0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->c()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$a;->a:Lcom/snapchat/android/camera/CameraFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/CameraFragment;->b(Z)V

    .line 1447
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$a;->a:Lcom/snapchat/android/camera/CameraFragment;

    iget-object v0, v0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
