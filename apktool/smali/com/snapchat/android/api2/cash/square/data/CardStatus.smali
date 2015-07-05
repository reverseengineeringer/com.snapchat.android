.class public final enum Lcom/snapchat/android/api2/cash/square/data/CardStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/api2/cash/square/data/CardStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/api2/cash/square/data/CardStatus;

.field public static final enum EXPIRED:Lcom/snapchat/android/api2/cash/square/data/CardStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EXPIRED"
    .end annotation
.end field

.field public static final enum INVALID:Lcom/snapchat/android/api2/cash/square/data/CardStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "INVALID"
    .end annotation
.end field

.field public static final enum NOT_LINKED:Lcom/snapchat/android/api2/cash/square/data/CardStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NOT_LINKED"
    .end annotation
.end field

.field public static final enum UNSUPPORTED_FOR_ROLE:Lcom/snapchat/android/api2/cash/square/data/CardStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UNSUPPORTED_FOR_ROLE"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    const-string v1, "NOT_LINKED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/CardStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CardStatus;->NOT_LINKED:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    .line 8
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/api2/cash/square/data/CardStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CardStatus;->EXPIRED:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    .line 10
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    const-string v1, "UNSUPPORTED_FOR_ROLE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/api2/cash/square/data/CardStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CardStatus;->UNSUPPORTED_FOR_ROLE:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    .line 12
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/api2/cash/square/data/CardStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CardStatus;->INVALID:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CardStatus;->NOT_LINKED:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CardStatus;->EXPIRED:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CardStatus;->UNSUPPORTED_FOR_ROLE:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CardStatus;->INVALID:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CardStatus;->$VALUES:[Lcom/snapchat/android/api2/cash/square/data/CardStatus;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/square/data/CardStatus;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/api2/cash/square/data/CardStatus;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CardStatus;->$VALUES:[Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/api2/cash/square/data/CardStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    return-object v0
.end method
