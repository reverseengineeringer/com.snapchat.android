.class public final enum Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Laav;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;",
        ">;",
        "Laav;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

.field public static final enum DEVICE_ID:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

.field public static final enum DEVICE_NAME:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

.field public static final enum ID:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

.field public static final enum LAST_LOGIN:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/snapchat/android/database/DataType;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 11
    new-instance v0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    const-string v1, "ID"

    const-string v2, "_id"

    sget-object v3, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    const-string v4, "PRIMARY KEY AUTOINCREMENT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->ID:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    .line 12
    new-instance v0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    const-string v1, "DEVICE_ID"

    const-string v2, "deviceID"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->DEVICE_ID:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    .line 13
    new-instance v0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    const-string v1, "DEVICE_NAME"

    const-string v2, "deviceName"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->DEVICE_NAME:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    .line 14
    new-instance v0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    const-string v1, "LAST_LOGIN"

    const-string v2, "lastLogin"

    sget-object v3, Lcom/snapchat/android/database/DataType;->LONG:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->LAST_LOGIN:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->ID:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    aput-object v2, v0, v1

    sget-object v1, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->DEVICE_ID:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->DEVICE_NAME:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->LAST_LOGIN:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    aput-object v1, v0, v7

    sput-object v0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->$VALUES:[Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/database/DataType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->a:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->b:Lcom/snapchat/android/database/DataType;

    .line 24
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p2, p0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->a:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->b:Lcom/snapchat/android/database/DataType;

    .line 29
    iput-object p4, p0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->c:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->$VALUES:[Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->b:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
