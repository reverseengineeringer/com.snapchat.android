.class public final enum Lcom/addlive/service/MediaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/addlive/service/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/addlive/service/MediaType;

.field public static final enum AUDIO:Lcom/addlive/service/MediaType;

.field public static final enum SCREEN:Lcom/addlive/service/MediaType;

.field public static final enum VIDEO:Lcom/addlive/service/MediaType;


# instance fields
.field private strValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/addlive/service/MediaType;

    const-string v1, "AUDIO"

    const-string v2, "audio"

    invoke-direct {v0, v1, v3, v2}, Lcom/addlive/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    .line 33
    new-instance v0, Lcom/addlive/service/MediaType;

    const-string v1, "VIDEO"

    const-string v2, "video"

    invoke-direct {v0, v1, v4, v2}, Lcom/addlive/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    .line 38
    new-instance v0, Lcom/addlive/service/MediaType;

    const-string v1, "SCREEN"

    const-string v2, "screen"

    invoke-direct {v0, v1, v5, v2}, Lcom/addlive/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/service/MediaType;->SCREEN:Lcom/addlive/service/MediaType;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/addlive/service/MediaType;

    sget-object v1, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/addlive/service/MediaType;->SCREEN:Lcom/addlive/service/MediaType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/addlive/service/MediaType;->$VALUES:[Lcom/addlive/service/MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/addlive/service/MediaType;->strValue:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/addlive/service/MediaType;
    .locals 3

    .prologue
    .line 51
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    .line 56
    :goto_0
    return-object v0

    .line 53
    :cond_0
    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "screen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    sget-object v0, Lcom/addlive/service/MediaType;->SCREEN:Lcom/addlive/service/MediaType;

    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown media type given: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/addlive/service/MediaType;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/addlive/service/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/addlive/service/MediaType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/addlive/service/MediaType;->$VALUES:[Lcom/addlive/service/MediaType;

    invoke-virtual {v0}, [Lcom/addlive/service/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/addlive/service/MediaType;

    return-object v0
.end method


# virtual methods
.method public final getStrValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/addlive/service/MediaType;->strValue:Ljava/lang/String;

    return-object v0
.end method
