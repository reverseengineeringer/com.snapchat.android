.class public final Lxb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lxb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lxb;

    invoke-direct {v0}, Lxb;-><init>()V

    sput-object v0, Lxb;->a:Lxb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a(Laue;)Lxa;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lxa;

    invoke-direct {v0, p0}, Lxa;-><init>(Laue;)V

    return-object v0
.end method

.method public static a()Lxb;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lxb;->a:Lxb;

    return-object v0
.end method
