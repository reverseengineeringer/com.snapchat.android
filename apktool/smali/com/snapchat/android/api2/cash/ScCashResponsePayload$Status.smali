.class public final enum Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/ScCashResponsePayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

.field public static final enum INVALID_AMOUNT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "INVALID_AMOUNT"
    .end annotation
.end field

.field public static final enum LOCKED_ACCOUNT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LOCKED_ACCOUNT"
    .end annotation
.end field

.field public static final enum NON_US_USER:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NON_US_USER"
    .end annotation
.end field

.field public static final enum NO_NETWORK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

.field public static final enum NO_VERIFIED_AGE:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NO_VERIFIED_AGE"
    .end annotation
.end field

.field public static final enum NO_VERIFIED_PHONE:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NO_VERIFIED_PHONE"
    .end annotation
.end field

.field public static final enum OK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OK"
    .end annotation
.end field

.field public static final enum SERVICE_NOT_AVAILABLE_TO_RECIPIENT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SERVICE_NOT_AVAILABLE_TO_RECIPIENT"
    .end annotation
.end field

.field public static final enum UNDER_AGE_LIMIT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UNDER_AGE_LIMIT"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UNKNOWN"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->UNKNOWN:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    .line 11
    new-instance v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->OK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    .line 13
    new-instance v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    const-string v1, "NO_VERIFIED_PHONE"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->NO_VERIFIED_PHONE:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    .line 15
    new-instance v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    const-string v1, "NON_US_USER"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->NON_US_USER:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    .line 17
    new-instance v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    const-string v1, "LOCKED_ACCOUNT"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->LOCKED_ACCOUNT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    .line 19
    new-instance v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    const-string v1, "INVALID_AMOUNT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->INVALID_AMOUNT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    .line 21
    new-instance v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    const-string v1, "SERVICE_NOT_AVAILABLE_TO_RECIPIENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->SERVICE_NOT_AVAILABLE_TO_RECIPIENT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    .line 23
    new-instance v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    const-string v1, "UNDER_AGE_LIMIT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->UNDER_AGE_LIMIT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    .line 25
    new-instance v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    const-string v1, "NO_VERIFIED_AGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->NO_VERIFIED_AGE:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    .line 27
    new-instance v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    const-string v1, "NO_NETWORK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->NO_NETWORK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    .line 8
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    sget-object v1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->UNKNOWN:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->OK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->NO_VERIFIED_PHONE:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->NON_US_USER:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->LOCKED_ACCOUNT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->INVALID_AMOUNT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->SERVICE_NOT_AVAILABLE_TO_RECIPIENT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->UNDER_AGE_LIMIT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->NO_VERIFIED_AGE:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->NO_NETWORK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->$VALUES:[Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->$VALUES:[Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    invoke-virtual {v0}, [Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    return-object v0
.end method
