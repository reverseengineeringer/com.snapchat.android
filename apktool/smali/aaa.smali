.class public final Laaa;
.super Lzx;
.source "SourceFile"


# static fields
.field private static final a:Laaa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Laaa;

    invoke-direct {v0}, Laaa;-><init>()V

    sput-object v0, Laaa;->a:Laaa;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "ChatMediaFiles"

    sget-object v1, Lawq;->CHAT_MEDIA_IMAGE_CACHE:Lawp;

    invoke-direct {p0, v0, v1}, Lzx;-><init>(Ljava/lang/String;Lawp;)V

    .line 12
    return-void
.end method

.method public static a()Laaa;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Laaa;->a:Laaa;

    return-object v0
.end method
