.class public Landroid/media/SubtitleController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleController$Listener;,
        Landroid/media/SubtitleController$Anchor;,
        Landroid/media/SubtitleController$Renderer;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final WHAT_HIDE:I = 0x2

.field private static final WHAT_SELECT_DEFAULT_TRACK:I = 0x4

.field private static final WHAT_SELECT_TRACK:I = 0x3

.field private static final WHAT_SHOW:I = 0x1


# instance fields
.field private mAnchor:Landroid/media/SubtitleController$Anchor;

.field private final mCallback:Landroid/os/Handler$Callback;

.field private mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/media/SubtitleController$Listener;

.field private mRenderers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleController$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTrack:Landroid/media/SubtitleTrack;

.field private mShowing:Z

.field private mTimeProvider:Landroid/media/MediaTimeProvider;

.field private mTrackIsExplicit:Z

.field private mTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityIsExplicit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Landroid/media/SubtitleController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/media/SubtitleController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/media/SubtitleController$1;

    invoke-direct {v0, p0}, Landroid/media/SubtitleController$1;-><init>(Landroid/media/SubtitleController;)V

    iput-object v0, p0, Landroid/media/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    .line 72
    new-instance v0, Landroid/media/SubtitleController$2;

    invoke-direct {v0, p0}, Landroid/media/SubtitleController$2;-><init>(Landroid/media/SubtitleController;)V

    iput-object v0, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 260
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 261
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 97
    iput-object p2, p0, Landroid/media/SubtitleController;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 98
    iput-object p3, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    .line 100
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    .line 101
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mShowing:Z

    .line 102
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    .line 103
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 105
    return-void
.end method

.method static synthetic access$000(Landroid/media/SubtitleController;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/media/SubtitleController;->doShow()V

    return-void
.end method

.method static synthetic access$100(Landroid/media/SubtitleController;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/media/SubtitleController;->doHide()V

    return-void
.end method

.method static synthetic access$200(Landroid/media/SubtitleController;Landroid/media/SubtitleTrack;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/media/SubtitleController;->doSelectTrack(Landroid/media/SubtitleTrack;)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/SubtitleController;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/media/SubtitleController;->doSelectDefaultTrack()V

    return-void
.end method

.method private checkAnchorLooper()V
    .locals 2

    .prologue
    .line 481
    sget-boolean v0, Landroid/media/SubtitleController;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should have a looper already"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 482
    :cond_0
    sget-boolean v0, Landroid/media/SubtitleController;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Must be called from the anchor\'s looper"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 483
    :cond_1
    return-void
.end method

.method private doHide()V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 368
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->hide()V

    .line 371
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    .line 372
    return-void
.end method

.method private doSelectDefaultTrack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    iget-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    if-eqz v0, :cond_4

    .line 272
    iget-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "is-forced-subtitle"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    :cond_0
    invoke-virtual {p0}, Landroid/media/SubtitleController;->show()V

    .line 281
    :cond_1
    :goto_0
    iput-boolean v2, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 298
    :cond_2
    :goto_1
    return-void

    .line 278
    :cond_3
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->isTimedText()Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    invoke-virtual {p0}, Landroid/media/SubtitleController;->hide()V

    goto :goto_0

    .line 289
    :cond_4
    invoke-virtual {p0}, Landroid/media/SubtitleController;->getDefaultTrack()Landroid/media/SubtitleTrack;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {p0, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 292
    iput-boolean v2, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 293
    iget-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v0, :cond_2

    .line 294
    invoke-virtual {p0}, Landroid/media/SubtitleController;->show()V

    .line 295
    iput-boolean v2, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    goto :goto_1
.end method

.method private doSelectTrack(Landroid/media/SubtitleTrack;)V
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 163
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-ne v0, p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->hide()V

    .line 169
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack;->setTimeProvider(Landroid/media/MediaTimeProvider;)V

    .line 172
    :cond_2
    iput-object p1, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 173
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-direct {p0}, Landroid/media/SubtitleController;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 177
    :cond_3
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_4

    .line 178
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    iget-object v1, p0, Landroid/media/SubtitleController;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack;->setTimeProvider(Landroid/media/MediaTimeProvider;)V

    .line 179
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->show()V

    .line 182
    :cond_4
    iget-object v0, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    invoke-interface {v0, p1}, Landroid/media/SubtitleController$Listener;->onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V

    goto :goto_0
.end method

.method private doShow()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    .line 351
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 352
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->show()V

    .line 355
    :cond_0
    return-void
.end method

.method private getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    goto :goto_0
.end method

.method private processOnAnchor(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 486
    sget-boolean v0, Landroid/media/SubtitleController;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should have a looper already"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 487
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 488
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 5

    .prologue
    .line 320
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleController$Renderer;

    .line 322
    invoke-virtual {v0, p1}, Landroid/media/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    invoke-virtual {v0, p1}, Landroid/media/SubtitleController$Renderer;->createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    .line 325
    iget-object v2, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 326
    :try_start_1
    iget-object v3, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 327
    iget-object v3, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v4, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 330
    :cond_1
    iget-object v3, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 331
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 337
    :goto_0
    return-object v0

    .line 331
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 336
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 337
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 111
    return-void
.end method

.method public getDefaultTrack()Landroid/media/SubtitleTrack;
    .locals 15

    .prologue
    .line 211
    const/4 v6, 0x0

    .line 212
    const/4 v5, -0x1

    .line 214
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 216
    if-nez v2, :cond_10

    .line 217
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    move-object v1, v0

    .line 219
    :goto_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move v3, v0

    .line 221
    :goto_1
    iget-object v12, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    monitor-enter v12

    .line 222
    :try_start_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack;

    .line 223
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v7

    .line 224
    const-string v4, "language"

    invoke-virtual {v7, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 225
    const-string v4, "is-forced-subtitle"

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move v11, v4

    .line 227
    :goto_3
    const-string v4, "is-autoselect"

    const/4 v9, 0x1

    invoke-virtual {v7, v4, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move v10, v4

    .line 229
    :goto_4
    const-string v4, "is-default"

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move v9, v4

    .line 232
    :goto_5
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_1
    const/4 v4, 0x1

    move v8, v4

    .line 238
    :goto_6
    if-eqz v11, :cond_a

    const/4 v4, 0x0

    move v7, v4

    :goto_7
    if-nez v2, :cond_b

    if-eqz v9, :cond_b

    const/4 v4, 0x4

    :goto_8
    add-int/2addr v7, v4

    if-eqz v10, :cond_c

    const/4 v4, 0x0

    :goto_9
    add-int/2addr v7, v4

    if-eqz v8, :cond_d

    const/4 v4, 0x1

    :goto_a
    add-int/2addr v4, v7

    .line 242
    if-eqz v3, :cond_2

    if-eqz v11, :cond_0

    .line 243
    :cond_2
    if-nez v2, :cond_3

    if-nez v9, :cond_4

    :cond_3
    if-eqz v8, :cond_f

    if-nez v10, :cond_4

    if-nez v11, :cond_4

    if-eqz v2, :cond_f

    .line 250
    :cond_4
    if-le v4, v5, :cond_f

    move v14, v4

    move-object v4, v0

    move v0, v14

    :goto_b
    move v5, v0

    move-object v6, v4

    .line 255
    goto/16 :goto_2

    .line 219
    :cond_5
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_1

    .line 225
    :cond_6
    const/4 v4, 0x0

    move v11, v4

    goto :goto_3

    .line 227
    :cond_7
    const/4 v4, 0x0

    move v10, v4

    goto :goto_4

    .line 229
    :cond_8
    const/4 v4, 0x0

    move v9, v4

    goto :goto_5

    .line 232
    :cond_9
    const/4 v4, 0x0

    move v8, v4

    goto :goto_6

    .line 238
    :cond_a
    const/16 v4, 0x8

    move v7, v4

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    goto :goto_8

    :cond_c
    const/4 v4, 0x2

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    goto :goto_a

    .line 256
    :cond_e
    monitor-exit v12

    .line 257
    return-object v6

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_f
    move v0, v5

    move-object v4, v6

    goto :goto_b

    :cond_10
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public getSelectedTrack()Landroid/media/SubtitleTrack;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    return-object v0
.end method

.method public getTracks()[Landroid/media/SubtitleTrack;
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Landroid/media/SubtitleTrack;

    .line 122
    iget-object v2, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 123
    monitor-exit v1

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasRendererFor(Landroid/media/MediaFormat;)Z
    .locals 3

    .prologue
    .line 425
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    monitor-enter v1

    .line 427
    :try_start_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleController$Renderer;

    .line 428
    invoke-virtual {v0, p1}, Landroid/media/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const/4 v0, 0x1

    monitor-exit v1

    .line 432
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 364
    return-void
.end method

.method public registerRenderer(Landroid/media/SubtitleController$Renderer;)V
    .locals 2

    .prologue
    .line 414
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    monitor-enter v1

    .line 416
    :try_start_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    .line 303
    invoke-virtual {p0}, Landroid/media/SubtitleController;->hide()V

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 305
    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 306
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 307
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 308
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 310
    return-void
.end method

.method public selectDefaultTrack()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 266
    return-void
.end method

.method public selectTrack(Landroid/media/SubtitleTrack;)Z
    .locals 2

    .prologue
    .line 153
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    .line 157
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 158
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAnchor(Landroid/media/SubtitleController$Anchor;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 463
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-ne v0, p1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-eqz v0, :cond_2

    .line 468
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    .line 469
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 471
    :cond_2
    iput-object p1, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    .line 472
    iput-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 473
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-eqz v0, :cond_0

    .line 474
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-interface {v1}, Landroid/media/SubtitleController$Anchor;->getSubtitleLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 475
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    .line 476
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-direct {p0}, Landroid/media/SubtitleController;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 347
    return-void
.end method
