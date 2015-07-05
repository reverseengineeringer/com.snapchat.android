.class public final enum Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatReceivedViaSCCPSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;",
        ">;",
        "Lzw;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

.field public static final enum ID:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

.field public static final enum SENDER_USERNAME:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

.field public static final enum TIMESTAMP:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/snapchat/android/database/DataType;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x1

    .line 129
    new-instance v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    const-string v1, "ID"

    const-string v3, "_id"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    const-string v5, "PRIMARY_KEY"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->ID:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    .line 130
    new-instance v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    const-string v1, "TIMESTAMP"

    const-string v4, "timestamp"

    sget-object v5, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    .line 131
    new-instance v3, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    const-string v4, "SENDER_USERNAME"

    const-string v7, "sender_username"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->SENDER_USERNAME:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    const/4 v1, 0x0

    sget-object v3, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->ID:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    aput-object v3, v0, v1

    sget-object v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->SENDER_USERNAME:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    aput-object v1, v0, v9

    sput-object v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->$VALUES:[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

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
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput p3, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->a:I

    .line 141
    iput-object p4, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->b:Ljava/lang/String;

    .line 142
    iput-object p5, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 143
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

    .line 145
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput v0, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->a:I

    .line 147
    iput-object p2, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->b:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 149
    iput-object p4, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->d:Ljava/lang/String;

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->$VALUES:[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->a:I

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
