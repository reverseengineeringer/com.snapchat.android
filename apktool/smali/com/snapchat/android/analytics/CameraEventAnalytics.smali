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

.field public mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field public mFlashModel:Lwj;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mStartupContext:Laux;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->sInstance:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Laux;->a()Laux;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;-><init>(Laux;)V

    .line 106
    return-void
.end method

.method private constructor <init>(Laux;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraAlreadyReady:Z

    .line 110
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics;)V

    .line 111
    iput-object p1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mStartupContext:Laux;

    .line 112
    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/CameraEventAnalytics;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->sInstance:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-object v0
.end method

.method public static a(IIJILcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V
    .locals 4

    .prologue
    .line 319
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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 325
    return-void
.end method

.method public static a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V
    .locals 3
    .param p0    # Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 307
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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 308
    return-void
.end method

.method public static a(ZLcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 329
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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 332
    return-void
.end method

.method public static b(ZLcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 336
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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 339
    return-void
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 314
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIDEO_RECORDING_SUCCESS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 315
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraModel:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    iput-boolean v2, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraAlreadyReady:Z

    .line 197
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_DELAY"

    const-string v2, "context"

    invoke-static {p1}, Lath;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 198
    return-void

    .line 191
    :cond_1
    iput-boolean v3, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraAlreadyReady:Z

    .line 192
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_DELAY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_DELAY"

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Z)V

    .line 194
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_DELAY"

    const-string v2, "camera_running"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 237
    if-eqz p1, :cond_0

    const-string v0, "video"

    .line 238
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "RECORDING_DELAY"

    const-string v3, "type"

    invoke-virtual {v1, v2, v3, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "RECORDING_DELAY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;)V

    .line 240
    return-void

    .line 237
    :cond_0
    const-string v0, "image"

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 155
    iget-boolean v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraAlreadyReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraModel:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_DELAY"

    invoke-virtual {v0, v1, v4}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Z)V

    .line 157
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_DELAY"

    const-string v2, "camera_running"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 158
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->c()V

    .line 174
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "EXIT_CAMERA_VIEW"

    invoke-virtual {v0, v1, v4}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Z)V

    .line 175
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraModel:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_DELAY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-static {}, Laux;->b()Lcom/snapchat/android/util/StartupPath;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/snapchat/android/util/StartupPath;->FROM_BACKGROUNDED_STATE:Lcom/snapchat/android/util/StartupPath;

    if-ne v0, v1, :cond_2

    .line 162
    sget-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->BACKGROUND:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    goto :goto_0

    .line 163
    :cond_2
    sget-object v1, Lcom/snapchat/android/util/StartupPath;->FROM_KILLED_STATE:Lcom/snapchat/android/util/StartupPath;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/snapchat/android/util/StartupPath;->FROM_DESTROYED_STATE:Lcom/snapchat/android/util/StartupPath;

    if-ne v0, v1, :cond_0

    .line 171
    :cond_3
    sget-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->KILLED_STATE:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraAlreadyReady:Z

    .line 205
    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "CAMERA_DELAY"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "CAMERA_SWITCH"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "CAMERA_READY"

    const-string v3, "type"

    invoke-static {}, Laux;->b()Lcom/snapchat/android/util/StartupPath;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 208
    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "CAMERA_READY"

    const-string v3, "from_background"

    invoke-static {}, Laux;->b()Lcom/snapchat/android/util/StartupPath;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/util/StartupPath;->FROM_BACKGROUNDED_STATE:Lcom/snapchat/android/util/StartupPath;

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_READY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public final d()V
    .locals 6

    .prologue
    .line 217
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraModel:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mFlashModel:Lwj;

    iget-boolean v1, v1, Lwj;->a:Z

    iget-object v2, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v3, "EXIT_CAMERA_VIEW"

    const-string v4, "context"

    const-string v5, "take_snap"

    invoke-virtual {v2, v3, v4, v5}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    iget-object v2, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v3, "EXIT_CAMERA_VIEW"

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;)V

    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "CAMERA_BUTTON_PRESSED"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "RECORDING_DELAY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Z)V

    .line 218
    return-void
.end method
