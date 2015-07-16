.class public final enum Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Laav;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/NotificationTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;",
        ">;",
        "Laav;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

.field public static final enum CASH_AMOUNT:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

.field public static final enum CHAT_MESSAGE_ID:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

.field public static final enum CHAT_SEQ_NUM:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

.field public static final enum ID:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

.field public static final enum NINJA_MODE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

.field public static final enum SENDER:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

.field public static final enum SENDER_USERNAME:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

.field public static final enum TEXT:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

.field public static final enum TIMESTAMP:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

.field public static final enum TYPE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/snapchat/android/database/DataType;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 224
    new-instance v0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    const-string v1, "ID"

    const-string v4, "_id"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->ID:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    .line 225
    new-instance v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    const-string v4, "TIMESTAMP"

    const-string v7, "timestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    .line 226
    new-instance v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    const-string v4, "SENDER"

    const-string v7, "sender"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    .line 227
    new-instance v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    const-string v4, "SENDER_USERNAME"

    const-string v7, "sender_username"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER_USERNAME:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    .line 228
    new-instance v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    const-string v4, "TEXT"

    const-string v7, "text"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TEXT:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    .line 229
    new-instance v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    const-string v4, "CHAT_MESSAGE_ID"

    const/4 v5, 0x5

    const/4 v6, 0x5

    const-string v7, "chat_message_id"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->CHAT_MESSAGE_ID:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    .line 230
    new-instance v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    const-string v4, "TYPE"

    const/4 v5, 0x6

    const/4 v6, 0x6

    const-string v7, "type"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TYPE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    .line 231
    new-instance v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    const-string v4, "NINJA_MODE"

    const/4 v5, 0x7

    const/4 v6, 0x7

    const-string v7, "ninja_mode"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->NINJA_MODE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    .line 232
    new-instance v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    const-string v4, "CASH_AMOUNT"

    const/16 v5, 0x8

    const/16 v6, 0x8

    const-string v7, "cash_amount"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->CASH_AMOUNT:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    .line 233
    new-instance v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    const-string v4, "CHAT_SEQ_NUM"

    const/16 v5, 0x9

    const/16 v6, 0x9

    const-string v7, "chat_seq_num"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->CHAT_SEQ_NUM:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    .line 223
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->ID:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    aput-object v1, v0, v10

    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER_USERNAME:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    aput-object v1, v0, v11

    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TEXT:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->CHAT_MESSAGE_ID:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TYPE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->NINJA_MODE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->CASH_AMOUNT:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->CHAT_SEQ_NUM:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->$VALUES:[Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

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
    .line 241
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 242
    iput p3, p0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->a:I

    .line 243
    iput-object p4, p0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->b:Ljava/lang/String;

    .line 244
    iput-object p5, p0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 245
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;
    .locals 1

    .prologue
    .line 223
    const-class v0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->$VALUES:[Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->a:I

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
