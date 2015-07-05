.class public final enum Lhy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhy;

.field public static final enum IMAGE:Lhy;

.field public static final enum TEXT:Lhy;

.field public static final enum VIDEO:Lhy;

.field public static final enum VIDEO_NO_SOUND:Lhy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lhy;

    const-string v1, "VIDEO_NO_SOUND"

    invoke-direct {v0, v1, v2}, Lhy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhy;->VIDEO_NO_SOUND:Lhy;

    .line 6
    new-instance v0, Lhy;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lhy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhy;->VIDEO:Lhy;

    .line 7
    new-instance v0, Lhy;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v4}, Lhy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhy;->IMAGE:Lhy;

    .line 8
    new-instance v0, Lhy;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v5}, Lhy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhy;->TEXT:Lhy;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Lhy;

    sget-object v1, Lhy;->VIDEO_NO_SOUND:Lhy;

    aput-object v1, v0, v2

    sget-object v1, Lhy;->VIDEO:Lhy;

    aput-object v1, v0, v3

    sget-object v1, Lhy;->IMAGE:Lhy;

    aput-object v1, v0, v4

    sget-object v1, Lhy;->TEXT:Lhy;

    aput-object v1, v0, v5

    sput-object v0, Lhy;->$VALUES:[Lhy;

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

.method public static valueOf(Ljava/lang/String;)Lhy;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lhy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhy;

    return-object v0
.end method

.method public static values()[Lhy;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lhy;->$VALUES:[Lhy;

    invoke-virtual {v0}, [Lhy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhy;

    return-object v0
.end method
