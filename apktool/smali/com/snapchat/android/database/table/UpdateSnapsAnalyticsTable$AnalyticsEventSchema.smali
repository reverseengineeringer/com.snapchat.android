.class public final enum Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnalyticsEventSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;",
        ">;",
        "Lzw;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

.field public static final enum EVENT_LEVELS:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

.field public static final enum EVENT_NAME:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

.field public static final enum EVENT_PARAMETERS:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

.field public static final enum EVENT_TIMERS:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

.field public static final enum EVENT_TIMESTAMP:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/snapchat/android/database/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x4

    const/4 v15, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 102
    new-instance v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    const-string v1, "EVENT_NAME"

    const-string v4, "EventName"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_NAME:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    .line 104
    new-instance v4, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    const-string v5, "EVENT_PARAMETERS"

    const-string v8, "EventParameters"

    sget-object v9, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v6, v3

    invoke-direct/range {v4 .. v9}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v4, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_PARAMETERS:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    .line 106
    new-instance v5, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    const-string v6, "EVENT_TIMESTAMP"

    const-string v9, "EventTimestamp"

    sget-object v10, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v8, v15

    invoke-direct/range {v5 .. v10}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v5, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_TIMESTAMP:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    .line 108
    new-instance v8, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    const-string v9, "EVENT_TIMERS"

    const-string v12, "EventTimers"

    sget-object v13, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v10, v15

    invoke-direct/range {v8 .. v13}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v8, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_TIMERS:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    .line 110
    new-instance v9, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    const-string v10, "EVENT_LEVELS"

    const/4 v12, 0x5

    const-string v13, "EventLevels"

    sget-object v14, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v9 .. v14}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v9, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_LEVELS:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    .line 100
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_NAME:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_PARAMETERS:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_TIMESTAMP:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_TIMERS:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    aput-object v1, v0, v15

    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_LEVELS:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    aput-object v1, v0, v11

    sput-object v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->$VALUES:[Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

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
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p3, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->a:I

    .line 119
    iput-object p4, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->b:Ljava/lang/String;

    .line 120
    iput-object p5, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->$VALUES:[Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->a:I

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
