.class public final Lvw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lwj;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lvw;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lvl;Lvm;Lvv;)V
    .locals 4
    .param p1    # Lvl;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 38
    iget-object v0, p0, Lvw;->a:Lwj;

    iget-boolean v0, v0, Lwj;->a:Z

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lvw;->b:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, v1}, Lvv;->a(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lvw$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lvw$2;-><init>(Lvw;Lvl;Lvm;Lvv;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lvw;->b:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->h:Lwc$b;

    if-eqz v0, :cond_0

    invoke-virtual {p3, v1}, Lvv;->b(Z)V

    new-instance v1, Lwf;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lvw$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lvw$1;-><init>(Lvw;Lvl;Lvm;Lvv;)V

    invoke-direct {v1, v2, v0, v3}, Lwf;-><init>(Landroid/os/Handler;Lwc$b;Lwc$c;)V

    invoke-interface {v0, v1}, Lwc$b;->a(Lwf;)V

    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p0, Lvw;->b:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->f:Laue;

    invoke-interface {p1, v0, p2}, Lvl;->a(Laue;Lvm;)V

    goto :goto_0
.end method

.method public final b(Lvl;Lvm;Lvv;)V
    .locals 1
    .param p1    # Lvl;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 47
    iget-object v0, p0, Lvw;->a:Lwj;

    iget-boolean v0, v0, Lwj;->a:Z

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lvv;->a(Z)V

    .line 50
    :cond_0
    iget-object v0, p0, Lvw;->b:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->f:Laue;

    invoke-interface {p1, v0, p2}, Lvl;->a(Laue;Lvm;)V

    .line 51
    return-void
.end method
