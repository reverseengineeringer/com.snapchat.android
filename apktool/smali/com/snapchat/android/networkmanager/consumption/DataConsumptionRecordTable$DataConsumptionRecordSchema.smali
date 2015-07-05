.class public final enum Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataConsumptionRecordSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;",
        ">;",
        "Lzw;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

.field public static final enum EXPIRATION:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

.field public static final enum ID:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

.field public static final enum REQUEST_ID:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

.field public static final enum SIZE_IN_BYTES:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

.field public static final enum TYPE:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/snapchat/android/database/DataType;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x1

    .line 44
    new-instance v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    const-string v1, "ID"

    const-string v3, "contentKey"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    const-string v5, "PRIMARY KEY"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->ID:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    .line 45
    new-instance v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    const-string v1, "REQUEST_ID"

    const-string v4, "requestId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->REQUEST_ID:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    .line 46
    new-instance v3, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    const-string v4, "TYPE"

    const-string v7, "type"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->TYPE:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    .line 47
    new-instance v3, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    const-string v4, "EXPIRATION"

    const-string v7, "expiration"

    sget-object v8, Lcom/snapchat/android/database/DataType;->LONG:Lcom/snapchat/android/database/DataType;

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->EXPIRATION:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    .line 48
    new-instance v3, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    const-string v4, "SIZE_IN_BYTES"

    const-string v7, "size_bytes"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->SIZE_IN_BYTES:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    const/4 v1, 0x0

    sget-object v3, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->ID:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    aput-object v3, v0, v1

    sget-object v1, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->REQUEST_ID:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->TYPE:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->EXPIRATION:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    aput-object v1, v0, v10

    sget-object v1, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->SIZE_IN_BYTES:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    aput-object v1, v0, v11

    sput-object v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->$VALUES:[Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/database/DataType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->a:I

    .line 58
    iput-object p4, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->b:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput v0, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->a:I

    .line 64
    iput-object p2, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->b:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 66
    iput-object p4, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->d:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->$VALUES:[Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->a:I

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
