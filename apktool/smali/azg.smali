.class public final Lazg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lazv$a;


# static fields
.field public static final INTENT_REQUEST_CODE:I = 0xa957

.field public static final SCREENSHOT_FILE_PREFIX:Ljava/lang/String; = "snapchat_shake2report_screenshot_"

.field private static final TAG:Ljava/lang/String; = "BugReportGenerator"


# instance fields
.field private mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lazg;->mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 47
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "snapchat_shake2report_screenshot_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 201
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 213
    :goto_0
    return-object v0

    .line 203
    :cond_0
    new-instance v0, Lazs;

    invoke-direct {v0}, Lazs;-><init>()V

    .line 204
    invoke-static {p0}, Lazs;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lazg;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 207
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 208
    invoke-static {v1}, Lbfo;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final a(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 170
    if-nez p1, :cond_1

    move-object p1, v1

    .line 188
    :cond_0
    :goto_0
    return-object p1

    .line 174
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p2, :cond_0

    .line 178
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 179
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 180
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    move-object v0, p1

    .line 181
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lazg;->a(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_2

    move-object p1, v0

    .line 183
    goto :goto_0

    .line 180
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object p1, v1

    .line 188
    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lazv;)V
    .locals 3

    .prologue
    .line 51
    const-string v0, "BugReportGenerator"

    const-string v1, "Activated Shake To Report"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    sget-object v0, Lauh;->SERIAL_EXECUTOR_FOR_DEBUGGING:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lazg$1;

    invoke-direct {v1, p0, p1, p2}, Lazg$1;-><init>(Lazg;Landroid/app/Activity;Lazv;)V

    invoke-static {v0, v1}, Lbgp;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method final a(Landroid/app/Activity;Lazv;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-static {p1, p3}, Lazg;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Lazk;->a(Landroid/content/Context;Z)[Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    if-eqz p3, :cond_0

    .line 71
    :goto_1
    new-instance v1, Lazg$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lazg$2;-><init>(Lazg;Landroid/app/Activity;Lazv;Ljava/lang/String;)V

    invoke-static {v1}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 77
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    const-string v2, "BugReportGenerator"

    invoke-static {v2, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(Landroid/view/View;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/ui/FrivolousAnimationView;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    if-nez p1, :cond_1

    .line 240
    :cond_0
    return-void

    .line 230
    :cond_1
    instance-of v0, p1, Lcom/snapchat/android/ui/FrivolousAnimationView;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 231
    check-cast v0, Lcom/snapchat/android/ui/FrivolousAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 235
    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    move-object v0, p1

    .line 237
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lazg;->a(Landroid/view/View;Ljava/util/Map;)V

    .line 236
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method final b(Landroid/app/Activity;Lazv;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 273
    invoke-static {}, Lbgp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lauh;->SERIAL_EXECUTOR_FOR_DEBUGGING:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lazg$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lazg$8;-><init>(Lazg;Landroid/app/Activity;Lazv;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lbgp;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lazg;->a(Landroid/app/Activity;Lazv;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method final b(Landroid/view/View;Ljava/util/Map;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/ui/FrivolousAnimationView;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 268
    :cond_0
    return-void

    .line 254
    :cond_1
    instance-of v0, p1, Lcom/snapchat/android/ui/FrivolousAnimationView;

    if-eqz v0, :cond_2

    .line 255
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 260
    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    move-object v0, p1

    .line 262
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_3

    .line 264
    invoke-virtual {p0, v0, p2}, Lazg;->b(Landroid/view/View;Ljava/util/Map;)V

    .line 261
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
