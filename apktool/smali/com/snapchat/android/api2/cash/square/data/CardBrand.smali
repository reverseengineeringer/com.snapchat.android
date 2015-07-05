.class public final enum Lcom/snapchat/android/api2/cash/square/data/CardBrand;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/square/data/CardBrand$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/api2/cash/square/data/CardBrand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/api2/cash/square/data/CardBrand;

.field public static final enum AMERICAN_EXPRESS:Lcom/snapchat/android/api2/cash/square/data/CardBrand;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AMERICAN_EXPRESS"
    .end annotation
.end field

.field public static final enum DISCOVER:Lcom/snapchat/android/api2/cash/square/data/CardBrand;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DISCOVER"
    .end annotation
.end field

.field public static final enum DISCOVER_DINERS:Lcom/snapchat/android/api2/cash/square/data/CardBrand;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DISCOVER_DINERS"
    .end annotation
.end field

.field public static final enum JCB:Lcom/snapchat/android/api2/cash/square/data/CardBrand;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "JCB"
    .end annotation
.end field

.field public static final enum MASTER_CARD:Lcom/snapchat/android/api2/cash/square/data/CardBrand;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MASTER_CARD"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/snapchat/android/api2/cash/square/data/CardBrand;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UNKNOWN"
    .end annotation
.end field

.field public static final enum VISA:Lcom/snapchat/android/api2/cash/square/data/CardBrand;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "VISA"
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

    .line 7
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/api2/cash/square/data/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->UNKNOWN:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    .line 9
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    const-string v1, "VISA"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/api2/cash/square/data/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->VISA:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    .line 11
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    const-string v1, "MASTER_CARD"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/api2/cash/square/data/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->MASTER_CARD:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    .line 13
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    const-string v1, "AMERICAN_EXPRESS"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/api2/cash/square/data/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->AMERICAN_EXPRESS:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    .line 15
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    const-string v1, "DISCOVER"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/api2/cash/square/data/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->DISCOVER:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    .line 17
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    const-string v1, "DISCOVER_DINERS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->DISCOVER_DINERS:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    .line 19
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    const-string v1, "JCB"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->JCB:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->UNKNOWN:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->VISA:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->MASTER_CARD:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->AMERICAN_EXPRESS:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->DISCOVER:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->DISCOVER_DINERS:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->JCB:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->$VALUES:[Lcom/snapchat/android/api2/cash/square/data/CardBrand;

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

    .line 29
    return-void
.end method

.method public static getDrawable(Lcom/snapchat/android/api2/cash/square/data/CardBrand;)I
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand$1;->$SwitchMap$com$snapchat$android$api2$cash$square$data$CardBrand:[I

    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 29
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 25
    :pswitch_0
    const v0, 0x7f0200ad

    goto :goto_0

    .line 27
    :pswitch_1
    const v0, 0x7f0200a4

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/square/data/CardBrand;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/api2/cash/square/data/CardBrand;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->$VALUES:[Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    invoke-virtual {v0}, [Lcom/snapchat/android/api2/cash/square/data/CardBrand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    return-object v0
.end method
