.class public final enum Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClosedCaptioningOptionsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

.field public static final enum BACKGROUND:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

.field public static final enum EDGE_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

.field public static final enum EDGE_TYPE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

.field public static final enum FONT:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

.field public static final enum HIGHLIGHT:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

.field public static final enum TEXT_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

.field public static final enum TEXT_SIZE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    const-string v1, "FONT"

    invoke-direct {v0, v1, v3}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->FONT:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    .line 81
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    const-string v1, "TEXT_SIZE"

    invoke-direct {v0, v1, v4}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->TEXT_SIZE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    .line 82
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    const-string v1, "TEXT_COLOR"

    invoke-direct {v0, v1, v5}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->TEXT_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    .line 83
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    const-string v1, "EDGE_TYPE"

    invoke-direct {v0, v1, v6}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->EDGE_TYPE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    .line 84
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    const-string v1, "EDGE_COLOR"

    invoke-direct {v0, v1, v7}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->EDGE_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    .line 85
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    const-string v1, "HIGHLIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->HIGHLIGHT:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    .line 86
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    const-string v1, "BACKGROUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->BACKGROUND:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    .line 79
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->FONT:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->TEXT_SIZE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->TEXT_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->EDGE_TYPE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->EDGE_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->HIGHLIGHT:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->BACKGROUND:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->$VALUES:[Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    return-object v0
.end method

.method public static values()[Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->$VALUES:[Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {v0}, [Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    return-object v0
.end method
