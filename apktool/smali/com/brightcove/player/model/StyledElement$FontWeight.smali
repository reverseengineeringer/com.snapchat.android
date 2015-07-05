.class public final enum Lcom/brightcove/player/model/StyledElement$FontWeight;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/model/StyledElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontWeight"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/brightcove/player/model/StyledElement$FontWeight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brightcove/player/model/StyledElement$FontWeight;

.field public static final enum BOLD:Lcom/brightcove/player/model/StyledElement$FontWeight;

.field public static final enum NORMAL:Lcom/brightcove/player/model/StyledElement$FontWeight;

.field public static final enum UNDEFINED:Lcom/brightcove/player/model/StyledElement$FontWeight;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/brightcove/player/model/StyledElement$FontWeight;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/model/StyledElement$FontWeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$FontWeight;->UNDEFINED:Lcom/brightcove/player/model/StyledElement$FontWeight;

    .line 31
    new-instance v0, Lcom/brightcove/player/model/StyledElement$FontWeight;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/brightcove/player/model/StyledElement$FontWeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$FontWeight;->NORMAL:Lcom/brightcove/player/model/StyledElement$FontWeight;

    .line 32
    new-instance v0, Lcom/brightcove/player/model/StyledElement$FontWeight;

    const-string v1, "BOLD"

    invoke-direct {v0, v1, v4}, Lcom/brightcove/player/model/StyledElement$FontWeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$FontWeight;->BOLD:Lcom/brightcove/player/model/StyledElement$FontWeight;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/brightcove/player/model/StyledElement$FontWeight;

    sget-object v1, Lcom/brightcove/player/model/StyledElement$FontWeight;->UNDEFINED:Lcom/brightcove/player/model/StyledElement$FontWeight;

    aput-object v1, v0, v2

    sget-object v1, Lcom/brightcove/player/model/StyledElement$FontWeight;->NORMAL:Lcom/brightcove/player/model/StyledElement$FontWeight;

    aput-object v1, v0, v3

    sget-object v1, Lcom/brightcove/player/model/StyledElement$FontWeight;->BOLD:Lcom/brightcove/player/model/StyledElement$FontWeight;

    aput-object v1, v0, v4

    sput-object v0, Lcom/brightcove/player/model/StyledElement$FontWeight;->$VALUES:[Lcom/brightcove/player/model/StyledElement$FontWeight;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brightcove/player/model/StyledElement$FontWeight;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/brightcove/player/model/StyledElement$FontWeight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/StyledElement$FontWeight;

    return-object v0
.end method

.method public static values()[Lcom/brightcove/player/model/StyledElement$FontWeight;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/brightcove/player/model/StyledElement$FontWeight;->$VALUES:[Lcom/brightcove/player/model/StyledElement$FontWeight;

    invoke-virtual {v0}, [Lcom/brightcove/player/model/StyledElement$FontWeight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brightcove/player/model/StyledElement$FontWeight;

    return-object v0
.end method
