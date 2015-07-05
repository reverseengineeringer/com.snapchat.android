.class public Lbgb;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final JPEG_COMPRESSION:I = 0x5f

.field private static final TAG:Ljava/lang/String; = "SaveImageToGalleryTask"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;
    .annotation build Lcgc;
    .end annotation
.end field

.field private final mCameraEventAnalytics:Lcom/snapchat/android/analytics/CameraEventAnalytics;

.field protected final mContext:Landroid/content/Context;

.field private final mNotifications:Lbgc;

.field private final mNotificationsToShow:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

.field private final mSaveSnapContext:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

.field private final mSaveToSnapchatDirectory:Z

.field private final mStorySnap:Lajr;
    .annotation build Lcgc;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lajr;Landroid/graphics/Bitmap;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;Z)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lajr;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p5    # Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 87
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "storySnap and bitmap are both null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lbgb;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lbgb;->mStorySnap:Lajr;

    .line 93
    iput-object p3, p0, Lbgb;->mBitmap:Landroid/graphics/Bitmap;

    .line 94
    iput-object p4, p0, Lbgb;->mSaveSnapContext:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    .line 95
    invoke-static {p5}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    iput-object v0, p0, Lbgb;->mNotificationsToShow:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    .line 96
    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v0

    iput-object v0, p0, Lbgb;->mCameraEventAnalytics:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 97
    invoke-static {}, Lbgc;->a()Lbgc;

    move-result-object v0

    iput-object v0, p0, Lbgb;->mNotifications:Lbgc;

    .line 98
    iput-boolean p6, p0, Lbgb;->mSaveToSnapchatDirectory:Z

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lajr;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 50
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lbgb;-><init>(Landroid/content/Context;Lajr;Landroid/graphics/Bitmap;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 77
    sget-object v5, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->NONE:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lbgb;-><init>(Landroid/content/Context;Lajr;Landroid/graphics/Bitmap;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 65
    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lbgb;-><init>(Landroid/content/Context;Lajr;Landroid/graphics/Bitmap;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;Z)V

    .line 66
    return-void
.end method

.method private varargs b()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lawt;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    iget-object v1, p0, Lbgb;->mStorySnap:Lajr;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbgb;->mStorySnap:Lajr;

    iget-object v3, p0, Lbgb;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lajr;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 115
    :goto_0
    if-nez v1, :cond_2

    .line 116
    const-string v1, "SaveImageToGalleryTask"

    const-string v2, "Failed to get image bitmap from story snap"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_0
    :goto_1
    return-object v0

    .line 114
    :cond_1
    iget-object v1, p0, Lbgb;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 121
    :cond_2
    iget-boolean v3, p0, Lbgb;->mSaveToSnapchatDirectory:Z

    if-eqz v3, :cond_3

    .line 122
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lawt;->a()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 126
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5f

    invoke-virtual {v1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 127
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 128
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    iget-object v4, p0, Lbgb;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 134
    iget-object v4, p0, Lbgb;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lawt;->a(Landroid/content/Context;Ljava/io/File;)V

    .line 138
    :cond_3
    iget-object v3, p0, Lbgb;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v1

    .line 130
    new-instance v2, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v3, "failed to save image"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->d()V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lbgb;->mNotificationsToShow:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    sget-object v1, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->NONE:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    if-eq v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lbgb;->mNotifications:Lbgc;

    invoke-virtual {v0}, Lbgc;->d()V

    .line 176
    :cond_0
    iget-object v0, p0, Lbgb;->mSaveSnapContext:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    if-eqz v0, :cond_1

    .line 177
    const/4 v0, 0x0

    iget-object v1, p0, Lbgb;->mSaveSnapContext:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->b(ZLcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;)V

    .line 179
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 162
    iget-object v0, p0, Lbgb;->mNotificationsToShow:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    sget-object v1, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->ALL:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lbgb;->mNotifications:Lbgc;

    invoke-virtual {v0}, Lbgc;->c()V

    .line 166
    :cond_0
    iget-object v0, p0, Lbgb;->mSaveSnapContext:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    if-eqz v0, :cond_1

    .line 167
    const/4 v0, 0x0

    iget-object v1, p0, Lbgb;->mSaveSnapContext:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(ZLcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;)V

    .line 169
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lbgb;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lbgb;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0, p1}, Lbgb;->a(Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lbgb;->a()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lbgb;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbgb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lbgb;->mNotificationsToShow:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    sget-object v1, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->ALL:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lbgb;->mNotifications:Lbgc;

    invoke-virtual {v0}, Lbgc;->b()V

    .line 146
    :cond_0
    return-void
.end method
