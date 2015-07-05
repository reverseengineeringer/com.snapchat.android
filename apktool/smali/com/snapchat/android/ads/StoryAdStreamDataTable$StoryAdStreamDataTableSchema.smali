.class public final enum Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ads/StoryAdStreamDataTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoryAdStreamDataTableSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;",
        ">;",
        "Lzw;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

.field public static final enum NEXT_UNVIEWED_POSITION:Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

.field public static final enum STREAM_KEY:Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;


# instance fields
.field private mColumnName:Ljava/lang/String;

.field private mColumnNumber:I

.field private mConstraints:Ljava/lang/String;

.field private mDataType:Lcom/snapchat/android/database/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    const-string v1, "STREAM_KEY"

    const-string v4, "streamKey"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    const-string v6, "PRIMARY KEY"

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->STREAM_KEY:Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    .line 62
    new-instance v0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    const-string v1, "NEXT_UNVIEWED_POSITION"

    const-string v3, "nextUnviewedPosition"

    sget-object v4, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v3, v4}, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->NEXT_UNVIEWED_POSITION:Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    sget-object v1, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->STREAM_KEY:Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->NEXT_UNVIEWED_POSITION:Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->$VALUES:[Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/database/DataType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->mColumnNumber:I

    .line 75
    iput-object p4, p0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->mColumnName:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->mDataType:Lcom/snapchat/android/database/DataType;

    .line 77
    iput-object p6, p0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->mConstraints:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 70
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->$VALUES:[Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->mColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->mColumnNumber:I

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->mConstraints:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->mDataType:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
