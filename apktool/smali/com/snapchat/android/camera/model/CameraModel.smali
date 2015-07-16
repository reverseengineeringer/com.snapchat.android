.class public final Lcom/snapchat/android/camera/model/CameraModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lbxr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/camera/model/CameraModel$1;,
        Lcom/snapchat/android/camera/model/CameraModel$CameraType;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Lavc;

.field public g:Z

.field public h:Lwy$b;

.field public i:Z

.field public j:Z

.field private k:[Landroid/hardware/Camera$CameraInfo;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lwg;->a()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->k:[Landroid/hardware/Camera$CameraInfo;

    .line 29
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->a:I

    .line 31
    iput v2, p0, Lcom/snapchat/android/camera/model/CameraModel;->b:I

    .line 32
    iput v2, p0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    .line 33
    iput-boolean v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->d:Z

    .line 39
    iput-boolean v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->i:Z

    .line 40
    iput-boolean v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->j:Z

    .line 49
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 52
    iget v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->b:I

    .line 53
    iget v2, p0, Lcom/snapchat/android/camera/model/CameraModel;->b:I

    iget v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->a:I

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "cameraNumber: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lt v1, v0, :cond_1

    :goto_0
    rem-int v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/model/CameraModel;->a(I)V

    .line 54
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 57
    iput p1, p0, Lcom/snapchat/android/camera/model/CameraModel;->b:I

    .line 58
    iget v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->b:I

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CAMERA_NUMBER_PREFERENCE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lava;->a(Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public final a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 63
    sget-object v0, Lcom/snapchat/android/camera/model/CameraModel$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 69
    iget-object v2, p0, Lcom/snapchat/android/camera/model/CameraModel;->k:[Landroid/hardware/Camera$CameraInfo;

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v3, v2, v0

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 71
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/model/CameraModel;->a(I)V

    .line 72
    return-void

    .line 65
    :pswitch_0
    iget-object v2, p0, Lcom/snapchat/android/camera/model/CameraModel;->k:[Landroid/hardware/Camera$CameraInfo;

    move v0, v1

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    .line 69
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/model/CameraModel;->b(I)Z

    move-result v0

    return v0
.end method

.method public final b(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 111
    iget v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->k:[Landroid/hardware/Camera$CameraInfo;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->k:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 118
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/snapchat/android/camera/model/CameraModel;->a:I

    if-ge v0, v2, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/model/CameraModel;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    const/4 v1, 0x1

    .line 124
    :cond_0
    return v1

    .line 118
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Landroid/hardware/Camera$CameraInfo;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 190
    iget v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->k:[Landroid/hardware/Camera$CameraInfo;

    iget v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    aget-object v0, v0, v1

    .line 193
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
