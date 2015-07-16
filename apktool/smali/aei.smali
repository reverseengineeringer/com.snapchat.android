.class public final Laei;
.super Laaw;
.source "SourceFile"


# static fields
.field private static final a:Laei;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Laei;

    invoke-direct {v0}, Laei;-><init>()V

    sput-object v0, Laei;->a:Laei;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "PublisherIconTable"

    sget-object v1, Laec;->c:Laxn;

    invoke-direct {p0, v0, v1}, Laaw;-><init>(Ljava/lang/String;Laxn;)V

    .line 16
    return-void
.end method

.method public static a()Laei;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Laei;->a:Laei;

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
