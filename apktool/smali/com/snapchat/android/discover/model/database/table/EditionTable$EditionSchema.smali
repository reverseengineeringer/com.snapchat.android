.class public final enum Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/database/table/EditionTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EditionSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;",
        ">;",
        "Lzw;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

.field public static final enum ID:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

.field public static final enum PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

.field public static final enum STATUS:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

.field public static final enum TIME_ADDED:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;


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

    .line 74
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    const-string v1, "ID"

    const-string v2, "_id"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    const-string v4, "PRIMARY KEY"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    .line 75
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    const-string v1, "PUBLISHER_NAME"

    const-string v2, "publisher_name"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    .line 76
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    const-string v1, "TIME_ADDED"

    const-string v2, "time_added"

    sget-object v3, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->TIME_ADDED:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    .line 77
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    const-string v1, "STATUS"

    const-string v2, "status"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    aput-object v2, v0, v1

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->TIME_ADDED:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    aput-object v1, v0, v7

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->$VALUES:[Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput-object p3, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->a:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->b:Lcom/snapchat/android/database/DataType;

    .line 87
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
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    .line 91
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->c:Ljava/lang/String;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->b:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->$VALUES:[Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->b:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
