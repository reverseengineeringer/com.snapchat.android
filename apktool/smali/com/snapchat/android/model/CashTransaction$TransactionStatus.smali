.class public final enum Lcom/snapchat/android/model/CashTransaction$TransactionStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/CashTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/CashTransaction$TransactionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

.field public static final enum CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

.field public static final enum COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

.field public static final enum EXPIRED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

.field public static final enum INITIATED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

.field public static final enum RECIPIENT_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

.field public static final enum SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

.field public static final enum WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    const-string v1, "INITIATED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->INITIATED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 53
    new-instance v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    const-string v1, "WAITING_ON_RECIPIENT"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 54
    new-instance v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 55
    new-instance v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->EXPIRED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 56
    new-instance v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 57
    new-instance v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    const-string v1, "RECIPIENT_CANCELED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->RECIPIENT_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 58
    new-instance v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    const-string v1, "SENDER_CANCELED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->INITIATED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->EXPIRED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->RECIPIENT_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->$VALUES:[Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/CashTransaction$TransactionStatus;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->$VALUES:[Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    return-object v0
.end method
