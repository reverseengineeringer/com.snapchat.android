.class public final enum Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/square/data/CashPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CancellationReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

.field public static final enum DECLINED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DECLINED"
    .end annotation
.end field

.field public static final enum EXPIRED_WAITING_ON_RECIPIENT:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EXPIRED_WAITING_ON_RECIPIENT"
    .end annotation
.end field

.field public static final enum EXPIRED_WAITING_ON_SENDER:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EXPIRED_WAITING_ON_SENDER"
    .end annotation
.end field

.field public static final enum LIMIT_EXCEEDED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LIMIT_EXCEEDED"
    .end annotation
.end field

.field public static final enum OTHER:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OTHER"
    .end annotation
.end field

.field public static final enum RECIPIENT_CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RECIPIENT_CANCELED"
    .end annotation
.end field

.field public static final enum SENDER_CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SENDER_CANCELED"
    .end annotation
.end field

.field public static final enum SQUARE_CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SQUARE_CANCELED"
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

    .line 28
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    const-string v1, "SENDER_CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->SENDER_CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    .line 30
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    const-string v1, "RECIPIENT_CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->RECIPIENT_CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    .line 32
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    const-string v1, "SQUARE_CANCELED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->SQUARE_CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    .line 34
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    const-string v1, "LIMIT_EXCEEDED"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->LIMIT_EXCEEDED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    .line 36
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    const-string v1, "DECLINED"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->DECLINED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    .line 38
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->OTHER:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    .line 40
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    const-string v1, "EXPIRED_WAITING_ON_SENDER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->EXPIRED_WAITING_ON_SENDER:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    .line 42
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    const-string v1, "EXPIRED_WAITING_ON_RECIPIENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->EXPIRED_WAITING_ON_RECIPIENT:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->SENDER_CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->RECIPIENT_CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->SQUARE_CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->LIMIT_EXCEEDED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->DECLINED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->OTHER:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->EXPIRED_WAITING_ON_SENDER:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->EXPIRED_WAITING_ON_RECIPIENT:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->$VALUES:[Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->$VALUES:[Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    invoke-virtual {v0}, [Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    return-object v0
.end method
