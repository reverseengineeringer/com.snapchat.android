.class public Lcom/brightcove/player/display/tasks/LoadImageTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/Component;


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "didSetVideoStill"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {}
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/net/URI;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/brightcove/player/event/Component;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private eventEmitter:Lcom/brightcove/player/event/EventEmitter;

.field private httpService:Lcom/brightcove/player/media/HttpService;

.field private imageNotLoadedResourceId:I

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private successEventType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/brightcove/player/display/tasks/LoadImageTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/display/tasks/LoadImageTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Lcom/brightcove/player/event/EventEmitter;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    const v0, 0x108001c

    iput v0, p0, Lcom/brightcove/player/display/tasks/LoadImageTask;->imageNotLoadedResourceId:I

    .line 57
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "imageViewAndEventEmitterRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    const-class v0, Lcom/brightcove/player/display/tasks/LoadImageTask;

    invoke-static {p2, v0}, Lcom/brightcove/player/event/RegisteringEventEmitter;->build(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)Lcom/brightcove/player/event/RegisteringEventEmitter;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/display/tasks/LoadImageTask;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/brightcove/player/display/tasks/LoadImageTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 62
    new-instance v0, Lcom/brightcove/player/media/HttpService;

    invoke-direct {v0}, Lcom/brightcove/player/media/HttpService;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/display/tasks/LoadImageTask;->httpService:Lcom/brightcove/player/media/HttpService;

    .line 63
    return-void
.end method

.method private getByteCount(Landroid/graphics/Bitmap;)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 177
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 182
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getDisplay()Landroid/view/Display;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/brightcove/player/display/tasks/LoadImageTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 116
    if-eqz v0, :cond_1

    .line 117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 121
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private getDisplaySize()Landroid/graphics/Point;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 132
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/brightcove/player/display/tasks/LoadImageTask;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_0

    .line 136
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 137
    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 141
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/net/URI;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 89
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    aget-object v0, p1, v5

    if-nez v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "urlRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    const/4 v0, 0x0

    .line 96
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    .line 97
    invoke-direct {p0}, Lcom/brightcove/player/display/tasks/LoadImageTask;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    iget-object v3, p0, Lcom/brightcove/player/display/tasks/LoadImageTask;->httpService:Lcom/brightcove/player/media/HttpService;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v1, v4, v2}, Lcom/brightcove/player/media/HttpService;->doImageGetRequest(Ljava/net/URI;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/brightcove/player/display/tasks/LoadImageTask;->httpService:Lcom/brightcove/player/media/HttpService;

    invoke-virtual {v2, v1}, Lcom/brightcove/player/media/HttpService;->doImageGetRequest(Ljava/net/URI;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error encountered in loading image: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, [Ljava/net/URI;

    invoke-virtual {p0, p1}, Lcom/brightcove/player/display/tasks/LoadImageTask;->doInBackground([Ljava/net/URI;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSuccessEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/brightcove/player/display/tasks/LoadImageTask;->successEventType:Ljava/lang/String;

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPostExecute: byte count = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/brightcove/player/display/tasks/LoadImageTask;->getByteCount(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/display/tasks/LoadImageTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/brightcove/player/display/tasks/LoadImageTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 157
    if-eqz v0, :cond_1

    .line 158
    if-eqz p1, :cond_2

    .line 159
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 163
    iget-object v0, p0, Lcom/brightcove/player/display/tasks/LoadImageTask;->successEventType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/brightcove/player/display/tasks/LoadImageTask;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    iget-object v1, p0, Lcom/brightcove/player/display/tasks/LoadImageTask;->successEventType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    iget v1, p0, Lcom/brightcove/player/display/tasks/LoadImageTask;->imageNotLoadedResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/brightcove/player/display/tasks/LoadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setSuccessEventType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/brightcove/player/display/tasks/LoadImageTask;->successEventType:Ljava/lang/String;

    .line 80
    return-void
.end method
