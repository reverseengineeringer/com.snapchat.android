.class public final enum Lcom/brightcove/player/model/StyledElement$TextAlign;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/model/StyledElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/brightcove/player/model/StyledElement$TextAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brightcove/player/model/StyledElement$TextAlign;

.field public static final enum CENTER:Lcom/brightcove/player/model/StyledElement$TextAlign;

.field public static final enum END:Lcom/brightcove/player/model/StyledElement$TextAlign;

.field public static final enum LEFT:Lcom/brightcove/player/model/StyledElement$TextAlign;

.field public static final enum RIGHT:Lcom/brightcove/player/model/StyledElement$TextAlign;

.field public static final enum START:Lcom/brightcove/player/model/StyledElement$TextAlign;

.field public static final enum UNDEFINED:Lcom/brightcove/player/model/StyledElement$TextAlign;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/brightcove/player/model/StyledElement$TextAlign;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v3}, Lcom/brightcove/player/model/StyledElement$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$TextAlign;->UNDEFINED:Lcom/brightcove/player/model/StyledElement$TextAlign;

    .line 37
    new-instance v0, Lcom/brightcove/player/model/StyledElement$TextAlign;

    const-string v1, "START"

    invoke-direct {v0, v1, v4}, Lcom/brightcove/player/model/StyledElement$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$TextAlign;->START:Lcom/brightcove/player/model/StyledElement$TextAlign;

    .line 38
    new-instance v0, Lcom/brightcove/player/model/StyledElement$TextAlign;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v5}, Lcom/brightcove/player/model/StyledElement$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$TextAlign;->LEFT:Lcom/brightcove/player/model/StyledElement$TextAlign;

    .line 39
    new-instance v0, Lcom/brightcove/player/model/StyledElement$TextAlign;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v6}, Lcom/brightcove/player/model/StyledElement$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$TextAlign;->CENTER:Lcom/brightcove/player/model/StyledElement$TextAlign;

    .line 40
    new-instance v0, Lcom/brightcove/player/model/StyledElement$TextAlign;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v7}, Lcom/brightcove/player/model/StyledElement$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$TextAlign;->RIGHT:Lcom/brightcove/player/model/StyledElement$TextAlign;

    .line 41
    new-instance v0, Lcom/brightcove/player/model/StyledElement$TextAlign;

    const-string v1, "END"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/model/StyledElement$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$TextAlign;->END:Lcom/brightcove/player/model/StyledElement$TextAlign;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/brightcove/player/model/StyledElement$TextAlign;

    sget-object v1, Lcom/brightcove/player/model/StyledElement$TextAlign;->UNDEFINED:Lcom/brightcove/player/model/StyledElement$TextAlign;

    aput-object v1, v0, v3

    sget-object v1, Lcom/brightcove/player/model/StyledElement$TextAlign;->START:Lcom/brightcove/player/model/StyledElement$TextAlign;

    aput-object v1, v0, v4

    sget-object v1, Lcom/brightcove/player/model/StyledElement$TextAlign;->LEFT:Lcom/brightcove/player/model/StyledElement$TextAlign;

    aput-object v1, v0, v5

    sget-object v1, Lcom/brightcove/player/model/StyledElement$TextAlign;->CENTER:Lcom/brightcove/player/model/StyledElement$TextAlign;

    aput-object v1, v0, v6

    sget-object v1, Lcom/brightcove/player/model/StyledElement$TextAlign;->RIGHT:Lcom/brightcove/player/model/StyledElement$TextAlign;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/brightcove/player/model/StyledElement$TextAlign;->END:Lcom/brightcove/player/model/StyledElement$TextAlign;

    aput-object v2, v0, v1

    sput-object v0, Lcom/brightcove/player/model/StyledElement$TextAlign;->$VALUES:[Lcom/brightcove/player/model/StyledElement$TextAlign;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brightcove/player/model/StyledElement$TextAlign;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/brightcove/player/model/StyledElement$TextAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/StyledElement$TextAlign;

    return-object v0
.end method

.method public static values()[Lcom/brightcove/player/model/StyledElement$TextAlign;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/brightcove/player/model/StyledElement$TextAlign;->$VALUES:[Lcom/brightcove/player/model/StyledElement$TextAlign;

    invoke-virtual {v0}, [Lcom/brightcove/player/model/StyledElement$TextAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brightcove/player/model/StyledElement$TextAlign;

    return-object v0
.end method
