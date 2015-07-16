.class public final Laeg;
.super Laaw;
.source "SourceFile"


# static fields
.field private static final a:Laeg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Laeg;

    invoke-direct {v0}, Laeg;-><init>()V

    sput-object v0, Laeg;->a:Laeg;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "EditionChunkFileTable"

    sget-object v1, Laec;->b:Laxn;

    invoke-direct {p0, v0, v1}, Laaw;-><init>(Ljava/lang/String;Laxn;)V

    .line 16
    return-void
.end method

.method public static a()Laeg;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Laeg;->a:Laeg;

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
