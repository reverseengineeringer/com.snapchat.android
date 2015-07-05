.class public final Laae;
.super Lzx;
.source "SourceFile"


# static fields
.field private static final a:Laae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Laae;

    invoke-direct {v0}, Laae;-><init>()V

    sput-object v0, Laae;->a:Laae;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "DSnapMediaFileTable"

    sget-object v1, Lawq;->DSNAP_MEDIA_CACHE:Lawp;

    invoke-direct {p0, v0, v1}, Lzx;-><init>(Ljava/lang/String;Lawp;)V

    .line 12
    return-void
.end method

.method public static a()Laae;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Laae;->a:Laae;

    return-object v0
.end method
