.class public final Labt;
.super Laaw;
.source "SourceFile"


# static fields
.field private static final a:Labt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Labt;

    invoke-direct {v0}, Labt;-><init>()V

    sput-object v0, Labt;->a:Labt;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "MyStorySnapThumbnailFileTable"

    sget-object v1, Laxo;->MY_STORY_SNAP_THUMBNAIL_CACHE:Laxn;

    invoke-direct {p0, v0, v1}, Laaw;-><init>(Ljava/lang/String;Laxn;)V

    .line 12
    return-void
.end method

.method public static a()Labt;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Labt;->a:Labt;

    return-object v0
.end method
