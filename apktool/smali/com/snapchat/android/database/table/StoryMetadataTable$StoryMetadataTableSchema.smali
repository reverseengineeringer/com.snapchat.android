.class public final enum Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/StoryMetadataTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoryMetadataTableSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;",
        ">;",
        "Lzw;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

.field public static final enum AD_INTERVAL_INDEX:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

.field public static final enum ID:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

.field public static final enum SERIALIZED_AD_METADATA:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;


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

    .line 85
    new-instance v0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    const-string v1, "ID"

    const-string v3, "username"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    const-string v5, "PRIMARY KEY"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->ID:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    .line 86
    new-instance v0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    const-string v1, "SERIALIZED_AD_METADATA"

    const-string v4, "adMetadata"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->SERIALIZED_AD_METADATA:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    .line 87
    new-instance v3, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    const-string v4, "AD_INTERVAL_INDEX"

    const-string v7, "adIntervalIndex"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->AD_INTERVAL_INDEX:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    const/4 v1, 0x0

    sget-object v3, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->ID:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    aput-object v3, v0, v1

    sget-object v1, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->SERIALIZED_AD_METADATA:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->AD_INTERVAL_INDEX:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    aput-object v1, v0, v9

    sput-object v0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->$VALUES:[Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p3, p0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->a:I

    .line 96
    iput-object p4, p0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->b:Ljava/lang/String;

    .line 97
    iput-object p5, p0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 98
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

    .line 100
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput v0, p0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->a:I

    .line 102
    iput-object p2, p0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->b:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 104
    iput-object p4, p0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->d:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->$VALUES:[Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->a:I

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
