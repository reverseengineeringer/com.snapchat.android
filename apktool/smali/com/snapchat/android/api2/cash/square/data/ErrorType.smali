.class public final enum Lcom/snapchat/android/api2/cash/square/data/ErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/api2/cash/square/data/ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/api2/cash/square/data/ErrorType;

.field public static final enum BLOCKED_CARD:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "blocked_card"
    .end annotation
.end field

.field public static final enum CARD_BLOCKED:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_blocked"
    .end annotation
.end field

.field public static final enum CARD_LINKED_TOO_MANY_ACCOUNTS:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_linked_too_many_accounts"
    .end annotation
.end field

.field public static final enum CARD_TYPE_UNSUPPORTED:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_type_unsupported"
    .end annotation
.end field

.field public static final enum CONFLICT_PARAMETER:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conflict_parameter"
    .end annotation
.end field

.field public static final enum FORBIDDEN_PARAMETER:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forbidden_parameter"
    .end annotation
.end field

.field public static final enum INVALID_CARD_NUMBER:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invalid_card_number"
    .end annotation
.end field

.field public static final enum INVALID_EXPIRATION:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invalid_expiration"
    .end annotation
.end field

.field public static final enum INVALID_PARAMETER:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invalid_parameter"
    .end annotation
.end field

.field public static final enum INVALID_PASSCODE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invalid_passcode"
    .end annotation
.end field

.field public static final enum INVALID_POSTAL_CODE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invalid_postal_code"
    .end annotation
.end field

.field public static final enum INVALID_SECURITY_CODE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invalid_security_code"
    .end annotation
.end field

.field public static final enum MISSING_PARAMETER:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "missing_parameter"
    .end annotation
.end field

.field public static final enum NETWORK_FAILURE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

.field public static final enum TOO_MANY_ATTEMPTS:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "too_many_attempts"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

.field public static final enum UNSUPPORTED_REGION:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unsupported_region"
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

    .line 8
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->UNKNOWN:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 11
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "CONFLICT_PARAMETER"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->CONFLICT_PARAMETER:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 13
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "FORBIDDEN_PARAMETER"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->FORBIDDEN_PARAMETER:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 15
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "INVALID_PARAMETER"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->INVALID_PARAMETER:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 17
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "MISSING_PARAMETER"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->MISSING_PARAMETER:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 21
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "INVALID_PASSCODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->INVALID_PASSCODE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 23
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "TOO_MANY_ATTEMPTS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->TOO_MANY_ATTEMPTS:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 25
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "BLOCKED_CARD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->BLOCKED_CARD:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 29
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "CARD_BLOCKED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->CARD_BLOCKED:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 31
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "CARD_LINKED_TOO_MANY_ACCOUNTS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->CARD_LINKED_TOO_MANY_ACCOUNTS:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 33
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "CARD_TYPE_UNSUPPORTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->CARD_TYPE_UNSUPPORTED:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 35
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "INVALID_CARD_NUMBER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->INVALID_CARD_NUMBER:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 37
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "INVALID_EXPIRATION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->INVALID_EXPIRATION:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 39
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "INVALID_POSTAL_CODE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->INVALID_POSTAL_CODE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 41
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "INVALID_SECURITY_CODE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->INVALID_SECURITY_CODE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 43
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "UNSUPPORTED_REGION"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->UNSUPPORTED_REGION:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 47
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    const-string v1, "NETWORK_FAILURE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->NETWORK_FAILURE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 7
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->UNKNOWN:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->CONFLICT_PARAMETER:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->FORBIDDEN_PARAMETER:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->INVALID_PARAMETER:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->MISSING_PARAMETER:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->INVALID_PASSCODE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->TOO_MANY_ATTEMPTS:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->BLOCKED_CARD:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->CARD_BLOCKED:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->CARD_LINKED_TOO_MANY_ACCOUNTS:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->CARD_TYPE_UNSUPPORTED:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->INVALID_CARD_NUMBER:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->INVALID_EXPIRATION:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->INVALID_POSTAL_CODE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->INVALID_SECURITY_CODE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->UNSUPPORTED_REGION:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->NETWORK_FAILURE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->$VALUES:[Lcom/snapchat/android/api2/cash/square/data/ErrorType;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isNonRecoverableError(Lcom/snapchat/android/api2/cash/square/data/ErrorType;)Z
    .locals 1
    .param p0    # Lcom/snapchat/android/api2/cash/square/data/ErrorType;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 51
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->TOO_MANY_ATTEMPTS:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->BLOCKED_CARD:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->$VALUES:[Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    invoke-virtual {v0}, [Lcom/snapchat/android/api2/cash/square/data/ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    return-object v0
.end method
