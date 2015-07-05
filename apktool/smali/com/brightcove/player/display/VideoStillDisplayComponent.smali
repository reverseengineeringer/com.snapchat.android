.class public Lcom/brightcove/player/display/VideoStillDisplayComponent;
.super Lcom/brightcove/player/event/AbstractComponent;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/Component;


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {}
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "activityStopped",
        "cuePoint",
        "didPlay",
        "didSeekTo",
        "fragmentStopped",
        "setVideoStill",
        "willInterruptContent"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/display/VideoStillDisplayComponent$1;,
        Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;,
        Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private activityStoppedListenerToken:I

.field private cuePointListenerToken:I

.field private didPlayListenerToken:I

.field private didSeekToListenerToken:I

.field private fragmentStoppedListenerToken:I

.field private task:Lcom/brightcove/player/display/tasks/LoadImageTask;

.field private view:Landroid/widget/ImageView;

.field private willInterruptContentListenerToken:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/brightcove/player/display/VideoStillDisplayComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Lcom/brightcove/player/event/EventEmitter;)V
    .locals 3

    .prologue
    .line 70
    const-class v0, Lcom/brightcove/player/display/VideoStillDisplayComponent;

    invoke-direct {p0, p2, v0}, Lcom/brightcove/player/event/AbstractComponent;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "imageViewRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->view:Landroid/widget/ImageView;

    .line 75
    const-string v0, "setVideoStill"

    new-instance v1, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;-><init>(Lcom/brightcove/player/display/VideoStillDisplayComponent;Lcom/brightcove/player/display/VideoStillDisplayComponent$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->view:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/brightcove/player/display/VideoStillDisplayComponent;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->willInterruptContentListenerToken:I

    return v0
.end method

.method static synthetic access$1002(Lcom/brightcove/player/display/VideoStillDisplayComponent;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->willInterruptContentListenerToken:I

    return p1
.end method

.method static synthetic access$1100(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/brightcove/player/display/VideoStillDisplayComponent;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->activityStoppedListenerToken:I

    return v0
.end method

.method static synthetic access$1202(Lcom/brightcove/player/display/VideoStillDisplayComponent;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->activityStoppedListenerToken:I

    return p1
.end method

.method static synthetic access$1300(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/brightcove/player/display/VideoStillDisplayComponent;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->fragmentStoppedListenerToken:I

    return v0
.end method

.method static synthetic access$1402(Lcom/brightcove/player/display/VideoStillDisplayComponent;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->fragmentStoppedListenerToken:I

    return p1
.end method

.method static synthetic access$1500(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/display/tasks/LoadImageTask;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->task:Lcom/brightcove/player/display/tasks/LoadImageTask;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/brightcove/player/display/VideoStillDisplayComponent;Lcom/brightcove/player/display/tasks/LoadImageTask;)Lcom/brightcove/player/display/tasks/LoadImageTask;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->task:Lcom/brightcove/player/display/tasks/LoadImageTask;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/brightcove/player/display/VideoStillDisplayComponent;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->recycle()V

    return-void
.end method

.method static synthetic access$400(Lcom/brightcove/player/display/VideoStillDisplayComponent;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->cuePointListenerToken:I

    return v0
.end method

.method static synthetic access$402(Lcom/brightcove/player/display/VideoStillDisplayComponent;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->cuePointListenerToken:I

    return p1
.end method

.method static synthetic access$500(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/brightcove/player/display/VideoStillDisplayComponent;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->didPlayListenerToken:I

    return v0
.end method

.method static synthetic access$602(Lcom/brightcove/player/display/VideoStillDisplayComponent;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->didPlayListenerToken:I

    return p1
.end method

.method static synthetic access$700(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/brightcove/player/display/VideoStillDisplayComponent;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->didSeekToListenerToken:I

    return v0
.end method

.method static synthetic access$802(Lcom/brightcove/player/display/VideoStillDisplayComponent;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->didSeekToListenerToken:I

    return p1
.end method

.method static synthetic access$900(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method private recycle()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 136
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 137
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    :cond_0
    return-void
.end method
