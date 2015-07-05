.class public final enum Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/StoryGroupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoryGroupSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;",
        ">;",
        "Lzw;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

.field public static final enum CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

.field public static final enum DISPLAY_NAME:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

.field public static final enum ID:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

.field public static final enum SHOULD_FETCH_CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/snapchat/android/database/DataType;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x1

    .line 42
    new-instance v0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    const-string v1, "ID"

    const-string v3, "storyGroupId"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    const-string v5, "PRIMARY KEY"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->ID:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    .line 43
    new-instance v0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    const-string v1, "DISPLAY_NAME"

    const-string v4, "displayName"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->DISPLAY_NAME:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    .line 44
    new-instance v3, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    const-string v4, "SHOULD_FETCH_CUSTOM_DESCRIPTION"

    const-string v7, "shouldFetchCustomDescription"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->SHOULD_FETCH_CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    .line 45
    new-instance v3, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    const-string v4, "CUSTOM_DESCRIPTION"

    const-string v7, "customDescription"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    const/4 v1, 0x0

    sget-object v3, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->ID:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    aput-object v3, v0, v1

    sget-object v1, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->DISPLAY_NAME:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->SHOULD_FETCH_CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    aput-object v1, v0, v10

    sput-object v0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->$VALUES:[Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->a:I

    .line 55
    iput-object p4, p0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->b:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 57
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

    .line 59
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput v0, p0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->a:I

    .line 61
    iput-object p2, p0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->b:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 63
    iput-object p4, p0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->d:Ljava/lang/String;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->$VALUES:[Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->a:I

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
