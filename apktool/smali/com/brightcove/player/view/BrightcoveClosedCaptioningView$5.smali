.class synthetic Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$brightcove$player$model$StyledElement$FontStyle:[I

.field static final synthetic $SwitchMap$com$brightcove$player$model$StyledElement$FontWeight:[I

.field static final synthetic $SwitchMap$com$brightcove$player$model$StyledElement$TextDecoration:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 702
    invoke-static {}, Lcom/brightcove/player/model/StyledElement$TextDecoration;->values()[Lcom/brightcove/player/model/StyledElement$TextDecoration;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$5;->$SwitchMap$com$brightcove$player$model$StyledElement$TextDecoration:[I

    :try_start_0
    sget-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$5;->$SwitchMap$com$brightcove$player$model$StyledElement$TextDecoration:[I

    sget-object v1, Lcom/brightcove/player/model/StyledElement$TextDecoration;->UNDERLINE:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    invoke-virtual {v1}, Lcom/brightcove/player/model/StyledElement$TextDecoration;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    .line 694
    :goto_0
    invoke-static {}, Lcom/brightcove/player/model/StyledElement$FontWeight;->values()[Lcom/brightcove/player/model/StyledElement$FontWeight;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$5;->$SwitchMap$com$brightcove$player$model$StyledElement$FontWeight:[I

    :try_start_1
    sget-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$5;->$SwitchMap$com$brightcove$player$model$StyledElement$FontWeight:[I

    sget-object v1, Lcom/brightcove/player/model/StyledElement$FontWeight;->BOLD:Lcom/brightcove/player/model/StyledElement$FontWeight;

    invoke-virtual {v1}, Lcom/brightcove/player/model/StyledElement$FontWeight;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 686
    :goto_1
    invoke-static {}, Lcom/brightcove/player/model/StyledElement$FontStyle;->values()[Lcom/brightcove/player/model/StyledElement$FontStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$5;->$SwitchMap$com$brightcove$player$model$StyledElement$FontStyle:[I

    :try_start_2
    sget-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$5;->$SwitchMap$com$brightcove$player$model$StyledElement$FontStyle:[I

    sget-object v1, Lcom/brightcove/player/model/StyledElement$FontStyle;->ITALIC:Lcom/brightcove/player/model/StyledElement$FontStyle;

    invoke-virtual {v1}, Lcom/brightcove/player/model/StyledElement$FontStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
