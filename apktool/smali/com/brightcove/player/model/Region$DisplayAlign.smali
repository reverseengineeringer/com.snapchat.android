.class public final enum Lcom/brightcove/player/model/Region$DisplayAlign;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/model/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/brightcove/player/model/Region$DisplayAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brightcove/player/model/Region$DisplayAlign;

.field public static final enum AFTER:Lcom/brightcove/player/model/Region$DisplayAlign;

.field public static final enum BEFORE:Lcom/brightcove/player/model/Region$DisplayAlign;

.field public static final enum CENTER:Lcom/brightcove/player/model/Region$DisplayAlign;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/brightcove/player/model/Region$DisplayAlign;

    const-string v1, "BEFORE"

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/model/Region$DisplayAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/Region$DisplayAlign;->BEFORE:Lcom/brightcove/player/model/Region$DisplayAlign;

    .line 25
    new-instance v0, Lcom/brightcove/player/model/Region$DisplayAlign;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcom/brightcove/player/model/Region$DisplayAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/Region$DisplayAlign;->CENTER:Lcom/brightcove/player/model/Region$DisplayAlign;

    .line 26
    new-instance v0, Lcom/brightcove/player/model/Region$DisplayAlign;

    const-string v1, "AFTER"

    invoke-direct {v0, v1, v4}, Lcom/brightcove/player/model/Region$DisplayAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/Region$DisplayAlign;->AFTER:Lcom/brightcove/player/model/Region$DisplayAlign;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/brightcove/player/model/Region$DisplayAlign;

    sget-object v1, Lcom/brightcove/player/model/Region$DisplayAlign;->BEFORE:Lcom/brightcove/player/model/Region$DisplayAlign;

    aput-object v1, v0, v2

    sget-object v1, Lcom/brightcove/player/model/Region$DisplayAlign;->CENTER:Lcom/brightcove/player/model/Region$DisplayAlign;

    aput-object v1, v0, v3

    sget-object v1, Lcom/brightcove/player/model/Region$DisplayAlign;->AFTER:Lcom/brightcove/player/model/Region$DisplayAlign;

    aput-object v1, v0, v4

    sput-object v0, Lcom/brightcove/player/model/Region$DisplayAlign;->$VALUES:[Lcom/brightcove/player/model/Region$DisplayAlign;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/brightcove/player/model/Region$DisplayAlign;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brightcove/player/model/Region$DisplayAlign;->valueOf(Ljava/lang/String;)Lcom/brightcove/player/model/Region$DisplayAlign;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brightcove/player/model/Region$DisplayAlign;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/brightcove/player/model/Region$DisplayAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Region$DisplayAlign;

    return-object v0
.end method

.method public static values()[Lcom/brightcove/player/model/Region$DisplayAlign;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/brightcove/player/model/Region$DisplayAlign;->$VALUES:[Lcom/brightcove/player/model/Region$DisplayAlign;

    invoke-virtual {v0}, [Lcom/brightcove/player/model/Region$DisplayAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brightcove/player/model/Region$DisplayAlign;

    return-object v0
.end method
