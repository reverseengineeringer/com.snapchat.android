.class public final Labx;
.super Laaw;
.source "SourceFile"


# static fields
.field private static final a:Labx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Labx;

    invoke-direct {v0}, Labx;-><init>()V

    sput-object v0, Labx;->a:Labx;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "ReceivedStorySnapThumbnailFileTable"

    sget-object v1, Laxo;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Laxn;

    invoke-direct {p0, v0, v1}, Laaw;-><init>(Ljava/lang/String;Laxn;)V

    .line 12
    return-void
.end method

.method public static a()Labx;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Labx;->a:Labx;

    return-object v0
.end method
