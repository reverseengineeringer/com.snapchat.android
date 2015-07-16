.class public final enum Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Laav;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PublisherChannelSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;",
        ">;",
        "Laav;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum ENABLED:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum FILLED_ICON:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum INTRO_AD_TARGETING:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum INTRO_AD_UNIT_ID:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum INTRO_MOVIE:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum INVERTED_ICON:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum LOADING_ICON:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum POSITION:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum PRIMARY_COLOR:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum PROMOTED_STORIES_PAGE_POSITION:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum PUBLISHER_FORMAL_NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum PUBLISHER_INTERNATIONAL_NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum SECONDARY_COLOR:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum STORIES_PAGE_POSITION:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;


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

    .line 72
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "NAME"

    const-string v2, "_id"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    const-string v4, "PRIMARY KEY"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 73
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "PUBLISHER_FORMAL_NAME"

    const-string v2, "publisher_formal_name"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->PUBLISHER_FORMAL_NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 74
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "PUBLISHER_INTERNATIONAL_NAME"

    const-string v2, "publisher_international_name"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->PUBLISHER_INTERNATIONAL_NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 75
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "PRIMARY_COLOR"

    const-string v2, "primary_color"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->PRIMARY_COLOR:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 76
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "SECONDARY_COLOR"

    const-string v2, "secondary_color"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->SECONDARY_COLOR:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 77
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "FILLED_ICON"

    const-string v2, "filled_icon"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->FILLED_ICON:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 78
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "INVERTED_ICON"

    const/4 v2, 0x6

    const-string v3, "inverted_icon"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INVERTED_ICON:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 79
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "LOADING_ICON"

    const/4 v2, 0x7

    const-string v3, "loading_icon"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->LOADING_ICON:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 80
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "INTRO_MOVIE"

    const/16 v2, 0x8

    const-string v3, "intro_movie"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_MOVIE:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 81
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "POSITION"

    const/16 v2, 0x9

    const-string v3, "position"

    sget-object v4, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->POSITION:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 82
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "STORIES_PAGE_POSITION"

    const/16 v2, 0xa

    const-string v3, "stories_page_position"

    sget-object v4, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->STORIES_PAGE_POSITION:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 83
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "PROMOTED_STORIES_PAGE_POSITION"

    const/16 v2, 0xb

    const-string v3, "promoted_stories_page_position"

    sget-object v4, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->PROMOTED_STORIES_PAGE_POSITION:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 84
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "ENABLED"

    const/16 v2, 0xc

    const-string v3, "enabled"

    sget-object v4, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->ENABLED:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 85
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "INTRO_AD_UNIT_ID"

    const/16 v2, 0xd

    const-string v3, "ad_unit_id"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_AD_UNIT_ID:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 86
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "INTRO_AD_TARGETING"

    const/16 v2, 0xe

    const-string v3, "targeting_parameters"

    sget-object v4, Lcom/snapchat/android/database/DataType;->MAP:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_AD_TARGETING:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 69
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v2, v0, v1

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->PUBLISHER_FORMAL_NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->PUBLISHER_INTERNATIONAL_NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->PRIMARY_COLOR:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->SECONDARY_COLOR:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v1, v0, v8

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->FILLED_ICON:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INVERTED_ICON:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->LOADING_ICON:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_MOVIE:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->POSITION:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->STORIES_PAGE_POSITION:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->PROMOTED_STORIES_PAGE_POSITION:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->ENABLED:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_AD_UNIT_ID:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_AD_TARGETING:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->$VALUES:[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-object p3, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->a:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->b:Lcom/snapchat/android/database/DataType;

    .line 96
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
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    .line 100
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->c:Ljava/lang/String;

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->b:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->$VALUES:[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->b:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
