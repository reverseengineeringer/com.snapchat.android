.class public Lcom/brightcove/player/view/BrightcovePlayerFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "fragmentActivityCreated",
        "fragmentCreatedView",
        "fragmentDestroyed",
        "fragmentDestroyedView",
        "fragmentDetached",
        "fragmentPaused",
        "fragmentResumed",
        "fragmentSaveInstanceState",
        "fragmentStarted",
        "fragmentStopped",
        "fragmentViewStateRestored"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "fragmentDestroyedView",
        "fragmentSaveInstanceState"
    }
.end annotation


# static fields
.field protected static final POSITION:Ljava/lang/String; = "position"

.field public static final TAG:Ljava/lang/String;

.field protected static final WAS_PLAYING:Ljava/lang/String; = "wasPlaying"


# instance fields
.field protected brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

.field private eventEmitter:Lcom/brightcove/player/event/EventEmitter;

.field private originalLayoutParamsHeight:I

.field private originalLayoutParamsWidth:I

.field private position:I

.field private wasPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/brightcove/player/view/BrightcovePlayerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brightcove/player/view/BrightcovePlayerFragment;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$101(Lcom/brightcove/player/view/BrightcovePlayerFragment;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public fullScreen()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 91
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 98
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 99
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 100
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fullScreen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 105
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsWidth:I

    .line 106
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsHeight:I

    .line 107
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    return-void
.end method

.method public getBrightcoveVideoView()Lcom/brightcove/player/view/BrightcoveVideoView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    return-object v0
.end method

.method public normalScreen()V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "normalScreen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    iget v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsWidth:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsHeight:I

    if-eq v0, v3, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 128
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 129
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 131
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 132
    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 133
    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iput v3, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsWidth:I

    .line 138
    iput v3, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsHeight:I

    .line 140
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    if-eqz p1, :cond_0

    .line 150
    const-string v1, "instanceState"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "fragmentActivityCreated"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 154
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    iput-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 163
    new-instance v1, Lcom/brightcove/player/event/EventLogger;

    iget-object v2, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/brightcove/player/event/EventLogger;-><init>(Lcom/brightcove/player/event/EventEmitter;ZLjava/lang/String;)V

    .line 165
    if-eqz p3, :cond_0

    .line 166
    const-string v1, "position"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->position:I

    .line 167
    const-string v1, "wasPlaying"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->wasPlaying:Z

    .line 170
    :cond_0
    new-instance v1, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 171
    iget-object v2, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v2, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 175
    if-eqz p3, :cond_1

    .line 176
    const-string v2, "instanceState"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v3, "fragmentCreatedView"

    invoke-interface {v2, v3, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 184
    return-object v0

    .line 181
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "brightcoveVideoView needs to be wired up to the layout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 233
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "fragmentDestroyed"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 242
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "fragmentDestroyedView"

    new-instance v2, Lcom/brightcove/player/view/BrightcovePlayerFragment$1;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcovePlayerFragment$1;-><init>(Lcom/brightcove/player/view/BrightcovePlayerFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 250
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "fragmentDestroyedView"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 257
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "fragmentDetached"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 205
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->pause()V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->wasPlaying:Z

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->position:I

    .line 214
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "fragmentPaused"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 215
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->wasPlaying:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 222
    iget-boolean v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->wasPlaying:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->start()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "fragmentResumed"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 270
    const-string v0, "position"

    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->position:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    const-string v0, "wasPlaying"

    iget-boolean v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->wasPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "fragmentSaveInstanceState"

    new-instance v2, Lcom/brightcove/player/view/BrightcovePlayerFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/brightcove/player/view/BrightcovePlayerFragment$2;-><init>(Lcom/brightcove/player/view/BrightcovePlayerFragment;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 284
    const-string v1, "instanceState"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "fragmentSaveInstanceState"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 286
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 192
    iget v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->position:I

    if-lez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->position:I

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->seekTo(I)V

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->position:I

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "fragmentStarted"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 264
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->stopPlayback()V

    .line 265
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "fragmentStopped"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 295
    if-eqz p1, :cond_0

    .line 296
    const-string v1, "instanceState"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "fragmentViewStateRestored"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 300
    return-void
.end method
