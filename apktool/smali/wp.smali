.class public final Lwp;
.super Lwr;
.source "SourceFile"


# instance fields
.field protected a:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lwr;-><init>()V

    .line 38
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lwp;)V

    .line 39
    iput-object p1, p0, Lwp;->b:Landroid/view/View;

    .line 40
    return-void
.end method

.method private a(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lwp;->a:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->h:Lwy$b;

    .line 106
    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 107
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-nez p1, :cond_0

    invoke-interface {v0}, Lwy$b;->c()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lwp;->a:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v1, v1, Lcom/snapchat/android/camera/model/CameraModel;->h:Lwy$b;

    .line 45
    iget-object v2, p0, Lwp;->a:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_3

    .line 62
    :cond_1
    :goto_1
    return-void

    .line 45
    :cond_2
    invoke-interface {v1}, Lwy$b;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "on"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 48
    :cond_3
    invoke-direct {p0, p1}, Lwp;->a(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 51
    if-eqz p2, :cond_5

    .line 52
    const-string v2, "on"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_4

    const-string v3, "auto"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    const-string v2, "auto"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 61
    :cond_4
    :goto_2
    if-nez p1, :cond_1

    invoke-interface {v1, v0}, Lwy$b;->a(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    .line 59
    :cond_5
    const-string v2, "off"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 66
    if-eqz p1, :cond_0

    .line 67
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbw;

    invoke-direct {v1, v2}, Lbbw;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 69
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 70
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 72
    iget-object v1, p0, Lwp;->b:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lwp;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbw;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v1, v2}, Lbbw;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lwp;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 79
    iget-object v0, p0, Lwp;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lwp;->a:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->h:Lwy$b;

    .line 86
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lwp;->a(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    if-eqz p1, :cond_3

    .line 89
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_2

    const-string v3, "torch"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    const-string v2, "torch"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 96
    :cond_2
    :goto_1
    invoke-interface {v0, v1}, Lwy$b;->a(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 94
    :cond_3
    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1
.end method
