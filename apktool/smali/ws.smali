.class public final Lws;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lxf;
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

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lws;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lwh;Lwi;Lwr;)V
    .locals 4
    .param p1    # Lwh;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 38
    iget-object v0, p0, Lws;->a:Lxf;

    iget-boolean v0, v0, Lxf;->a:Z

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lws;->b:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, v1}, Lwr;->a(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lws$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lws$2;-><init>(Lws;Lwh;Lwi;Lwr;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lws;->b:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->h:Lwy$b;

    if-eqz v0, :cond_0

    invoke-virtual {p3, v1}, Lwr;->b(Z)V

    new-instance v1, Lxb;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lws$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lws$1;-><init>(Lws;Lwh;Lwi;Lwr;)V

    invoke-direct {v1, v2, v0, v3}, Lxb;-><init>(Landroid/os/Handler;Lwy$b;Lwy$c;)V

    invoke-interface {v0, v1}, Lwy$b;->a(Lxb;)V

    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p0, Lws;->b:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->f:Lavc;

    invoke-interface {p1, v0, p2}, Lwh;->a(Lavc;Lwi;)V

    goto :goto_0
.end method

.method public final b(Lwh;Lwi;Lwr;)V
    .locals 1
    .param p1    # Lwh;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 47
    iget-object v0, p0, Lws;->a:Lxf;

    iget-boolean v0, v0, Lxf;->a:Z

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lwr;->a(Z)V

    .line 50
    :cond_0
    iget-object v0, p0, Lws;->b:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->f:Lavc;

    invoke-interface {p1, v0, p2}, Lwh;->a(Lavc;Lwi;)V

    .line 51
    return-void
.end method
