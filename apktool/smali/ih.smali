.class public final enum Lih;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lih;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lih;

.field public static final enum IMAGE:Lih;

.field public static final enum TEXT:Lih;

.field public static final enum VIDEO:Lih;

.field public static final enum VIDEO_NO_SOUND:Lih;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lih;

    const-string v1, "VIDEO_NO_SOUND"

    invoke-direct {v0, v1, v2}, Lih;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lih;->VIDEO_NO_SOUND:Lih;

    .line 6
    new-instance v0, Lih;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lih;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lih;->VIDEO:Lih;

    .line 7
    new-instance v0, Lih;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v4}, Lih;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lih;->IMAGE:Lih;

    .line 8
    new-instance v0, Lih;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v5}, Lih;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lih;->TEXT:Lih;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Lih;

    sget-object v1, Lih;->VIDEO_NO_SOUND:Lih;

    aput-object v1, v0, v2

    sget-object v1, Lih;->VIDEO:Lih;

    aput-object v1, v0, v3

    sget-object v1, Lih;->IMAGE:Lih;

    aput-object v1, v0, v4

    sget-object v1, Lih;->TEXT:Lih;

    aput-object v1, v0, v5

    sput-object v0, Lih;->$VALUES:[Lih;

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

.method public static valueOf(Ljava/lang/String;)Lih;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lih;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lih;

    return-object v0
.end method

.method public static values()[Lih;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lih;->$VALUES:[Lih;

    invoke-virtual {v0}, [Lih;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lih;

    return-object v0
.end method
