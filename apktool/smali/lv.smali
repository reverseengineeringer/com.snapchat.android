.class public final enum Llv;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llv;

.field public static final enum CAMERA:Llv;

.field public static final enum CHAT:Llv;

.field public static final enum DISCOVER:Llv;

.field public static final enum NOTIFICATION:Llv;

.field public static final enum PROFILE:Llv;

.field public static final enum STORY:Llv;

.field public static final enum WEB:Llv;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Llv;

    const-string v1, "CHAT"

    invoke-direct {v0, v1, v3}, Llv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llv;->CHAT:Llv;

    .line 6
    new-instance v0, Llv;

    const-string v1, "CAMERA"

    invoke-direct {v0, v1, v4}, Llv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llv;->CAMERA:Llv;

    .line 7
    new-instance v0, Llv;

    const-string v1, "DISCOVER"

    invoke-direct {v0, v1, v5}, Llv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llv;->DISCOVER:Llv;

    .line 8
    new-instance v0, Llv;

    const-string v1, "PROFILE"

    invoke-direct {v0, v1, v6}, Llv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llv;->PROFILE:Llv;

    .line 9
    new-instance v0, Llv;

    const-string v1, "STORY"

    invoke-direct {v0, v1, v7}, Llv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llv;->STORY:Llv;

    .line 10
    new-instance v0, Llv;

    const-string v1, "NOTIFICATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Llv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llv;->NOTIFICATION:Llv;

    .line 11
    new-instance v0, Llv;

    const-string v1, "WEB"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Llv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llv;->WEB:Llv;

    .line 4
    const/4 v0, 0x7

    new-array v0, v0, [Llv;

    sget-object v1, Llv;->CHAT:Llv;

    aput-object v1, v0, v3

    sget-object v1, Llv;->CAMERA:Llv;

    aput-object v1, v0, v4

    sget-object v1, Llv;->DISCOVER:Llv;

    aput-object v1, v0, v5

    sget-object v1, Llv;->PROFILE:Llv;

    aput-object v1, v0, v6

    sget-object v1, Llv;->STORY:Llv;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Llv;->NOTIFICATION:Llv;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Llv;->WEB:Llv;

    aput-object v2, v0, v1

    sput-object v0, Llv;->$VALUES:[Llv;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llv;
    .locals 1

    .prologue
    .line 4
    const-class v0, Llv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llv;

    return-object v0
.end method

.method public static values()[Llv;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Llv;->$VALUES:[Llv;

    invoke-virtual {v0}, [Llv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llv;

    return-object v0
.end method
