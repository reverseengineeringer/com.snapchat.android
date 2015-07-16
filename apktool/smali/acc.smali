.class public final Lacc;
.super Laaw;
.source "SourceFile"


# static fields
.field private static final a:Lacc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lacc;

    invoke-direct {v0}, Lacc;-><init>()V

    sput-object v0, Lacc;->a:Lacc;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "StorySnapVideoFileTable"

    sget-object v1, Laxo;->STORY_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-direct {p0, v0, v1}, Laaw;-><init>(Ljava/lang/String;Laxn;)V

    .line 12
    return-void
.end method

.method public static a()Lacc;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lacc;->a:Lacc;

    return-object v0
.end method
