.class public final Labs;
.super Laaw;
.source "SourceFile"


# static fields
.field private static final a:Labs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Labs;

    invoke-direct {v0}, Labs;-><init>()V

    sput-object v0, Labs;->a:Labs;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "MySnapVideoFileTable"

    sget-object v1, Laxo;->MY_SNAP_VIDEO_CACHE:Laxn;

    invoke-direct {p0, v0, v1}, Laaw;-><init>(Ljava/lang/String;Laxn;)V

    .line 12
    return-void
.end method

.method public static a()Labs;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Labs;->a:Labs;

    return-object v0
.end method
