.class public Lcom/brightcove/player/view/BrightcovePlayer;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/Component;


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "activityCreated",
        "activityDestroyed",
        "activityPaused",
        "activityRestarted",
        "activityResumed",
        "activitySaveInstanceState",
        "activityStarted",
        "activityStopped"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "activityDestroyed",
        "activitySaveInstanceState"
    }
.end annotation


# static fields
.field protected static final POSITION:Ljava/lang/String; = "position"

.field public static final TAG:Ljava/lang/String;

.field protected static final WAS_PLAYING:Ljava/lang/String; = "wasPlaying"


# instance fields
.field protected brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

.field private eventEmitter:Lcom/brightcove/player/event/EventEmitter;

.field private eventLogger:Lcom/brightcove/player/event/EventLogger;

.field private originalLayoutParamsHeight:I

.field private originalLayoutParamsWidth:I

.field private position:I

.field private wasPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/brightcove/player/view/BrightcovePlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/view/BrightcovePlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brightcove/player/view/BrightcovePlayer;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->position:I

    return v0
.end method

.method static synthetic access$002(Lcom/brightcove/player/view/BrightcovePlayer;I)I
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->position:I

    return p1
.end method

.method static synthetic access$100(Lcom/brightcove/player/view/BrightcovePlayer;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->wasPlaying:Z

    return v0
.end method

.method static synthetic access$102(Lcom/brightcove/player/view/BrightcovePlayer;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->wasPlaying:Z

    return p1
.end method

.method static synthetic access$200(Lcom/brightcove/player/view/BrightcovePlayer;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$301(Lcom/brightcove/player/view/BrightcovePlayer;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method private hideActionBar()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 101
    :cond_0
    return-void
.end method

.method private showActionBar()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public fullScreen()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 138
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->hideActionBar()V

    .line 140
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 141
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 142
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fullScreen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 147
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsWidth:I

    .line 148
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsHeight:I

    .line 149
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 150
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 151
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BaseVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    return-void
.end method

.method public getBaseVideoView()Lcom/brightcove/player/view/BaseVideoView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method public getBrightcoveVideoView()Lcom/brightcove/player/view/BrightcoveVideoView;
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    instance-of v1, v1, Lcom/brightcove/player/view/BrightcoveVideoView;

    if-eqz v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    check-cast v0, Lcom/brightcove/player/view/BrightcoveVideoView;

    .line 85
    :cond_0
    return-object v0
.end method

.method public getEventLogger()Lcom/brightcove/player/event/EventLogger;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventLogger:Lcom/brightcove/player/event/EventLogger;

    return-object v0
.end method

.method public hideClosedCaptioningDialog()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getClosedCaptioningController()Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->hideCaptionsDialog()V

    .line 132
    return-void
.end method

.method public normalScreen()V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "normalScreen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    iget v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsWidth:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsHeight:I

    if-eq v0, v2, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->showActionBar()V

    .line 164
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 165
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 166
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 169
    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 171
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BaseVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iput v2, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsWidth:I

    .line 175
    iput v2, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsHeight:I

    .line 177
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 194
    new-instance v0, Lcom/brightcove/player/event/EventLogger;

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/brightcove/player/event/EventLogger;-><init>(Lcom/brightcove/player/event/EventEmitter;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventLogger:Lcom/brightcove/player/event/EventLogger;

    .line 196
    if-eqz p1, :cond_0

    .line 197
    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->position:I

    .line 198
    const-string v0, "wasPlaying"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->wasPlaying:Z

    .line 201
    :cond_0
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 202
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BaseVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    if-eqz p1, :cond_1

    .line 206
    const-string v1, "instanceState"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "activityCreated"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 209
    return-void

    .line 210
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "brightcoveVideoView needs to be wired up to the layout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 279
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "activityDestroyed"

    new-instance v2, Lcom/brightcove/player/view/BrightcovePlayer$2;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcovePlayer$2;-><init>(Lcom/brightcove/player/view/BrightcovePlayer;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 287
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "activityDestroyed"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 243
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->pause()V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->wasPlaying:Z

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "activityPaused"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 251
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->wasPlaying:Z

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 270
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "activityRestarted"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 258
    iget-boolean v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->wasPlaying:Z

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "activityResumed"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 302
    const-string v0, "position"

    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->position:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    const-string v0, "wasPlaying"

    iget-boolean v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->wasPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "activitySaveInstanceState"

    new-instance v2, Lcom/brightcove/player/view/BrightcovePlayer$3;

    invoke-direct {v2, p0, p1}, Lcom/brightcove/player/view/BrightcovePlayer$3;-><init>(Lcom/brightcove/player/view/BrightcovePlayer;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 315
    const-string v1, "instanceState"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "activitySaveInstanceState"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 317
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 219
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "didSetVideo"

    new-instance v2, Lcom/brightcove/player/view/BrightcovePlayer$1;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcovePlayer$1;-><init>(Lcom/brightcove/player/view/BrightcovePlayer;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 235
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "activityStarted"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 295
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->position:I

    .line 296
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->stopPlayback()V

    .line 297
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "activityStopped"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public showClosedCaptioningDialog()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getClosedCaptioningController()Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->showCaptionsDialog()V

    .line 122
    return-void
.end method
