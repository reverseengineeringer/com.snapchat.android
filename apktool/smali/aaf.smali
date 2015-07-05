.class public final Laaf;
.super Lzx;
.source "SourceFile"


# static fields
.field private static final a:Laaf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Laaf;

    invoke-direct {v0}, Laaf;-><init>()V

    sput-object v0, Laaf;->a:Laaf;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "DiscoverShareFiles"

    sget-object v1, Lawq;->DISCOVER_SHARE:Lawp;

    invoke-direct {p0, v0, v1}, Lzx;-><init>(Ljava/lang/String;Lawp;)V

    .line 12
    return-void
.end method

.method public static a()Laaf;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Laaf;->a:Laaf;

    return-object v0
.end method
