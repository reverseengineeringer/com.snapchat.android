.class public final Lwn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lwq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final c:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lwn;-><init>(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V

    .line 31
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lwn;)V

    .line 35
    iput-object p1, p0, Lwn;->c:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Laue;
    .locals 10
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lwn;->a:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v1, v1, Lcom/snapchat/android/camera/model/CameraModel;->h:Lwc$b;

    .line 42
    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    invoke-interface {v1}, Lwc$b;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    .line 51
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    .line 52
    :goto_1
    iget-object v1, p0, Lwn;->b:Lwq;

    iget-object v0, p0, Lwn;->a:Lcom/snapchat/android/camera/model/CameraModel;

    iget v3, v0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v0

    div-double/2addr v4, v8

    invoke-virtual/range {v1 .. v6}, Lwq;->a(Landroid/hardware/Camera$Parameters;IDZ)Laue;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method
