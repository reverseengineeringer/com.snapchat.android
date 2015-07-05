.class public final Ladh;
.super Lzx;
.source "SourceFile"


# static fields
.field private static final a:Ladh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ladh;

    invoke-direct {v0}, Ladh;-><init>()V

    sput-object v0, Ladh;->a:Ladh;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "IntroVideoFileTable"

    sget-object v1, Ladc;->a:Lawp;

    invoke-direct {p0, v0, v1}, Lzx;-><init>(Ljava/lang/String;Lawp;)V

    .line 16
    return-void
.end method

.method public static a()Ladh;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Ladh;->a:Ladh;

    return-object v0
.end method


# virtual methods
.method public final l()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
