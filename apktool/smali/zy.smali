.class public final Lzy;
.super Lzx;
.source "SourceFile"


# static fields
.field private static final a:Lzy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lzy;

    invoke-direct {v0}, Lzy;-><init>()V

    sput-object v0, Lzy;->a:Lzy;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 10
    const-string v0, "CachedFontFileTable"

    sget-object v1, Lawq;->FONT_CACHE:Lawp;

    invoke-direct {p0, v0, v1}, Lzx;-><init>(Ljava/lang/String;Lawp;)V

    .line 11
    return-void
.end method

.method public static a()Lzy;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lzy;->a:Lzy;

    return-object v0
.end method
