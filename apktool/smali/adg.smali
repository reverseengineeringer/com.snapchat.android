.class public final Ladg;
.super Lzx;
.source "SourceFile"


# static fields
.field private static final a:Ladg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ladg;

    invoke-direct {v0}, Ladg;-><init>()V

    sput-object v0, Ladg;->a:Ladg;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "EditionChunkFileTable"

    sget-object v1, Ladc;->b:Lawp;

    invoke-direct {p0, v0, v1}, Lzx;-><init>(Ljava/lang/String;Lawp;)V

    .line 16
    return-void
.end method

.method public static a()Ladg;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Ladg;->a:Ladg;

    return-object v0
.end method


# virtual methods
.method public final l()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method
