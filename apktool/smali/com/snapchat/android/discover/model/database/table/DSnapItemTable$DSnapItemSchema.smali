.class public final enum Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DSnapItemSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;",
        ">;",
        "Lzw;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

.field public static final enum DOCKING:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

.field public static final enum FORM:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

.field public static final enum HASH:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

.field public static final enum ID:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

.field public static final enum MEDIA_TYPE:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

.field public static final enum MODE:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

.field public static final enum OVERLAY_DOCKING:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

.field public static final enum OVERLAY_URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

.field public static final enum URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

.field public static final enum VIDEO_FIRST_FRAME_URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

.field public static final enum VIDEO_ID:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;


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

    .line 59
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    const-string v1, "ID"

    const-string v2, "_id"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    const-string v4, "PRIMARY KEY"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->ID:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    .line 60
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    const-string v1, "FORM"

    const-string v2, "form"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->FORM:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    .line 61
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    const-string v1, "MEDIA_TYPE"

    const-string v2, "media_type"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->MEDIA_TYPE:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    .line 62
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    const-string v1, "URI"

    const-string v2, "uri"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    .line 63
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    const-string v1, "VIDEO_ID"

    const-string v2, "video_id"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->VIDEO_ID:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    .line 64
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    const-string v1, "DOCKING"

    const-string v2, "docking"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->DOCKING:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    .line 65
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    const-string v1, "MODE"

    const/4 v2, 0x6

    const-string v3, "mode"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->MODE:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    .line 66
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    const-string v1, "VIDEO_FIRST_FRAME_URI"

    const/4 v2, 0x7

    const-string v3, "video_first_frame_uri"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->VIDEO_FIRST_FRAME_URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    .line 67
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    const-string v1, "OVERLAY_URI"

    const/16 v2, 0x8

    const-string v3, "overlay_uri"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->OVERLAY_URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    .line 68
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    const-string v1, "OVERLAY_DOCKING"

    const/16 v2, 0x9

    const-string v3, "overlay_docking"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->OVERLAY_DOCKING:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    .line 71
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    const-string v1, "HASH"

    const/16 v2, 0xa

    const-string v3, "hash"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    .line 57
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->ID:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v2, v0, v1

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->FORM:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->MEDIA_TYPE:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->VIDEO_ID:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v1, v0, v8

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->DOCKING:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->MODE:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->VIDEO_FIRST_FRAME_URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->OVERLAY_URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->OVERLAY_DOCKING:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->$VALUES:[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->a:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->b:Lcom/snapchat/android/database/DataType;

    .line 81
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
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    .line 85
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->c:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->b:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->$VALUES:[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->b:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
