.class public final enum Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Laav;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EditionChunkSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;",
        ">;",
        "Laav;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum AD_KEY:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum AD_POSITION:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum AD_TARGETING:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum AD_TYPE:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum AD_UNIT_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum COLOR:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum EDITION_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum HASH:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum POSITION:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum STATUS:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum URL:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/snapchat/android/database/DataType;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 64
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "ID"

    const-string v2, "_id"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    const-string v4, "PRIMARY KEY"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 65
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "EDITION_ID"

    const-string v2, "edition_id"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 66
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "URL"

    const-string v2, "url"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->URL:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 67
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "HASH"

    const-string v2, "hash"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 68
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "AD_KEY"

    const-string v2, "ad_key"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_KEY:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 69
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "COLOR"

    const-string v2, "color"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->COLOR:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 70
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "AD_TYPE"

    const/4 v2, 0x6

    const-string v3, "ad_type"

    sget-object v4, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_TYPE:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 71
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "AD_POSITION"

    const/4 v2, 0x7

    const-string v3, "ad_position"

    sget-object v4, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_POSITION:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 72
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "POSITION"

    const/16 v2, 0x8

    const-string v3, "position"

    sget-object v4, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->POSITION:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 73
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "STATUS"

    const/16 v2, 0x9

    const-string v3, "status"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 74
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "AD_UNIT_ID"

    const/16 v2, 0xa

    const-string v3, "ad_unit_id"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_UNIT_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 75
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "AD_TARGETING"

    const/16 v2, 0xb

    const-string v3, "targeting_parameters"

    sget-object v4, Lcom/snapchat/android/database/DataType;->MAP:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_TARGETING:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 62
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v2, v0, v1

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->URL:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_KEY:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v1, v0, v8

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->COLOR:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_TYPE:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_POSITION:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->POSITION:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_UNIT_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_TARGETING:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->$VALUES:[Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput-object p3, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->a:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->b:Lcom/snapchat/android/database/DataType;

    .line 85
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
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    .line 89
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->c:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->b:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->$VALUES:[Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->b:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
