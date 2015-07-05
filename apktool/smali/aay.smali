.class public final Laay;
.super Lzx;
.source "SourceFile"


# static fields
.field private static final a:Laay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Laay;

    invoke-direct {v0}, Laay;-><init>()V

    sput-object v0, Laay;->a:Laay;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "ReceivedStorySnapThumbnailFileTable"

    sget-object v1, Lawq;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Lawp;

    invoke-direct {p0, v0, v1}, Lzx;-><init>(Ljava/lang/String;Lawp;)V

    .line 12
    return-void
.end method

.method public static a()Laay;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Laay;->a:Laay;

    return-object v0
.end method
