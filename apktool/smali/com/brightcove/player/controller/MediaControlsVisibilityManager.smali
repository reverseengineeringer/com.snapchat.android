.class public Lcom/brightcove/player/controller/MediaControlsVisibilityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/controller/MediaControlsVisibilityManager$1;,
        Lcom/brightcove/player/controller/MediaControlsVisibilityManager$VisibilityRestoreEventHandler;,
        Lcom/brightcove/player/controller/MediaControlsVisibilityManager$VisibilitySaveEventHandler;,
        Lcom/brightcove/player/controller/MediaControlsVisibilityManager$ShowHideEventHandler;
    }
.end annotation


# static fields
.field private static final MEDIA_CONTROLS_VISIBILITY_STATE:Ljava/lang/String; = "mediaControlsVisibilityState"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private videoView:Lcom/brightcove/player/view/BaseVideoView;

.field private final visibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/view/BaseVideoView;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->visibilityMap:Ljava/util/Map;

    .line 69
    iput-object p1, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->videoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 70
    return-void
.end method

.method static synthetic access$300(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->visibilityMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->saveVisibilityState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->restoreVisibilityState(Landroid/os/Bundle;)V

    return-void
.end method

.method private restoreVisibilityState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 139
    iget-object v0, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->visibilityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 143
    if-nez v2, :cond_0

    .line 144
    const-string v2, "Invalid visibility state (0) detected using key: %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->visibilityMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_1
    return-void
.end method

.method private saveVisibilityState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 124
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 126
    const-string v0, "mediaControlsVisibilityState"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 127
    iget-object v0, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->visibilityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->visibilityMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public initListeners(Lcom/brightcove/player/event/EventEmitter;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$ShowHideEventHandler;

    invoke-direct {v0, p0, v2}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$ShowHideEventHandler;-><init>(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;Lcom/brightcove/player/controller/MediaControlsVisibilityManager$1;)V

    .line 82
    const-string v1, "hideSeekControls"

    invoke-interface {p1, v1, v0}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 83
    const-string v1, "showSeekControls"

    invoke-interface {p1, v1, v0}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 84
    const-string v0, "activityCreated"

    new-instance v1, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$VisibilityRestoreEventHandler;

    invoke-direct {v1, p0, v2}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$VisibilityRestoreEventHandler;-><init>(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;Lcom/brightcove/player/controller/MediaControlsVisibilityManager$1;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 85
    const-string v0, "activitySaveInstanceState"

    new-instance v1, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$VisibilitySaveEventHandler;

    invoke-direct {v1, p0, v2}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$VisibilitySaveEventHandler;-><init>(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;Lcom/brightcove/player/controller/MediaControlsVisibilityManager$1;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 86
    return-void
.end method

.method public setVisibilityState()V
    .locals 6

    .prologue
    .line 92
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    iget-object v0, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->videoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getMediaController()Landroid/widget/MediaController;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_2

    .line 96
    iget-object v0, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->visibilityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 102
    invoke-virtual {v2, v4}, Landroid/widget/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 103
    if-eqz v4, :cond_0

    .line 104
    iget-object v5, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->visibilityMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "View/button: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " does not exist!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 111
    :cond_2
    return-void
.end method
