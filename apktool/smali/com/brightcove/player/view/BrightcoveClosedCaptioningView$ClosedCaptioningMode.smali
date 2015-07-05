.class public final enum Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClosedCaptioningMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

.field public static final enum OFF:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

.field public static final enum ON:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;->OFF:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    .line 101
    new-instance v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    const-string v1, "ON"

    invoke-direct {v0, v1, v3}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;->ON:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    sget-object v1, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;->OFF:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;->ON:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;->$VALUES:[Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;
    .locals 1

    .prologue
    .line 97
    const-class v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    return-object v0
.end method

.method public static values()[Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;->$VALUES:[Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    invoke-virtual {v0}, [Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    return-object v0
.end method
