.class public final Lcom/snapchat/android/analytics/CameraEventAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;,
        Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;
    }
.end annotation


# static fields
.field protected static final CAMERA_BUTTON_PRESSED_EVENT:Ljava/lang/String; = "CAMERA_BUTTON_PRESSED"

.field protected static final CAMERA_DELAY_EVENT:Ljava/lang/String; = "CAMERA_DELAY"

.field protected static final CAMERA_READY_EVENT:Ljava/lang/String; = "CAMERA_READY"

.field protected static final CAMERA_RUNNING_PARAM:Ljava/lang/String; = "camera_running"

.field protected static final CAMERA_SWITCH_EVENT:Ljava/lang/String; = "CAMERA_SWITCH"

.field protected static final CONTEXT_PARAM:Ljava/lang/String; = "context"

.field protected static final EXIT_CAMERA_VIEW_EVENT:Ljava/lang/String; = "EXIT_CAMERA_VIEW"

.field protected static final RECORDING_DELAY_EVENT:Ljava/lang/String; = "RECORDING_DELAY"

.field protected static final SAVE_SNAP_FAILED_EVENT:Ljava/lang/String; = "SAVE_SNAP_FAILED"

.field protected static final SAVE_SNAP_SUCCESS_EVENT:Ljava/lang/String; = "SAVE_SNAP_SUCCESS"

.field protected static final START_VIDEO_RECORDING_EVENT:Ljava/lang/String; = "START_VIDEO_RECORDING"

.field protected static final TYPE_PARAM:Ljava/lang/String; = "type"

.field protected static final VIDEO_RECORDING_ERROR_EVENT:Ljava/lang/String; = "VIDEO_RECORDING_ERROR"

.field protected static final VIDEO_RECORDING_SUCCESS_EVENT:Ljava/lang/String; = "VIDEO_RECORDING_SUCCESS"

.field private static final sInstance:Lcom/snapchat/android/analytics/CameraEventAnalytics;


# instance fields
.field private mCameraAlreadyReady:Z

.field public mCameraModel:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

.field public mFlashModel:Lxf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mStartupContext:Lavv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->sInstance:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lavv;->a()Lavv;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;-><init>(Lavv;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    .line 108
    return-void
.end method

.method private constructor <init>(Lavv;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraAlreadyReady:Z

    .line 112
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics;)V

    .line 113
    iput-object p1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mStartupContext:Lavv;

    .line 114
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    invoke-direct {v0, p2}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    iput-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    .line 115
    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/CameraEventAnalytics;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->sInstance:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-object v0
.end method

.method public static a(IIJILcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V
    .locals 4

    .prologue
    .line 337
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "START_VIDEO_RECORDING"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "video_width"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "video_height"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "max_file_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "bit_rate"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "transcoding_status"

    invoke-virtual {p5}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 343
    return-void
.end method

.method public static a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V
    .locals 3
    .param p0    # Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 323
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v1, "VIDEO_RECORDING_ERROR"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "error_code"

    invoke-virtual {p0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 325
    return-void
.end method

.method public static a(ZLcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 347
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SAVE_SNAP_SUCCESS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "video_type"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 350
    return-void
.end method

.method public static b(ZLcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 354
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SAVE_SNAP_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "video_type"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 357
    return-void
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIDEO_RECORDING_SUCCESS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 332
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraModel:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraAlreadyReady:Z

    .line 202
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "CAMERA_DELAY"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "CAMERA_DELAY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "context"

    invoke-static {p1}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 205
    :cond_1
    return-void

    .line 195
    :cond_2
    iput-boolean v3, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraAlreadyReady:Z

    .line 196
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "CAMERA_DELAY"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "CAMERA_DELAY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "camera_running"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "RECORDING_DELAY"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    if-eqz p1, :cond_1

    const-string v0, "video"

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v2, "RECORDING_DELAY"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 249
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "RECORDING_DELAY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    .line 251
    :cond_0
    return-void

    .line 247
    :cond_1
    const-string v0, "image"

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraAlreadyReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraModel:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "CAMERA_DELAY"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "CameraEventAnalytics::onCameraFragmentVisible: CAMERA_DELAY has not been created."

    invoke-static {v0, v1}, Lco;->a(ZLjava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "CAMERA_DELAY"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "camera_running"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 162
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->c()V

    .line 178
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "EXIT_CAMERA_VIEW"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 179
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraModel:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "CAMERA_DELAY"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Lavv;->b()Lcom/snapchat/android/util/StartupPath;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/snapchat/android/util/StartupPath;->FROM_BACKGROUNDED_STATE:Lcom/snapchat/android/util/StartupPath;

    if-ne v0, v1, :cond_2

    .line 166
    sget-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->BACKGROUND:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    goto :goto_0

    .line 167
    :cond_2
    sget-object v1, Lcom/snapchat/android/util/StartupPath;->FROM_KILLED_STATE:Lcom/snapchat/android/util/StartupPath;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/snapchat/android/util/StartupPath;->FROM_DESTROYED_STATE:Lcom/snapchat/android/util/StartupPath;

    if-ne v0, v1, :cond_0

    .line 175
    :cond_3
    sget-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->KILLED_STATE:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraAlreadyReady:Z

    .line 212
    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v2, "CAMERA_DELAY"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    .line 213
    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v2, "CAMERA_SWITCH"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    .line 214
    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v2, "CAMERA_READY"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v2, "CAMERA_READY"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "type"

    invoke-static {}, Lavv;->b()Lcom/snapchat/android/util/StartupPath;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "from_background"

    invoke-static {}, Lavv;->b()Lcom/snapchat/android/util/StartupPath;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/util/StartupPath;->FROM_BACKGROUNDED_STATE:Lcom/snapchat/android/util/StartupPath;

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 217
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "CAMERA_READY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    .line 219
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 5

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraModel:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mFlashModel:Lxf;

    iget-boolean v1, v1, Lxf;->a:Z

    iget-object v2, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v3, "EXIT_CAMERA_VIEW"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v3, "EXIT_CAMERA_VIEW"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "context"

    const-string v4, "take_snap"

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    iget-object v2, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v3, "EXIT_CAMERA_VIEW"

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v3, "CAMERA_BUTTON_PRESSED"

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "front_facing"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v2, "flash"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "CAMERA_BUTTON_PRESSED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "RECORDING_DELAY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 226
    return-void
.end method
