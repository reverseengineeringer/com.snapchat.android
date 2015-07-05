.class public final enum Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/square/data/CashPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

.field public static final enum CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CANCELED"
    .end annotation
.end field

.field public static final enum COMPLETED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "COMPLETED"
    .end annotation
.end field

.field public static final enum PENDING:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PENDING"
    .end annotation
.end field

.field public static final enum WAITING_ON_RECIPIENT:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "WAITING_ON_RECIPIENT"
    .end annotation
.end field

.field public static final enum WAITING_ON_SENDER:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "WAITING_ON_SENDER"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    const-string v1, "WAITING_ON_SENDER"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->WAITING_ON_SENDER:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    .line 17
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    const-string v1, "WAITING_ON_RECIPIENT"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    .line 19
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->PENDING:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    .line 21
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->COMPLETED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    .line 23
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->WAITING_ON_SENDER:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->PENDING:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->COMPLETED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->$VALUES:[Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->$VALUES:[Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    invoke-virtual {v0}, [Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    return-object v0
.end method
