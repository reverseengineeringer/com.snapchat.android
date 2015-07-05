.class public final enum Lcom/snapchat/android/api2/cash/blockers/CardInputError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/api2/cash/blockers/CardInputError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/api2/cash/blockers/CardInputError;

.field public static final enum BLOCKED_CARD:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

.field public static final enum CARD_TYPE_UNSUPPORTED:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

.field public static final enum INVALID_CARD_NUMBER:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

.field public static final enum INVALID_EXPIRATION:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

.field public static final enum INVALID_POSTAL_CODE:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

.field public static final enum INVALID_SECURITY_CODE:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

.field public static final enum NETWORK_FAILURE:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

.field public static final enum TOO_MANY_ATTEMPTS:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

.field public static final enum UNKNOWN:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

.field public static final enum UNSUPPORTED_REGION:Lcom/snapchat/android/api2/cash/blockers/CardInputError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNKNOWN:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    .line 6
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    const-string v1, "TOO_MANY_ATTEMPTS"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->TOO_MANY_ATTEMPTS:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    .line 7
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    const-string v1, "BLOCKED_CARD"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->BLOCKED_CARD:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    .line 9
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    const-string v1, "CARD_TYPE_UNSUPPORTED"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->CARD_TYPE_UNSUPPORTED:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    .line 11
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    const-string v1, "INVALID_CARD_NUMBER"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_CARD_NUMBER:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    .line 12
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    const-string v1, "INVALID_EXPIRATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_EXPIRATION:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    .line 13
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    const-string v1, "INVALID_SECURITY_CODE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_SECURITY_CODE:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    .line 14
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    const-string v1, "INVALID_POSTAL_CODE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_POSTAL_CODE:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    .line 15
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    const-string v1, "UNSUPPORTED_REGION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNSUPPORTED_REGION:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    .line 17
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    const-string v1, "NETWORK_FAILURE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->NETWORK_FAILURE:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    .line 3
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNKNOWN:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->TOO_MANY_ATTEMPTS:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->BLOCKED_CARD:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->CARD_TYPE_UNSUPPORTED:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_CARD_NUMBER:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_EXPIRATION:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_SECURITY_CODE:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_POSTAL_CODE:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNSUPPORTED_REGION:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->NETWORK_FAILURE:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->$VALUES:[Lcom/snapchat/android/api2/cash/blockers/CardInputError;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/blockers/CardInputError;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/api2/cash/blockers/CardInputError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->$VALUES:[Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-virtual {v0}, [Lcom/snapchat/android/api2/cash/blockers/CardInputError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    return-object v0
.end method
