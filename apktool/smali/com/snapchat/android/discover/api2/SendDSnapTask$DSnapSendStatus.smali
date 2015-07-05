.class public final enum Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/api2/SendDSnapTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DSnapSendStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

.field public static final enum FAILED_INVALID_SEQUENCE:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FAILED_INVALID_SEQUENCE"
    .end annotation
.end field

.field public static final enum FAILED_NOT_ALLOWED:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FAILED_NOT_ALLOWED"
    .end annotation
.end field

.field public static final enum FAILED_NOT_A_FRIEND:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FAILED_NOT_A_FRIEND"
    .end annotation
.end field

.field public static final enum FAILED_TRANSIENT:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FAILED_TRANSIENT"
    .end annotation
.end field

.field public static final enum NO_NETWORK:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

.field public static final enum SUCCESS:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SUCCESS"
    .end annotation
.end field

.field public static final enum UNSEND:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UNSEND"
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

    .line 68
    new-instance v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    const-string v1, "UNSEND"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->UNSEND:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    .line 70
    new-instance v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->SUCCESS:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    .line 72
    new-instance v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    const-string v1, "FAILED_NOT_A_FRIEND"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->FAILED_NOT_A_FRIEND:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    .line 74
    new-instance v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    const-string v1, "FAILED_TRANSIENT"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->FAILED_TRANSIENT:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    .line 76
    new-instance v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    const-string v1, "FAILED_INVALID_SEQUENCE"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->FAILED_INVALID_SEQUENCE:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    .line 78
    new-instance v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    const-string v1, "FAILED_NOT_ALLOWED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->FAILED_NOT_ALLOWED:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    .line 80
    new-instance v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    const-string v1, "NO_NETWORK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->NO_NETWORK:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    .line 67
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    sget-object v1, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->UNSEND:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->SUCCESS:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->FAILED_NOT_A_FRIEND:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->FAILED_TRANSIENT:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->FAILED_INVALID_SEQUENCE:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->FAILED_NOT_ALLOWED:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->NO_NETWORK:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->$VALUES:[Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->$VALUES:[Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    return-object v0
.end method
