.class public final Laas;
.super Lzx;
.source "SourceFile"


# static fields
.field private static final a:Laas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Laas;

    invoke-direct {v0}, Laas;-><init>()V

    sput-object v0, Laas;->a:Laas;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "MySnapImageFileTable"

    sget-object v1, Lawq;->MY_SNAP_IMAGE_CACHE:Lawp;

    invoke-direct {p0, v0, v1}, Lzx;-><init>(Ljava/lang/String;Lawp;)V

    .line 12
    return-void
.end method

.method public static a()Laas;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Laas;->a:Laas;

    return-object v0
.end method
