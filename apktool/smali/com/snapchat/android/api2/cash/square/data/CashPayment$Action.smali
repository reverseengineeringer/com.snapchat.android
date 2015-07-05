.class public final enum Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/square/data/CashPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;

.field public static final enum SEND:Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SEND"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;

    const-string v1, "SEND"

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;->SEND:Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;

    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;->SEND:Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;->$VALUES:[Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;->$VALUES:[Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;

    invoke-virtual {v0}, [Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;

    return-object v0
.end method
