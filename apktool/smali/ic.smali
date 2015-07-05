.class public final enum Lic;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lic;

.field public static final enum CHECKMARK:Lic;

.field public static final enum SETTING_GEAR:Lic;

.field public static final enum SWIPE_BUTTON:Lic;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lic;

    const-string v1, "CHECKMARK"

    invoke-direct {v0, v1, v2}, Lic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lic;->CHECKMARK:Lic;

    .line 6
    new-instance v0, Lic;

    const-string v1, "SETTING_GEAR"

    invoke-direct {v0, v1, v3}, Lic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lic;->SETTING_GEAR:Lic;

    .line 7
    new-instance v0, Lic;

    const-string v1, "SWIPE_BUTTON"

    invoke-direct {v0, v1, v4}, Lic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lic;->SWIPE_BUTTON:Lic;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lic;

    sget-object v1, Lic;->CHECKMARK:Lic;

    aput-object v1, v0, v2

    sget-object v1, Lic;->SETTING_GEAR:Lic;

    aput-object v1, v0, v3

    sget-object v1, Lic;->SWIPE_BUTTON:Lic;

    aput-object v1, v0, v4

    sput-object v0, Lic;->$VALUES:[Lic;

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

.method public static valueOf(Ljava/lang/String;)Lic;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lic;

    return-object v0
.end method

.method public static values()[Lic;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lic;->$VALUES:[Lic;

    invoke-virtual {v0}, [Lic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lic;

    return-object v0
.end method
