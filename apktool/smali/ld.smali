.class public final enum Lld;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lld;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lld;

.field public static final enum CAMERA:Lld;

.field public static final enum CHAT:Lld;

.field public static final enum DISCOVER:Lld;

.field public static final enum NOTIFICATION:Lld;

.field public static final enum PROFILE:Lld;

.field public static final enum STORY:Lld;

.field public static final enum WEB:Lld;


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
    new-instance v0, Lld;

    const-string v1, "CHAT"

    invoke-direct {v0, v1, v3}, Lld;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lld;->CHAT:Lld;

    .line 6
    new-instance v0, Lld;

    const-string v1, "CAMERA"

    invoke-direct {v0, v1, v4}, Lld;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lld;->CAMERA:Lld;

    .line 7
    new-instance v0, Lld;

    const-string v1, "DISCOVER"

    invoke-direct {v0, v1, v5}, Lld;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lld;->DISCOVER:Lld;

    .line 8
    new-instance v0, Lld;

    const-string v1, "PROFILE"

    invoke-direct {v0, v1, v6}, Lld;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lld;->PROFILE:Lld;

    .line 9
    new-instance v0, Lld;

    const-string v1, "STORY"

    invoke-direct {v0, v1, v7}, Lld;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lld;->STORY:Lld;

    .line 10
    new-instance v0, Lld;

    const-string v1, "NOTIFICATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lld;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lld;->NOTIFICATION:Lld;

    .line 11
    new-instance v0, Lld;

    const-string v1, "WEB"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lld;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lld;->WEB:Lld;

    .line 4
    const/4 v0, 0x7

    new-array v0, v0, [Lld;

    sget-object v1, Lld;->CHAT:Lld;

    aput-object v1, v0, v3

    sget-object v1, Lld;->CAMERA:Lld;

    aput-object v1, v0, v4

    sget-object v1, Lld;->DISCOVER:Lld;

    aput-object v1, v0, v5

    sget-object v1, Lld;->PROFILE:Lld;

    aput-object v1, v0, v6

    sget-object v1, Lld;->STORY:Lld;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lld;->NOTIFICATION:Lld;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lld;->WEB:Lld;

    aput-object v2, v0, v1

    sput-object v0, Lld;->$VALUES:[Lld;

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

.method public static valueOf(Ljava/lang/String;)Lld;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lld;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lld;

    return-object v0
.end method

.method public static values()[Lld;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lld;->$VALUES:[Lld;

    invoke-virtual {v0}, [Lld;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lld;

    return-object v0
.end method
