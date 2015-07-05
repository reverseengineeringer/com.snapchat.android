.class public final enum Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum LOCAL_SQ_ACCEPT_TERMS_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum PHONE_NUMBER_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum SEND_CONFIRMATION_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum SQ_ACCEPT_TERMS_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum SQ_ACCESS_TOKEN_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum SQ_CARD_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum SQ_CONFIRM_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum SQ_CONFLICT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum SQ_IDENTITY_VERIFICATION_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum SQ_INITIATE_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum SQ_INITIATION_CONFIRM_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum SQ_PHONE_NUMBER_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum SQ_RETRIEVE_RECEIVING_CASH_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum SQ_RETRIEVE_SENDING_CASH_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum SQ_UNLINK_CARD_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum SQ_UPDATE_RECEIVED_CASH_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum SQ_URL_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum UNDEFINED:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

.field public static final enum VALIDATE_TRANSACTION_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->UNDEFINED:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 8
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "SQ_UNLINK_CARD_BLOCKER"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_UNLINK_CARD_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 9
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "SQ_INITIATE_PAYMENT_BLOCKER"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_INITIATE_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 10
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "SQ_CONFIRM_BLOCKER"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_CONFIRM_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 11
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "SQ_URL_BLOCKER"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_URL_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 12
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "SQ_IDENTITY_VERIFICATION_BLOCKER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_IDENTITY_VERIFICATION_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 13
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "SQ_ACCEPT_TERMS_BLOCKER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_ACCEPT_TERMS_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 14
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "SQ_PHONE_NUMBER_BLOCKER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_PHONE_NUMBER_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 16
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "SQ_UPDATE_RECEIVED_CASH_PAYMENT_BLOCKER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_UPDATE_RECEIVED_CASH_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 17
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "SQ_RETRIEVE_RECEIVING_CASH_PAYMENT_BLOCKER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_RETRIEVE_RECEIVING_CASH_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 18
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "SQ_RETRIEVE_SENDING_CASH_PAYMENT_BLOCKER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_RETRIEVE_SENDING_CASH_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 20
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "VALIDATE_TRANSACTION_BLOCKER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->VALIDATE_TRANSACTION_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 21
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "SEND_CONFIRMATION_BLOCKER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SEND_CONFIRMATION_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 23
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "SQ_INITIATION_CONFIRM_BLOCKER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_INITIATION_CONFIRM_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 24
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "SQ_CARD_BLOCKER"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_CARD_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 25
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "SQ_CONFLICT_BLOCKER"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_CONFLICT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 26
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "SQ_ACCESS_TOKEN_BLOCKER"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_ACCESS_TOKEN_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 28
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "PHONE_NUMBER_BLOCKER"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->PHONE_NUMBER_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 29
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    const-string v1, "LOCAL_SQ_ACCEPT_TERMS_BLOCKER"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->LOCAL_SQ_ACCEPT_TERMS_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    .line 6
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->UNDEFINED:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_UNLINK_CARD_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_INITIATE_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_CONFIRM_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_URL_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_IDENTITY_VERIFICATION_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_ACCEPT_TERMS_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_PHONE_NUMBER_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_UPDATE_RECEIVED_CASH_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_RETRIEVE_RECEIVING_CASH_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_RETRIEVE_SENDING_CASH_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->VALIDATE_TRANSACTION_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SEND_CONFIRMATION_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_INITIATION_CONFIRM_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_CARD_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_CONFLICT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_ACCESS_TOKEN_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->PHONE_NUMBER_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->LOCAL_SQ_ACCEPT_TERMS_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->$VALUES:[Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->$VALUES:[Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    invoke-virtual {v0}, [Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
