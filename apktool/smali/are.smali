.class public final Lare;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/ui/here/LocalPreview;
    .annotation build Lchd;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/snapchat/android/ui/here/LocalPreview;

    invoke-direct {v0, p1}, Lcom/snapchat/android/ui/here/LocalPreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lare;->a:Lcom/snapchat/android/ui/here/LocalPreview;
    :try_end_0
    .catch Lcom/snapchat/android/ui/here/LocalPreview$b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :goto_0
    :try_start_1
    iget-object v0, p0, Lare;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_1
    monitor-exit p0

    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 22
    :try_start_2
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LocalPreview$b;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 27
    :cond_0
    :try_start_3
    iget-object v0, p0, Lare;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/LocalPreview;->b:Lcom/snapchat/android/ui/here/LocalPreview$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lare;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(IIIILandroid/hardware/Camera$CameraInfo;)V
    .locals 3

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lare;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    :sswitch_0
    monitor-exit p0

    return-void

    .line 63
    :cond_1
    :try_start_1
    invoke-static {p1, p2, p3, p4}, Lcom/snapchat/android/ui/here/LocalPreview;->a(IIII)V

    .line 65
    iget v0, p5, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    iget v0, p5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sparse-switch v0, :sswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal camera orientation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :sswitch_1
    :try_start_2
    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->f()V

    goto :goto_0

    .line 73
    :sswitch_2
    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->e()V

    .line 74
    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->f()V

    goto :goto_0

    .line 77
    :sswitch_3
    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public final declared-synchronized a([B)V
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lare;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lare;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/here/LocalPreview;->a([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lare;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->d()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    :try_start_1
    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->b()V

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lare;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    .line 45
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "resetPreviewSize() UnsatisfiedLinkError"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
