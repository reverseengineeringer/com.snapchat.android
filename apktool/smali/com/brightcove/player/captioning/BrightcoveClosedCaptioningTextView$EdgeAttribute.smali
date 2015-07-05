.class public final enum Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EdgeAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

.field public static final enum DEPRESSED:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

.field public static final enum DROP_SHADOW:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

.field public static final enum NONE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

.field public static final enum RAISED:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

.field public static final enum UNIFORM:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->NONE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    .line 32
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    const-string v1, "RAISED"

    invoke-direct {v0, v1, v3}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->RAISED:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    .line 33
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    const-string v1, "DEPRESSED"

    invoke-direct {v0, v1, v4}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->DEPRESSED:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    .line 34
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    const-string v1, "UNIFORM"

    invoke-direct {v0, v1, v5}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->UNIFORM:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    .line 35
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    const-string v1, "DROP_SHADOW"

    invoke-direct {v0, v1, v6}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->DROP_SHADOW:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->NONE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    aput-object v1, v0, v2

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->RAISED:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    aput-object v1, v0, v3

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->DEPRESSED:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    aput-object v1, v0, v4

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->UNIFORM:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    aput-object v1, v0, v5

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->DROP_SHADOW:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    aput-object v1, v0, v6

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->$VALUES:[Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    return-object v0
.end method

.method public static values()[Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->$VALUES:[Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    invoke-virtual {v0}, [Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    return-object v0
.end method
