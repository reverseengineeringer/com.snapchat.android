.class final enum Lcom/brightcove/player/media/HttpService$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/media/HttpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/brightcove/player/media/HttpService$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brightcove/player/media/HttpService$Method;

.field public static final enum GET:Lcom/brightcove/player/media/HttpService$Method;

.field public static final enum POST:Lcom/brightcove/player/media/HttpService$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/brightcove/player/media/HttpService$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/media/HttpService$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/media/HttpService$Method;->GET:Lcom/brightcove/player/media/HttpService$Method;

    new-instance v0, Lcom/brightcove/player/media/HttpService$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/brightcove/player/media/HttpService$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/media/HttpService$Method;->POST:Lcom/brightcove/player/media/HttpService$Method;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/brightcove/player/media/HttpService$Method;

    sget-object v1, Lcom/brightcove/player/media/HttpService$Method;->GET:Lcom/brightcove/player/media/HttpService$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/brightcove/player/media/HttpService$Method;->POST:Lcom/brightcove/player/media/HttpService$Method;

    aput-object v1, v0, v3

    sput-object v0, Lcom/brightcove/player/media/HttpService$Method;->$VALUES:[Lcom/brightcove/player/media/HttpService$Method;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brightcove/player/media/HttpService$Method;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/brightcove/player/media/HttpService$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/media/HttpService$Method;

    return-object v0
.end method

.method public static values()[Lcom/brightcove/player/media/HttpService$Method;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/brightcove/player/media/HttpService$Method;->$VALUES:[Lcom/brightcove/player/media/HttpService$Method;

    invoke-virtual {v0}, [Lcom/brightcove/player/media/HttpService$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brightcove/player/media/HttpService$Method;

    return-object v0
.end method
