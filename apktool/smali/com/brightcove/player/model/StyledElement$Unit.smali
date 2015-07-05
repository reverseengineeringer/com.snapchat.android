.class public final enum Lcom/brightcove/player/model/StyledElement$Unit;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/model/StyledElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/brightcove/player/model/StyledElement$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brightcove/player/model/StyledElement$Unit;

.field public static final enum EMS:Lcom/brightcove/player/model/StyledElement$Unit;

.field public static final enum PERCENT:Lcom/brightcove/player/model/StyledElement$Unit;

.field public static final enum PX:Lcom/brightcove/player/model/StyledElement$Unit;

.field public static final enum UNDEFINED:Lcom/brightcove/player/model/StyledElement$Unit;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/brightcove/player/model/StyledElement$Unit;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/model/StyledElement$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$Unit;->UNDEFINED:Lcom/brightcove/player/model/StyledElement$Unit;

    .line 56
    new-instance v0, Lcom/brightcove/player/model/StyledElement$Unit;

    const-string v1, "EMS"

    invoke-direct {v0, v1, v3}, Lcom/brightcove/player/model/StyledElement$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$Unit;->EMS:Lcom/brightcove/player/model/StyledElement$Unit;

    .line 57
    new-instance v0, Lcom/brightcove/player/model/StyledElement$Unit;

    const-string v1, "PERCENT"

    invoke-direct {v0, v1, v4}, Lcom/brightcove/player/model/StyledElement$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$Unit;->PERCENT:Lcom/brightcove/player/model/StyledElement$Unit;

    .line 58
    new-instance v0, Lcom/brightcove/player/model/StyledElement$Unit;

    const-string v1, "PX"

    invoke-direct {v0, v1, v5}, Lcom/brightcove/player/model/StyledElement$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$Unit;->PX:Lcom/brightcove/player/model/StyledElement$Unit;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/brightcove/player/model/StyledElement$Unit;

    sget-object v1, Lcom/brightcove/player/model/StyledElement$Unit;->UNDEFINED:Lcom/brightcove/player/model/StyledElement$Unit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/brightcove/player/model/StyledElement$Unit;->EMS:Lcom/brightcove/player/model/StyledElement$Unit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/brightcove/player/model/StyledElement$Unit;->PERCENT:Lcom/brightcove/player/model/StyledElement$Unit;

    aput-object v1, v0, v4

    sget-object v1, Lcom/brightcove/player/model/StyledElement$Unit;->PX:Lcom/brightcove/player/model/StyledElement$Unit;

    aput-object v1, v0, v5

    sput-object v0, Lcom/brightcove/player/model/StyledElement$Unit;->$VALUES:[Lcom/brightcove/player/model/StyledElement$Unit;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/brightcove/player/model/StyledElement$Unit;
    .locals 1

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    sget-object v0, Lcom/brightcove/player/model/StyledElement$Unit;->UNDEFINED:Lcom/brightcove/player/model/StyledElement$Unit;

    .line 71
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Lcom/brightcove/player/model/StyledElement$Unit;->PERCENT:Lcom/brightcove/player/model/StyledElement$Unit;

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {p0}, Lcom/brightcove/player/model/StyledElement$Unit;->valueOf(Ljava/lang/String;)Lcom/brightcove/player/model/StyledElement$Unit;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brightcove/player/model/StyledElement$Unit;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/brightcove/player/model/StyledElement$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/StyledElement$Unit;

    return-object v0
.end method

.method public static values()[Lcom/brightcove/player/model/StyledElement$Unit;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/brightcove/player/model/StyledElement$Unit;->$VALUES:[Lcom/brightcove/player/model/StyledElement$Unit;

    invoke-virtual {v0}, [Lcom/brightcove/player/model/StyledElement$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brightcove/player/model/StyledElement$Unit;

    return-object v0
.end method
