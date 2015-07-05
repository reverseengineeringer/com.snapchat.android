.class public Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;
.super Lcom/brightcove/player/event/AbstractComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "toggleClosedCaptions",
        "setCaptionsState"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "captionsAvailable",
        "didSetVideo"
    }
.end annotation


# static fields
.field public static final CC_ENABLED_STATE:Ljava/lang/String; = "ClosedCaptioningEnabledState"

.field public static final CLOSED_CAPTIONING_PLAYER_PREFERENCES:Ljava/lang/String; = "ClosedCaptioningPlayerPreferences"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected activity:Landroid/app/Activity;

.field private advancedOptionsClickedListener:Landroid/view/View$OnClickListener;

.field protected advancedOptionsLink:Landroid/widget/TextView;

.field protected captionDialogButton:Landroid/widget/Button;

.field protected captionDialogMessage:Landroid/widget/TextView;

.field private captioningChangeListener:Lcom/brightcove/player/controller/CaptioningChangeListener;

.field private captioningManager:Landroid/view/accessibility/CaptioningManager;

.field protected captionsAvailableListener:Lcom/brightcove/player/event/EventListener;

.field protected captionsDialog:Landroid/widget/PopupWindow;

.field protected closedCaptionDialogClickListener:Landroid/view/View$OnClickListener;

.field protected context:Landroid/content/Context;

.field protected didSetVideoListener:Lcom/brightcove/player/event/EventListener;

.field protected disableCaptionsButton:Landroid/widget/RadioButton;

.field protected enableCaptionsButton:Landroid/widget/RadioButton;

.field private isHLS:Z

.field protected setCaptionStateListener:Landroid/view/View$OnClickListener;

.field protected videoPlayer:Lcom/brightcove/player/view/BaseVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/view/BaseVideoView;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    const-class v1, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    invoke-direct {p0, v0, v1}, Lcom/brightcove/player/event/AbstractComponent;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V

    .line 140
    new-instance v0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$1;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$1;-><init>(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->setCaptionStateListener:Landroid/view/View$OnClickListener;

    .line 167
    new-instance v0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$2;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$2;-><init>(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionsAvailableListener:Lcom/brightcove/player/event/EventListener;

    .line 178
    new-instance v0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$3;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$3;-><init>(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->didSetVideoListener:Lcom/brightcove/player/event/EventListener;

    .line 200
    new-instance v0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$4;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$4;-><init>(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->closedCaptionDialogClickListener:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$5;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$5;-><init>(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->advancedOptionsClickedListener:Landroid/view/View$OnClickListener;

    .line 95
    iput-object p2, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->context:Landroid/content/Context;

    .line 96
    iput-object p1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->videoPlayer:Lcom/brightcove/player/view/BaseVideoView;

    .line 98
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 99
    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->activity:Landroid/app/Activity;

    .line 102
    :cond_0
    const-string v0, "didSetVideo"

    iget-object v1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->didSetVideoListener:Lcom/brightcove/player/event/EventListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 103
    const-string v0, "captionsAvailable"

    iget-object v1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionsAvailableListener:Lcom/brightcove/player/event/EventListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->makeCaptionsDialog()V

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->initCaptioningManager()V

    .line 110
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->addCaptioningChangeListener()V

    return-void
.end method

.method static synthetic access$300(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->removeCaptioningChangeListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->isHLS:Z

    return v0
.end method

.method private addCaptioningChangeListener()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captioningManager:Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_0

    .line 382
    new-instance v0, Lcom/brightcove/player/controller/CaptioningChangeListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/CaptioningChangeListener;-><init>(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captioningChangeListener:Lcom/brightcove/player/controller/CaptioningChangeListener;

    .line 383
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captioningChangeListener:Lcom/brightcove/player/controller/CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 385
    :cond_0
    return-void
.end method

.method private static getURIField(Ljava/util/Map;Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/URI;"
        }
    .end annotation

    .prologue
    .line 363
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    new-instance v1, Ljava/net/URI;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 366
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initCaptioningManager()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->context:Landroid/content/Context;

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 374
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captioningManager:Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->saveClosedCaptioningState(Z)V

    .line 377
    :cond_0
    return-void
.end method

.method private removeCaptioningChangeListener()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captioningManager:Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captioningChangeListener:Lcom/brightcove/player/controller/CaptioningChangeListener;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captioningChangeListener:Lcom/brightcove/player/controller/CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captioningChangeListener:Lcom/brightcove/player/controller/CaptioningChangeListener;

    .line 393
    :cond_0
    return-void
.end method


# virtual methods
.method public captionsDialogVisibleStatus()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionsDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->hideCaptionsDialog()V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->showCaptionsDialog()V

    goto :goto_0
.end method

.method public checkIfCaptionsExist(Lcom/brightcove/player/model/Video;)Ljava/net/URI;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 237
    if-nez p1, :cond_0

    .line 253
    :goto_0
    return-object v1

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v2, "customFields"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    check-cast v0, Ljava/util/Map;

    .line 251
    :try_start_0
    const-string v2, "captions_en"

    invoke-static {v0, v2}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->getURIField(Ljava/util/Map;Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 253
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public hideCaptionsDialog()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionsDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionsDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 162
    :cond_0
    return-void
.end method

.method public makeCaptionsDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 116
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 117
    sget v1, Lcom/brightcove/player/R$layout;->caption_dialog:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    sget v0, Lcom/brightcove/player/R$id;->captions_dialog_msg:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionDialogMessage:Landroid/widget/TextView;

    .line 120
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_dialog_btn:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionDialogButton:Landroid/widget/Button;

    .line 121
    sget v0, Lcom/brightcove/player/R$id;->enable_captions_btn:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->enableCaptionsButton:Landroid/widget/RadioButton;

    .line 122
    sget v0, Lcom/brightcove/player/R$id;->disable_captions_btn:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->disableCaptionsButton:Landroid/widget/RadioButton;

    .line 123
    sget v0, Lcom/brightcove/player/R$id;->captions_dialog_options_link:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->advancedOptionsLink:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionDialogButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->closedCaptionDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->enableCaptionsButton:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->setCaptionStateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->disableCaptionsButton:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->setCaptionStateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->advancedOptionsLink:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->advancedOptionsClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionsDialog:Landroid/widget/PopupWindow;

    .line 131
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionsDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionsDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 133
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionsDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 134
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionsDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    return-void
.end method

.method public readClosedCaptioningState()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->context:Landroid/content/Context;

    const-string v1, "ClosedCaptioningPlayerPreferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 315
    const-string v1, "ClosedCaptioningEnabledState"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveClosedCaptioningState(Z)V
    .locals 3

    .prologue
    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 324
    const-string v1, "boolean"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "toggleClosedCaptions"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 327
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->context:Landroid/content/Context;

    const-string v1, "ClosedCaptioningPlayerPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ClosedCaptioningEnabledState"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 329
    return-void
.end method

.method protected setCaptionDialogMessage(I)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionDialogMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 337
    return-void
.end method

.method public setHLS(Z)V
    .locals 0

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->isHLS:Z

    .line 354
    return-void
.end method

.method public setVideoHasCaptions(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 298
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    sget v0, Lcom/brightcove/player/R$string;->closed_captioning_available:I

    invoke-virtual {p0, v0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->setCaptionDialogMessage(I)V

    .line 300
    invoke-virtual {p0, v1}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->advancedOptionsLink:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    :goto_0
    return-void

    .line 303
    :cond_0
    sget v0, Lcom/brightcove/player/R$string;->closed_captioning_unavailable:I

    invoke-virtual {p0, v0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->setCaptionDialogMessage(I)V

    .line 304
    invoke-virtual {p0, v2}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->advancedOptionsLink:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setVisibility(I)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->enableCaptionsButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->disableCaptionsButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 346
    return-void
.end method

.method public showCaptionsDialog()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionsDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->enableCaptionsButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->readClosedCaptioningState()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 279
    iget-object v3, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->disableCaptionsButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->readClosedCaptioningState()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 281
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 282
    iget-object v3, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->videoPlayer:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v3, v0}, Lcom/brightcove/player/view/BaseVideoView;->getLocationInWindow([I)V

    .line 283
    iget-object v3, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionsDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    .line 284
    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    .line 285
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 286
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 287
    aget v5, v0, v2

    iget-object v6, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->videoPlayer:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v6}, Lcom/brightcove/player/view/BaseVideoView;->getWidth()I

    move-result v6

    sub-int v4, v6, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    .line 288
    aget v0, v0, v1

    iget-object v1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->videoPlayer:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v1}, Lcom/brightcove/player/view/BaseVideoView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 289
    iget-object v1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionsDialog:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->videoPlayer:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 279
    goto :goto_1
.end method
