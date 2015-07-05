.class public final Laat;
.super Lzx;
.source "SourceFile"


# static fields
.field private static final a:Laat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Laat;

    invoke-direct {v0}, Laat;-><init>()V

    sput-object v0, Laat;->a:Laat;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "MySnapVideoFileTable"

    sget-object v1, Lawq;->MY_SNAP_VIDEO_CACHE:Lawp;

    invoke-direct {p0, v0, v1}, Lzx;-><init>(Ljava/lang/String;Lawp;)V

    .line 12
    return-void
.end method

.method public static a()Laat;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Laat;->a:Laat;

    return-object v0
.end method
