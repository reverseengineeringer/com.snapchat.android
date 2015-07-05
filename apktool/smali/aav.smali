.class public final Laav;
.super Lzx;
.source "SourceFile"


# static fields
.field private static final a:Laav;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Laav;

    invoke-direct {v0}, Laav;-><init>()V

    sput-object v0, Laav;->a:Laav;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "ProfileImageFile"

    sget-object v1, Lawq;->PROFILE_IMAGE_CACHE:Lawp;

    invoke-direct {p0, v0, v1}, Lzx;-><init>(Ljava/lang/String;Lawp;)V

    .line 12
    return-void
.end method

.method public static a()Laav;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Laav;->a:Laav;

    return-object v0
.end method
