.class public final enum Lil;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lil;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lil;

.field public static final enum CHECKMARK:Lil;

.field public static final enum SETTING_GEAR:Lil;

.field public static final enum SWIPE_BUTTON:Lil;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lil;

    const-string v1, "CHECKMARK"

    invoke-direct {v0, v1, v2}, Lil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lil;->CHECKMARK:Lil;

    .line 6
    new-instance v0, Lil;

    const-string v1, "SETTING_GEAR"

    invoke-direct {v0, v1, v3}, Lil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lil;->SETTING_GEAR:Lil;

    .line 7
    new-instance v0, Lil;

    const-string v1, "SWIPE_BUTTON"

    invoke-direct {v0, v1, v4}, Lil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lil;->SWIPE_BUTTON:Lil;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lil;

    sget-object v1, Lil;->CHECKMARK:Lil;

    aput-object v1, v0, v2

    sget-object v1, Lil;->SETTING_GEAR:Lil;

    aput-object v1, v0, v3

    sget-object v1, Lil;->SWIPE_BUTTON:Lil;

    aput-object v1, v0, v4

    sput-object v0, Lil;->$VALUES:[Lil;

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

.method public static valueOf(Ljava/lang/String;)Lil;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lil;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lil;

    return-object v0
.end method

.method public static values()[Lil;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lil;->$VALUES:[Lil;

    invoke-virtual {v0}, [Lil;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lil;

    return-object v0
.end method
