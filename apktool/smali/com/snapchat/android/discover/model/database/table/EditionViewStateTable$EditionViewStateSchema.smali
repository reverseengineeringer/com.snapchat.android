.class public final enum Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EditionViewStateSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;",
        ">;",
        "Lzw;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

.field public static final enum ID:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

.field public static final enum LAST_INDEX_VIEWED:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

.field public static final enum VIEWED_ALL_DSNAPS:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/snapchat/android/database/DataType;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 65
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    const-string v1, "ID"

    const-string v2, "_id"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    const-string v4, "PRIMARY KEY"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    .line 66
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    const-string v1, "LAST_INDEX_VIEWED"

    const-string v2, "last_index_viewed"

    sget-object v3, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->LAST_INDEX_VIEWED:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    .line 67
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    const-string v1, "VIEWED_ALL_DSNAPS"

    const-string v2, "viewed_all_dsnaps"

    sget-object v3, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->VIEWED_ALL_DSNAPS:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    aput-object v2, v0, v1

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->LAST_INDEX_VIEWED:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->VIEWED_ALL_DSNAPS:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->$VALUES:[Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->a:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->b:Lcom/snapchat/android/database/DataType;

    .line 77
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
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    .line 81
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->c:Ljava/lang/String;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->b:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->$VALUES:[Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->b:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
