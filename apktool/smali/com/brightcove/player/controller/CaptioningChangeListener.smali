.class Lcom/brightcove/player/controller/CaptioningChangeListener;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private brightcoveClosedCaptioningController:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/brightcove/player/controller/CaptioningChangeListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/controller/CaptioningChangeListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/brightcove/player/controller/CaptioningChangeListener;->brightcoveClosedCaptioningController:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    .line 38
    return-void
.end method


# virtual methods
.method public onEnabledChanged(Z)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/brightcove/player/controller/CaptioningChangeListener;->brightcoveClosedCaptioningController:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    invoke-virtual {v0, p1}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->saveClosedCaptioningState(Z)V

    .line 43
    return-void
.end method

.method public onFontScaleChanged(F)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLocaleChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUserStyleChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    return-void
.end method
